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

The **dispenseRequest** structure contains a simple quantity and coded unit of measure.  
By preference, use UCUM units of measure (system URL: “http://unitsofmeasure.org”).  
Examples of when a UCUM unit of measure would be used are “gram” or “milliliter” or “percent”.

Where a UCUM unit of measure is not defined, use a SNOMED-CT unit of measure (system URL: “http://snomed.info/sct”).  
Examples of when a SNOMED-CT unit of measure would typically be used are “tablet”, “capsule” or “ampule”.  
Units of presentation relevant to medication dosage instructions are contained within the hierarchy as descendants of [732935002 | Unit of presentation](https://termbrowser.nhs.uk/?perspective=full&conceptId1=732935002&edition=uk-edition).  
Units of measure, where UCUM is not available, are contained within the hierarchy as descendants of [767524001 | Unit of measure](https://termbrowser.nhs.uk/?perspective=full&conceptId1=767524001&edition=uk-edition).  



<script src="https://gist.github.com/IOPS-DEV/7521989049c13b5e548d6bd4e2ce9d96.js"></script>

## text ##

See [CareConnect Text Narrative](dosage-to-narrative-overview.html).

## dosageInstruction ##

See [Dosage Structure](dosage-overview.html).
