---
title: Dose to Product Translation Overview
keywords:  messaging
tags: [fhir,messaging]
sidebar: foundations_sidebar
permalink: dosage-to-product-overview.html
summary: "Translating a dose-based instruction into a list of suitable product-based instructions"
---


## Background

When a prescriber uses a dose-based instruction (using a VTM), it will always need to be translated into a product-based instruction (using a VMP or AMP) to be supplied or dispensed. Today, this is a highly manual process performed by a clincian. For example;

A hospital pharmacist would translate dose-based orders coming from the ward into a products that is both in-stock and suitable to meet the patients' needs. 

A GP would translate dose-based medication requests within a discharge letter into product-based repeat prescriptions.

## Translation Process

**IMPORTANT** - The process described here is to create a suitable short list of products to fulfil the medication request. It is not intended to identify a single product. A local implementation may choose to further filter the list of products on factors like local availability (stock), local formulary or cost. The order of products listed may also be locally condfigured to promote or demote products based on licensing status or local needs such as paediatric use.

The translation process requires the use of the NHS Dictionary of Medicines and Devices (dm+d) plus a mapping table for ucum units of measure that use different terms than dm+d. For example; `gram` is a dm+d unit of measure with `g` is the equivalant within ucum, and ucum spells `liter` differently to the dm+d `litre`.

SNOMED/dm+d code | ucum unit
258683005 | kilogram
258682000 | g
258684004 | milligram
258686002 | ng
258685003 | ug
258773002 | milliliter
258770004 | liter
258770004 | l

### Step 1 - Get child VMPs of the VTM

VMP's flagged within dm+d as invalid or where actual products are not available must be ignored.

Where the dose-based instruction specifies a coded **Route** or coded **Form** then these are used in the query to return only VMPs for the given route and/or form.

In pseudo-code;

`return vmp's`

`where parent_vtm = {vtm_id}`

`and vmp is valid`

`and vmp has actual products available`

`and vmp_form = {form_id}` (if specified)

`and vmp_route = {route_id}`  (if specified)

### Step 2 - Calculate the required quantity of each VMP to fulfil the requested dose 

Take the dose from the **doseQuantity** or **doseRange.low** structures. This will be a combination of a quantity and a coded unit of measure. If the unit of measure is using a ucum unit then the SNOMED code needs to be looked-up from dm+d. This is where the addition mapping table applies.

Each VMP contains strength information for the active ingredients. It would not be expected to use a dose-based prescription for combination drugs (e.g. anything beginning "co-") so this only applies to VMPs with a single ingredient.

The strength of the ingredient may need to be converted into the same units as the requested dose for comparision purposes. For example, if the requested dose is `1gram` but the VMP ingredient is expressed as `500mg` then it would need to be converted into `0.5gram` to calculate that the VMP is half the required strength. Whilst most dosage instructions would be expressed in terms of strength, the same conversion is required for volume (litre, millitre etc.) and length (metre, centimetre, etc.).

With all units of measure expressed in the same scaler terms, the amount of the VMP to fulfil the requested dose can be calculated as;
`QUANTITY OF VMP = ( REQUESTED DOSE QUANTITY / VMP INGREDIENT STRENGTH ) / VMP UNIT DOSE FORM STRENGTH (where defined for the VMP)`

**Worked Example**

Requested dose-dased instruction = **Oxytetracycline** DOSE 250 milligram

Product (VMP) | Quantity Calculation | Unit of Measure
Oxytetracycline 100mg/5ml oral suspension | `250/(20/1)=12.5` | ml
Oxytetracycline 125mg/5ml oral suspension | `250/(25/1)=10` | ml
Oxytetracycline 250mg tablets | `250/(250)=1/1=1` | tablet
Oxytetracycline 250mg/5ml oral suspension | `250/(50/)=5` | ml
Oxytetracycline 500mg/5ml oral suspension | `250/(100/1)=2.5` | ml

**NB**. The above VMP has a Unit Dose Form Strength defined of "1 tablet"

### Step 3 - Order the list of VMPs in a clinically suitable order

This guidance suggests ordering by least divisibility.

Whole products that can fulfil the request are listed above products that may have to be divided.

This approach **does not** include where two or more products of different strengths may be used. For example a dose of 75mg requested and fulfilled by one 50mg product and one 25mg product.

Where the quantity calculated from Step 2 is not divisible by 1 then push down the list.

Where the quantity calculated from Step 2 is less than 1 then push to the bottom of the list.

Using the above example, the resulting sort order would be;

Product (VMP) | Quantity to fulfil 250 milligrams
Oxytetracycline 250mg tablets | 1 tablet
Oxytetracycline 250mg/5ml oral suspension | 5 ml
Oxytetracycline 125mg/5ml oral suspension | 10 ml
Oxytetracycline 500mg/5ml oral suspension | 2.5 ml
Oxytetracycline 100mg/5ml oral suspension | 12.5 ml

A demonstrator is available as part of [Experimental Alpha Web Services](http://ec2-18-130-128-118.eu-west-2.compute.amazonaws.com/) hosted on AWS, which can be used to test and verify this dose-to-product translation logic.