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
* Common User Interface (CUI) Medication Line recommendations, England, May 2010
* National guidelines for on screen display of medicines information, Australia, December 2017

## Logicial Display Order ##

The order in which the structures within a CareConnect profiled resouce should be listed.

1. Medication Name
2. Medication Strength (*if not implied within a VMP/AMP name*)
3. Medication Form (*if not implied within a VMP/AMP name*)
4. Trade Family (Brand) Name

Repeated for each sequence in ascending order;

5. method
6. doseQuantity / doseRange
7. rateRatio / rateRange / rateQuantity
8. duration
9. frequency, frequencyMax, period and periodMax
10. offset, when(s)
11. dayOfWeek(s)
12. timeOfDay(s)
13. route
14. site
15. asNeeded
16. boundsDuration / boundsRange
17. count, countMax
18. event(s)
19. maxDosePerPeriod / maxDosePerAdministration / maxDosePerLifetime
20. additionalInstruction(s)
21. patientInstruction

## Clause Separator ##

In most cases, each component part of the medication instruction is separated with a dash " - " character.

Exceptions are as follows;
* No separator after a **method**, e.g. "Apply "
* No separator between a **dayOfWeek** and **timeOfDay**, e.g. "on Monday at 10:30"