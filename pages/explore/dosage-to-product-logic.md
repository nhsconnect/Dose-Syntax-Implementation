---
title: Dose to Product Translation Logic
keywords:  messaging
tags: [dm+d,messaging]
sidebar: foundations_sidebar
permalink: dosage-to-product-logic.html
summary: "Logic for translating a dose-based instruction into a list of suitable product-based instructions"
---


## Introduction

Here

## dm+d Data Requirements

The dm+d data fields used for this process are;

**VTM** | **VMP** | **VMP-VPI** | **VMP-FORM** | **VMP-ROUTE**
VTMID | VTMID | | |
 | VPID | VPID | VPID | VPID
NM | NM | | |
INVALID | INVALID | | |
 | NON_AVAILCD
 | UDFS | | |
 | UDFS_UOMCD | | |
 | UNIT_DOSE_UOMCD | |
 | | STRNT_NMRTR_VAL | |
 | | STRNT_NMRTR_UOMCD | |
 | | STRNT_DNMTR_VAL | |
 | | STRNT_DNMTR_UOMCD | |
 | | | FORMCD | ROUTECD

Together with the FORM, ROUTE and UNIT_OF_MEASURE vocabularies from the dm+d **LOOKUP** data.

When dm+d data is imported into a relational database, concepts marked as INVALID or VMP concepts flagged as "not actual products available" may be excluded from the import.

## Translation Process Detail

Refer to the Overview page for the high level description of the translation process.

### Step 1 - Get child VMPs of the VTM

A suitable SQL query to return child VMPs for a VTM, with optional Route or Form constraints would be as follows. This assumes INVALID concepts and VMPs where no actual products are available has been excluded from the database.

`SELECT vmp.vmpid, vmp.name, vmp.udfs_dose_uomcd, vpi.strnt_dnmtr_uomcd`

`FROM vtm` 

`INNER JOIN vmp ON vtm.vtmid = vmp.vtmid` 

`INNER JOIN vmpform ON vmp.vmpid = vmpform.vmpid` 

`INNER JOIN vmproute ON vmp.vmpid = vmproute.vmpid`

`INNER JOIN vpi ON vmp.vmpid = vpi.vmpid`

`WHERE vtm.vtmid = {insert_vtm_id}`

`AND ( vmpform.formid = IN_form_id OR IsNull(IN_form_id) )`

`AND ( vmproute.routeid = IN_route_id OR IsNull(IN_route_id) );`

### Step 2 - Calculate the required quantity of each VMP to fulfil the requested dose 

#### Conversion between scaler units of measure, e.g. gram to milligram

A function is required to convert a VTM ingredient strength into the same units as the requested dose quantity. For example, if a required dose quantity is `12.5 milligram` but a VMP for that drug is expressed with a strength in micrograms, e.g. `500 microgram`, then that strength needs to be expressed in milligrams before the mathematical function can be executed. Thus, `500 microgram` would be converted into `0.5 milligram`. All conversation between units will be either a multiplication or division to a factor of 1000.

Within the dm+d, units of mass have the greatest range; **kilogram**, **gram**, **milligram**, **microgram** and **nanogram**. Due to this range, the data type used within SQL must be a `DECIMAL(30,12)`.

#### Function for quantity

A suitable SQL function to calculate the quantity of a given VMP to fulfil the requested dose quantity would be as follows.

`FUNCTION calc_qty(doseQ DECIMAL(9,3), num DECIMAL(30,12), den DECIMAL(9,3), udfs DECIMAL)`

`RETURNS decimal(30,12)`

`BEGIN`

`	IF den = 0 THEN SET den = 1; END IF;`

`    IF udfs = 0 THEN RETURN doseQ / ( num / den ); END IF;`

`    RETURN ( doseQ / ( num / den ) ) / udfs;`

`END`

Where

**doseQ** is the required dose quantity, e.g. 12.5

**num** is the VMP strength numerator, but has to be expressed in the same units as the requested dose, e.g. both in milligrams

**den** is the VMP strength denominator which may be zero/null for some VMPs, so use a default value of 1

**udfs** is the VMP unit dose form strength value, which may be zero/null

#### Function for ranking / ordering

Uses the **calc_qty** function from above then calculates a ranking value which can be used to order the overall SQL query.

`FUNCTION `calc_rank`(doseQ DECIMAL(9,3), num DECIMAL(30,12), den DECIMAL(9,3), udfs DECIMAL, formid BIGINT UNSIGNED)`

`RETURNS SMALLINT(5) UNSIGNED`

`BEGIN`

`	DECLARE qty DECIMAL(30,12) UNSIGNED;`
	
`   DECLARE rank SMALLINT UNSIGNED;`
	
`   DECLARE divisable BIGINT UNSIGNED;`
	
`	SET qty = calc_qty(doseQ, num, den, udfs);`
	
`	IF ( qty < 1 ) THEN SET rank = 3;`
	
`	ELSEIF ( ( qty % 1 ) != 0 ) THEN SET rank = 2;`
	
`	ELSE SET rank = 1; END IF;`
	
`   IF (rank != 1) THEN`
	
`		SELECT name FROM lookup WHERE valueset="NOTDIVISABLE" AND id = formid INTO divisable;`
		
`		IF ( !IsNull(divisable) ) THEN SET rank = 4; END IF;`
		
`    END IF;`
	
`    RETURN rank;`
	
`END`

Where **formid** is the dm+d code for the requested dose quantity unit of measure.

The rules for the ranking are best shown in a table.

Calculated Quantity | Ranking | Reason
Decimal less than 1 | 3 | Requires part of a a single dose
Integer | 1 | Can be fulfilled by one or more complete doses
Decimal greater than 1 | 2 | Requires a number of doses include part doses 
Decimal using a dose form typically not divisable | 4 | Unlikely to the clinically safe to use this product

By adding the calculated **quantity** and **rank** to the main SQL query, the suitable sort order is `ORDER BY rank, quantity`.

#### Identification of dose forms that are typically not divisable

The following dose forms are typically not divisible. This is not always the case. For example there are some modified-release tablets with a score along the centre to aid division, but in most cases, modified-release products should not be divided. The same applies for products as capsules. These represent the more common dose forms used within dm+d concepts. Other un-divisible dose forms may exist but their use would be rare, but this reference table can be extended or customised as required for a local implementation.

SNOMED/dm+d code | Dose Form
385049006 | Capsule
385054002 | Modified-release capsule
385061003 | Modified-release tablet
421720008 | Spray

## Complete Stored Procedure

Here

## Known Issues

### Products (VMPs) where the VPI strength is expressed as an inaccurate decimal value

The vast majority of VMPs are defined with a Virtual Product Ingredient (VPI) strength as a whole number, e.g. numerator = 5 (mg) and denominator = 1 (ml). A small percentage of VMPs are defined with a numerator expressed as an incurate decimal value. Two examples are;

1. **Oxybutynon 3mg/15ml bladder irrigation vials**, VPI strength = 333.33 micrograms / 1 ml

2. **Methotrexate 25mg/3ml solution for injection pre-filled syringes**, VPI strength = 8.333 mg / 1 ml

This inaccuracy of values like `333.33` or `8.333` not being mathmetically the same as one third of a milligram means the mathematics used in these calcations does not result in a whole number. For example;

VMP = Oxybutynon 3mg/15ml bladder irrigation vials

Requested Dose = `1 milligram`

Calculated Quantity = `3.003003 vials`

and

VMP = Methotrexate 25mg/3ml solution for injection pre-filled syringes

Requested Dose = `25 milligram`

Calculated Quantity = `1.041667 pre-filled disposable injection`

It would be unwise to add bespoke logic to round up to the nearest whole number in such cases as this would require an assumption that this is the intention of the prescriber.

A possible solution that will be discussed with the owners of the NHS dm+d would be to expressed the strength in a way that uses absolute values. For example;

1. **Oxybutynon 3mg/15ml bladder irrigation vials**, VPI strength = 1 mg / 3 ml

2. **Methotrexate 25mg/3ml solution for injection pre-filled syringes**, VPI strength = 25 mg / 3 ml
