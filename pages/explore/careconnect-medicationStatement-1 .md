---
title: CareConnect-MedicationStatement-1
keywords:  messaging
tags: [fhir,messaging]
sidebar: foundations_sidebar
permalink: careconnect-MedicationStatement-1.html
summary: "How medication and dosage instructions are defined within the CareConnect-MedicationStatement-1 profiled resource"
---



The [CareConnect-MedicationStatement-1](https://fhir.hl7.org.uk/STU3/StructureDefinition/CareConnect-MedicationDispense-1) structure definition contains a number of elements that are out of scope for this implementation guidance. 

Only those elements relevant to convey a medication statement with a structured dosage instruction are in scope of this guidance.
  * medicationReference
  * dosageInstruction
  
A complete and fit-for-purpose CareConnect-MedicationStatement-1 example would need additional elements populated, for example a reference to the patient within **subject**.

Refer to the "Overview" page of this section for guidance on **medicationReference**.

Refer to the "Dosage Structure" section for guidance on **dosage**.

## text ##

To support backwards compatibility, the text narrative must be populated with a medically equivalent human readable textual representation of the complete medication statement.

At the time of writing, implementation guidance is still in production and will be included within a future version of this publication.