---
title: CareConnect-MedicationRequest-1
keywords:  messaging
tags: [fhir,messaging]
sidebar: foundations_sidebar
permalink: careconnect-medicationRequest-1.html
summary: "How medication and dosage instructions are defined within the CareConnect-MedicationRequest-1 profiled resource"
---



The [CareConnect-MedicationRequest-1](https://fhir.hl7.org.uk/STU3/StructureDefinition/CareConnect-MedicationRequest-1) structure definition contains a number of elements that are out of scope for this implementation guidance. Only those elements relevant to convey a medication request with a structured dosage instruction are in scope of this guidance.
  * medicationReference
  * dosageInstruction
  * dispenseRequest
  * text
  
A complete and fit-for-purpose CareConnect-MedicationRequest-1 example would need additional elements populated, for example a reference to the patient within **subject** and a reference to the prescriber within **requester**.

## medicationReference ##

Refer to the "Overview" page of this section for guidance on **medicationReference**.

## dispenseRequest ##

For prescribing or dispensing uses cases where a Virtual Medicinal Product (VMP) or Actual Medicinal Product (AMP) is defined, the implementation will often require the requested or dispensed quantity of medication using the **dispenseRequest** structure. This will always be the case for data sharing within Primary Care.

The **dispenseRequest** structure contains a simple quantity and coded unit of measure. Any unit of measure can be used from the SNOMED-CT hierarchy as a descendant of [767524001 Unit of measure (qualifier value)](https://termbrowser.nhs.uk/?perspective=full&conceptId1=767524001&edition=uk-edition). Most, but not all units relevant to medication dosage instructions, are contained within the hierarchy as a descendant of [732935002 Unit of presentation (unit of presentation)](https://termbrowser.nhs.uk/?perspective=full&conceptId1=732935002&edition=uk-edition).

<script src="https://gist.github.com/RobertGoochUK/987b500e381e4b1fc3e258a19fda8acd.js"></script>

## text ##

Refer to the section [CareConnect Text Narrative](dosage-to-narrative-overview.html) within this documentation.

## dosageInstruction ##

Refer to the [Dosage Structure](dosage-overview.html) section for guidance on **dosageInstruction**.

