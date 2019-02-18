---
title: Dosage.text and Dosage.timing.code
keywords:  messaging
tags: [fhir,messaging]
sidebar: foundations_sidebar
permalink: dosage-text.html
summary: "Use of the dosage.text and dosage.timing.code elements of the dosage instruction"
---



## Dosage.text ##

The [FHIR specification](http://hl7.org/fhir/stu3/dosage-definitions.html#Dosage.text) for the **Dosage.text** attribute is ambiguous and not clear on it's intended use. The approach used within this guidance is to provide the complete human readable string representation of the dosage instruction within the **text** narrative of the parent CareConnect profiled resource.

Therefore until such a time when the FHIR specification is clearer (Note. The STU4 definition is slightly better but still ambiguous) the use of the **Dosage.text** attribute is not recommended where the dosage instruction is defined using the coded structures. This position may be subject to change as a result of initial implementation experience or feedback from the FHIR community.

The **Dosage.text** attribute would be populated in an implementation which does not support the coded structures.

## Dosage.timing.code ##

Allows a code, often a Latin abbreviation, for a timing schedule to be specified, for example, "BID" (=twice a day). It is recommended that such codes **are not** used when the rest of the Dosage structure is supported by the system. Instead use the structures like **frequency** and **period** so that a timing schedule can be computable.