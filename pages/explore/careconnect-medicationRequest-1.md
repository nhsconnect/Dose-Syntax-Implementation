---
title: CareConnect-MedicationRequest-1
keywords:  messaging
tags: [fhir,messaging]
sidebar: foundations_sidebar
permalink: careconnect-medicationRequest-1.html
summary: "How medication and dosage instructions are defined within the CareConnect-MedicationRequest-1 profiled resource"
---

{% include note.html content="This page provides implementation guidance, background and context for use of Dose Syntax within CareConnect medication resources.<br/><br/>
Implementation guidance for use of the medication resources themselves will be contained in forthcoming use-case specific Implementation Guides." %}


The [CareConnect-MedicationRequest-1](https://fhir.hl7.org.uk/STU3/StructureDefinition/CareConnect-MedicationRequest-1) structure definition contains a number of elements that are out of scope for this implementation guidance. Only those elements relevant to convey a medication request with a structured dosage instruction are in scope of this guidance.
  * medicationReference
  * dispenseRequest
  * text
  * dosageInstruction
  
A complete and fit-for-purpose CareConnect-MedicationRequest-1 example would need additional elements populated, for example a reference to the patient within **subject** and a reference to the prescriber within **requester**.

## medicationReference ##

See [Overview](careconnect-overview.html).

## dispenseRequest ##

For prescribing or dispensing uses cases where a Virtual Medicinal Product (VMP) or Actual Medicinal Product (AMP) is defined, the implementation will often require the requested or dispensed quantity of medication using the **dispenseRequest** structure. This will always be the case for data sharing within Primary Care.

The **dispenseRequest** structure contains a simple quantity and coded unit of measure. Any unit of measure can be used from the SNOMED-CT hierarchy as a descendant of [767524001 Unit of measure (qualifier value)](https://termbrowser.nhs.uk/?perspective=full&conceptId1=767524001&edition=uk-edition). Most, but not all units relevant to medication dosage instructions, are contained within the hierarchy as a descendant of [732935002 Unit of presentation (unit of presentation)](https://termbrowser.nhs.uk/?perspective=full&conceptId1=732935002&edition=uk-edition).

<script src="https://gist.github.com/RobertGoochUK/987b500e381e4b1fc3e258a19fda8acd.js"></script>

## text ##

See [CareConnect Text Narrative](dosage-to-narrative-overview.html).

## dosageInstruction ##

See [Dosage Structure](dosage-overview.html).
