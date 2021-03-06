---
title: CareConnect-MedicationDispense-1
keywords:  messaging
tags: [fhir,messaging]
sidebar: foundations_sidebar
permalink: careconnect-MedicationDispense-1.html
summary: "How medication and dosage instructions are defined within the CareConnect-MedicationDispense-1 profiled resource"
---

{% include note.html content="This page provides implementation guidance, background and context for use of Dose Syntax within CareConnect medication resources.<br/><br/>
Implementation guidance for use of the medication resources themselves will be contained in forthcoming use-case specific Implementation Guides." %}


The [CareConnect-MedicationDispense-1](https://fhir.hl7.org.uk/STU3/StructureDefinition/CareConnect-MedicationDispense-1) structure definition contains a number of elements that are out of scope for this implementation guidance. Only those elements relevant to convey a medication dispense with a structured dosage instruction are in scope of this guidance.
  * medicationReference
  * quantity 
  * text
  * dosageInstruction
  
A complete and fit-for-purpose CareConnect-MedicationDispense-1 example would need additional elements populated, for example a reference to the patient within **subject** and a reference to the prescriber within **performer**.

## medicationReference ##

See [Overview](careconnect-overview.html).

## quantity ##

The dispensed **quantity** as a simple quantity and coded unit of measure. Any unit of measure can be used from the SNOMED-CT hierarchy as a descendant of [767524001 Unit of measure (qualifier value)](https://termbrowser.nhs.uk/?perspective=full&conceptId1=767524001&edition=uk-edition). Most, but not all units relevant to medication dosage instructions, are contained within the hierarchy as a descendant of [732935002 Unit of presentation (unit of presentation)](https://termbrowser.nhs.uk/?perspective=full&conceptId1=732935002&edition=uk-edition).

<script src="https://gist.github.com/IOPS-DEV/29fc388e40a257b8963c564cc256b675.js"></script>

## text ##

See [CareConnect Text Narrative](dosage-to-narrative-overview.html).

## dosageInstruction ##

See [Dosage Structure](dosage-overview.html).