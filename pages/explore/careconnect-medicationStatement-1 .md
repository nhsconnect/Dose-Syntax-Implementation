---
title: CareConnect-MedicationStatement-1
keywords:  messaging
tags: [fhir,messaging]
sidebar: foundations_sidebar
permalink: careconnect-MedicationStatement-1.html
summary: "How medication and dosage instructions are defined within the CareConnect-MedicationStatement-1 profiled resource"
---

{% include note.html content="This page provides implementation guidance, background and context for use of Dose Syntax within CareConnect medication resources.<br/><br/>
Implementation guidance for use of the medication resources themselves will be contained in forthcoming use-case specific Implementation Guides." %}


The [CareConnect-MedicationStatement-1](https://fhir.hl7.org.uk/STU3/StructureDefinition/CareConnect-MedicationDispense-1) structure definition contains a number of elements that are out of scope for this implementation guidance. Only those elements relevant to convey a medication statement with a structured dosage instruction are in scope of this guidance.
  * medicationReference
  * text
  * dosageInstruction
  
A complete and fit-for-purpose CareConnect-MedicationStatement-1 example would need additional elements populated, for example a reference to the patient within **subject**.

## medicationReference ##

See [Overview](careconnect-overview.html).

## text ##

See [CareConnect Text Narrative](dosage-to-narrative-overview.html).

## dosageInstruction ##

See [Dosage Structure](dosage-overview.html).

