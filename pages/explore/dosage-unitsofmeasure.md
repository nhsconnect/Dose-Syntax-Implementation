
---
title: Using UCUM and/or SNOMED units of measure
keywords:  messaging
tags: [fhir,messaging]
sidebar: foundations_sidebar
permalink: dosage-unitsofmeasure.html
summary: "Using UCUM and/or SNOMED units of measure"
---

Coded quantities are used throughout the **dosage** structure, most commonly using the data types of **quantity** and **simpleQuantity**. The FHIR standards states [UCUM](http://unitsofmeasure.org) units of measure.  should be used if available;

> If the unit can be coded in UCUM and a code is provided, it SHOULD be a UCUM code. If a UCUM unit is provided in the `code`, then a canonical value can be generated for purposes of comparison between quantities.

Complications exist for the following reasons;

 - Not all units of measure applicable for medication use cases are SI units that can be defined as UCUM units. Examples include `tablet`, `capsule`, `ampule` or `patch`. Such units are defined within SNOMED CT as descendants of [732935002 | Unit of presentation](https://termbrowser.nhs.uk/?perspective=full&conceptId1=732935002&edition=uk-edition).  
 - SNOMED CT units overlap with UCUM units, for example units that define mass, length or volume, e.g. `gram`, `metre` and `millilitre`. See  SNOMED CT as descendants of [767524001 | Unit of measure](https://termbrowser.nhs.uk/?perspective=full&conceptId1=767524001&edition=uk-edition).
 - SNOMED-CT does not include scaling information, for example to calculate that 10mm = 1cm = 0.01m. The UCUM standard does include scaling information.
 - There is currently no published translation between UCUM and SNOMED CT units of measure.

## Recommended: Use UCUM where available, otherwise SNOMED CT ##

By default, use UCUM, to align with the FHIR standard and allow software logic to convert between scaler units, e.g. convert from `gram` to `milligram`.

    <doseQuantity>
      <value value="30"/>
      <unit value="milligram"/>
      <system value="http://unitsofmeasure.org"/>
      <code value="mg"/>
    </doseQuantity>

Where unit of measure is not defined within UCUM, use the SNOMED CT unit of measure. 

    <doseQuantity>
      <value value="1"/>
      <unit value="capsule"/>
      <system value="http://snomed.info/sct"/>
      <code value="732937005"/>
    </doseQuantity>

Here

## Considerations when only using SNOMED CT ##

Here

## Considerations when only using UCUM ##

When only using UCUM units, the system cannot construct structured dosage instructions orders based on unit of presentation. For example;

"Hyoscine 1mg/72hours transdermal patches, **one patch** to be applied once every 3 days"

If using SNOMED CT units, **one patch** can be represented as;

    <doseQuantity>
      <value value="1"/>
      <unit value="patch"/>
      <system value="http://snomed.info/sct"/>
      <code value="733005001"/>
    </doseQuantity>

If only using UCUM units, the doseQuantity would have to be;

    <doseQuantity>
      <value value="1"/>
      <unit value="milligram"/>
      <system value="http://unitsofmeasure.org"/>
      <code value="mg"/>
    </doseQuantity>

This is potentially confusing for end-users and thus could introduce new clinical safety risks.

## Conversion between UCUM and SNOMED CT units ##

Help?
