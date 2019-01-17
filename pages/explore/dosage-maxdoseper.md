---
title: Dosage maxDosePer[x]
keywords:  messaging
tags: [fhir,messaging]
sidebar: foundations_sidebar
permalink: dosage-maxdoseper.html
summary: "Dosing 'maxDosePerPeriod', 'maxDosePerAdministration' and 'maxDosePerLifetime' instructions"
---



## Dosage.maxDosePerPeriod

Used to define a maxiumum dose over a given time period. 

An example would be a Sumatriptan 6mg injection which can be repeated after an hour but not again over a 24 hour period. The maxDosePerPeriod is defined as 12mg/24hours.

The maxDosePerPeriod is defined for each dosage instruction. For a multi-sequence instruction it would therefore be possible to define different maximum dosing periods within different sequences of the complete instruction. A real-world example of where this would be required has not yet been identified.

## Dosage.maxDosePerAdministration

Used to define a maximum dose for a single administration. 

An example would be Anagrelide for which a single dose should not exceed 2.5 mg. The maxDosePerAdministration is defined as 2.5mg.

In many scenarios it is expected that the **dosage.doseRange** would be used instead of maxDosePerAdministration.

The maxDosePerAdministration is defined for each dosage instruction. For a multi-sequence instruction it would therefore be possible to define different maximum dose administrations within different sequences of the complete instruction. A real-world example of where this would be required has not yet been identified.

## Dosage.maxDosePerLifetime

Used to define the maximum cumulative dose over the lifetime of a patient. 

An example would be Daunorubicin which may have a maximum cumulative dose of 600mg/m2 (based on the size of the patient). The maxDosePerAdministration is defined as 600 mg/m2.

The maxDosePerLifetime is defined for each dosage instruction which. For a multi-sequence instructions this is illogical as any maxDosePerLifetime need only be defined once as a single instruction can only relate to a single medication coded concept. If a maxDosePerLifetime statement is required within a multi-sequence instruction the recommendation is to define it within the **last/final** sequence. This would ensure the information is presented at the end of the complete instruction and not in the middle which could be overlooked. 

## Examples

<script src="https://gist.github.com/RobertGoochUK/ef965acb8e6a8e66317281d74417c788.js"></script>