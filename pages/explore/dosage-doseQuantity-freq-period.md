---
title: Dosage doseQuantity, frequency and period
keywords:  messaging
tags: [fhir,messaging]
sidebar: foundations_sidebar
permalink: dosage-doseQuantity-freq-period.html
summary: "Simple timing instructions using doseQuantity, frequency and period"
---



A large proportion of cases, especially those where the medication is described using a VMP or AMP concept, can have a dosage instruction defined as a **doseQuantity** plus a combination of **frequency** and **period** elements within the Timing structure.

## Dosage.doseQuantity ##

The **doseQuantity** is one of two ways to describe a dose; the amount of medication per dose, as a simple coded quantity. The alternative, and slightly more complex way, is with a **doseRange** which we will cover later in this guidance.

By default, use UCUM units of measure. The system URL for UCOM is "http://unitsofmeasure.org". Examples of when a UCUM unit of measure would be used are "gram" or "milliliter" or "percent".

Where a UCUM unit of measure is not defined, use a SNOMED-CT unit of measure. The system URL for SNOMED-CT is "http://snomed.info/sct". Examples of when a SNOMED-CT unit of measure would be used are "tablet", "capsule" or "ampule". Any unit of measure can be used from the SNOMED-CT hierarchy as a descendant of [767524001 Unit of measure (qualifier value)](https://termbrowser.nhs.uk/?perspective=full&conceptId1=767524001&edition=uk-edition), of which most, but not all units relevant to medication dosage instructions are contained within the hierarchy as a descendant of [732935002 Unit of presentation (unit of presentation)](https://termbrowser.nhs.uk/?perspective=full&conceptId1=732935002&edition=uk-edition).

<script src="https://gist.github.com/RobertGoochUK/82fd7c2c1ef256eaaac3c63ed5654c48.js"></script>

## Dosage.timing.frequency and Dosage.timing.period ##

Simple dosage timing instructions can be described using **frequency** and **period**. The combination of frequency and period allows for the two commonly used expressions of "X times a period" and "every X period".

The unit of the period must be one of the UCUM units; s = second; min = minute; h = hour; d =day; wk = week; mo =month; a = year.

A **frequencyMax** and/or **periodMax** can also be used to define ranges.

<script src="https://gist.github.com/RobertGoochUK/8a7de6eb02731e129f5a4157e3b3db20.js"></script>

## Complete simple dosage examples ##

These examples are complete with respect to the definition of a dm+d medication and a clinically appropriate dosage instruction. They do not contain all the required business data to be complete example of a CareConnect-MedicationRequest-1 profiled resource. 

<script src="https://gist.github.com/RobertGoochUK/df1bd7c408af128a8c1817af9a60e343.js"></script>
