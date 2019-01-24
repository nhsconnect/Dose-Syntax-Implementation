---
title: CareConnect Text Narrative
keywords:  messaging
tags: [fhir,messaging]
sidebar: foundations_sidebar
permalink: dosage-to-narrative-overview.html
summary: "Use of the text narrative within CareConnect profiled resources"
---


The **text** narrative at the root level of all medication-related CareConnect profiled resources must be populated with a '*...text summary of the resource, for human interpretation*'.

This section details the logic required for a system to generate a suitable, clinically safe, complete medication plus dosage string from the coded structures.

## References ##

This guidance is aligned with;
* [Common User Interface (CUI)](https://webarchive.nationalarchives.gov.uk/20160921150545/http://systems.digital.nhs.uk/data/cui/uig) Medications line recommendations, England, May 2010
* [National guidelines for on screen display of medicines information](https://www.safetyandquality.gov.au/our-work/medication-safety/electronic-medication-management/national-guidelines-for-on-screen-display-of-medicines-information/), Australia, December 2017

## Common Principals ##

The following applies to the presentation of any component part of a medication instruction;
* Always express units of measure using the full description, e.g. `milligram` not `mg`.
* Always turn a time based unit into the plural when applicable, e.g. `2 hour` becomes `2 hours`.
* Where multiple statements are allowed, e.g. **when** or **event** structures, then separate each statement with a comma plus whitespace. Replace the last comma separating the final two statements with the word ` and `, e.g. `on Monday, Wednesday and Friday`.

**Note**. Non time-based units of measure should not be expressed in the plural when the quantity is not equal to 1 (one). This is because of introduces complications when using ucum units such as "microgram per millilitre" or "microgram per kilogram per hour".

## Logicial Display Order ##

The order in which the structures within a CareConnect profiled resouce should be listed.

1. Medication Name
2. Medication Form (*if not implied within a VMP/AMP name*)
3. Trade Family Name

Repeated for each **sequence** in ascending order;

4. method
6. doseQuantity / doseRange
7. rateRatio / rateRange / rateQuantity
8. duration, durationMax
9. frequency, frequencyMax, period and periodMax
10. offset, when(s)
11. dayOfWeek(s)
12. timeOfDay(s)
13. route
14. site
15. asNeededCodeableConcept / asNeeded
16. boundsDuration / boundsRange
17. count, countMax
18. event(s)
19. maxDosePerPeriod / maxDosePerAdministration / maxDosePerLifetime
20. additionalInstruction(s)
21. patientInstruction

The rules and logic for presenting each structure is detailed on the [Text Generation Logic](dosage-to-narrative-logic.html "Text Generation Logic") page.

## Component Part Separator ##

In most cases, each component part of the medication instruction is separated by space-dash-space, e.g. " - ".

Exceptions are as follows;
* Use a single whitespace after a **method**, e.g. `Apply `
* Use a single whitespace to separate between a **dayOfWeek** and **timeOfDay**, e.g. `on Monday at 10:30`