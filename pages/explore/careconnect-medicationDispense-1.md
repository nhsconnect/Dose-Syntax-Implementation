---
title: CareConnect-MedicationDispense-1
keywords:  messaging
tags: [fhir,messaging]
sidebar: foundations_sidebar
permalink: careconnect-MedicationDispense-1.html
summary: "How medication and dosage instructions are defined within the CareConnect-MedicationDispense-1 profiled resource"
---



The [CareConnect-MedicationDispense-1](https://fhir.hl7.org.uk/STU3/StructureDefinition/CareConnect-MedicationDispense-1) structure definition contains a number of elements that are out of scope for this implementation guidance. 

Only those elements relevant to convey a medication dispense with a structured dosage instruction are in scope of this guidance.
  * medicationReference
  * dosageInstruction
  * quantity
  
A complete and fit-for-purpose CareConnect-MedicationDispense-1 example would need additional elements populated, for example a reference to the patient within **subject** and a reference to the prescriber within **performer**.

Refer to the "Overview" page of this section for guidance on **medicationReference** and **quantity**.

Refer to the "Dosage Structure" section for guidance on **dosageInstruction**.