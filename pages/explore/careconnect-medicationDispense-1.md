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
  * text
  
A complete and fit-for-purpose CareConnect-MedicationDispense-1 example would need additional elements populated, for example a reference to the patient within **subject** and a reference to the prescriber within **performer**.

## medicationReference ##

Refer to the "Overview" page of this section for guidance on **medicationReference**.

## quantity ##

Refer to the "Overview" page of this section for guidance **quantity**.

## dosageInstruction ##

Refer to the "Dosage Structure" section for guidance on **dosageInstruction**.

## text ##

To support backwards compatibility, the text narrative must be populated with a medically equivalent human readable textual representation of the complete medication dispense.

At the time of writing, implementation guidance is still in production and will be included within a future version of this publication.