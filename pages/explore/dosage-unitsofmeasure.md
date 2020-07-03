---
title: Using UCUM and/or SNOMED units of measure
keywords: messaging
tags: [fhir, messaging]
sidebar: foundations_sidebar
permalink: dosage-unitsofmeasure.html
summary: "Using UCUM and/or SNOMED units of measure"
---

Coded quantities are used throughout the **dosage** structure, most commonly using the data types of **quantity** and **simpleQuantity**. The [FHIR standard](https://www.hl7.org/fhir/datatypes.html#quantity) states [UCUM](http://unitsofmeasure.org) units of measure should be used if available;

> If the unit can be coded in UCUM and a code is provided, it SHOULD be a UCUM code. If a UCUM unit is provided in the `code`, then a canonical value can be generated for purposes of comparison between quantities.

Complications exist for the following reasons;

- Not all units of measure applicable for medication use cases are SI units that can be defined as UCUM units. Examples include `tablet`, `capsule`, `ampoule` or `patch`. Such units are defined within SNOMED CT as descendants of [732935002 | Unit of presentation](https://termbrowser.nhs.uk/?perspective=full&conceptId1=732935002&edition=uk-edition).
- SNOMED CT units overlap with UCUM units, for example units that define mass, length or volume, e.g. `gram`, `metre` and `millilitre`. See SNOMED CT as descendants of [767524001 | Unit of measure](https://termbrowser.nhs.uk/?perspective=full&conceptId1=767524001&edition=uk-edition).
- SNOMED CT does not include scaling information, for example to calculate that 10mm = 1cm = 0.01m. The UCUM standard does include scaling information.
- There is currently no published translation between UCUM and SNOMED CT units of measure.

## Recommended: Use UCUM where available, otherwise SNOMED CT

By default, use UCUM, to align with the FHIR standard and allow software logic to convert between scalar units, e.g. convert from `gram` to `milligram`.

    <doseQuantity>
      <value value="30"/>
      <unit value="milligram"/>
      <system value="http://unitsofmeasure.org"/>
      <code value="mg"/>
    </doseQuantity>

Where a unit of measure is not defined within UCUM, use the SNOMED CT unit of measure.

    <doseQuantity>
      <value value="1"/>
      <unit value="capsule"/>
      <system value="http://snomed.info/sct"/>
      <code value="732937005"/>
    </doseQuantity>

## Considerations when only using SNOMED CT

Sending a SNOMED CT unit of measure where a UCUM code exists is not officially FHIR compliant, see above.

If a receiver is FHIR compliant they will be expecting a UCUM unit of measure (if it can be expressed as UCUM) and would not be able to understand the dosing information.

For interoperability purposes, it is important that the standards are strict and adhered to by all vendor systems for patient safety.

## Considerations when only using UCUM

When only using UCUM units the system cannot construct structured dosage instructions orders based on unit of presentation. Many product-based prescriptions using dm+d VMP or AMP concepts will express the dose using such units, for example;

"Trimethoprim 100mg tablets, two tablets, twice a day"

If using SNOMED CT units, **two tablets** can be represented as;

    <doseQuantity>
        <value value="2"/>
    	<unit value="tablet"/>
    	<system value="http://snomed.info/sct"/>
    	<code value="428673006"/>
    </doseQuantity>

If only using UCUM units, the doseQuantity would have to be;

    <doseQuantity>
        <value value="200"/>
    	<unit value="milligram"/>
    	<system value="http://unitsofmeasure.org"/>
    	<code value="mg"/>
    </doseQuantity>

The instruction using only UCUM units when presented as a human readable string would be potentially confusing and could introduce new clinical safety risks.

"Trimethoprim 100mg tablets, 200 mg, twice a day"

The above, together with other examples are shown in the following table where the use of coded units of measure is highlighted in **bold**.

| Using SNOMED CT units                                                                 | Using UCUM units                                                                          |
| ------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| Trimethoprim 100mg tablets, **2 tablets**, twice a day                                | Trimethoprim 100mg tablets, **200 mg**, twice a day                                       |
| Hyoscine 1mg/72hours transdermal patches, **1 patch** to be applied once every 3 days | Hyoscine 1mg/72hours transdermal patches, **1 mg** to be applied once every 3 days        |
| Hyoscine 1mg/72hours transdermal patches, **1 patch** to be applied once every 3 days | Hyoscine 1mg/72hours transdermal patches, **1 mg/(72.h)** to be applied once every 3 days |
| Co-codamol 8mg/500mg tablets, **2 tablets**, four times daily                         | Co-codamol 8mg/500mg tablets, **1016 mg**, four times daily                               |
| Co-codamol 8mg/500mg tablets, **2 tablets**, four times daily                         | Co-codamol 8mg/500mg tablets, **2**, four times daily                                     |

## Conversion between UCUM and SNOMED CT units

Currently there is no mapping available between the two coding standards for units of measure.

In theory this would require a long mapping table, such as;

| Base Unit | SNOMED Code | UCUM Code | Scalar |
| --------- | ----------- | --------- | ------ |
| g         | 258686002   | ng        | 10^-9  |
| g         | 258685003   | ug        | 10^-6  |
| g         | 258684004   | mg        | 10^-3  |
| g         | 258682000   | g         | 0      |
| g         | 258683005   | kg        | 10^3   |
| L         | 258773002   | mL        | 10^-6  |
| L         | 258770004   | L         | 0      |
| g/h       | 422398009   | ng/h      | 10^-9  |
| g/h       | 258838007   | ug/h      | 10^-6  |
| g/h       | 258834009   | mg/h      | 10^-3  |
| g/h       | 282125000   | g/h       | 0      |
| g/h       | 414559001   | kg/h      | 10^3   |
| etc.      |             |
