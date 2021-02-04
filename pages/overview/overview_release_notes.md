---
title: Release Notes
keywords: development, versioning
tags: [overview]
sidebar: overview_sidebar
permalink: overview_release_notes.html
summary: Summary release notes of the versions of the FHIR Dose Syntax Implementation Guidance
---

## Scope

### Inclusions

- Use of STU3 Dosage structure within CareConnect profiled resources
- Worked examples using the CareConnect-MedicationRequest-1 profiled resource
- Guidance (experimental) for converting a dose-based (VTM) instruction into an appropriate short list of (VMP/AMP) products
- Guidance (experimental) for creating a human readable string from the FHIR Dosage elements

### Exclusions

The following will be added to future versions of this implementation guidance.

- Guidance for converting existing prescription content (e.g. an order sentence) within an existing prescribing system into a FHIR Dosage instruction
- Guidance for creating patient focussed dosage instructions when converting from a dose-based to product-based instruction

## Version History

### 1.3.3-beta

- Updated to beta
- Updated the [`dosage-doseQuantity-freq-period.html`](dosage-doseQuantity-freq-period.html) page to include additional information regarding units of measure, and updated formatting.

### 1.3.2-alpha

- updated external links to the AWS demonstrator with links to the demonstrator and associated API documentation provided by the North of England Commissioning Support Unit

### 1.3.1-alpha

- review comment clarifications
- clarification of use of UCUM units of measure versus SNOMED CT units of measure and presentation
- clarification of use of SNOMED synonyms
- clarification of use of additionalInstruction, patientInstruction, text
- rearrange examples to illustrate standar use of dose syntax, use of additionalInstruction, use of patientInstruction
- additional example of use of Medication not in dm+d \(2nd Glucose 5% infusion example\)

### 1.3.0-alpha

- Reorganisation of content to foreground Dose Syntax versus background Medicines context
- Examples rework to conform to CareConnect medication profiling
- Dose to Product & CareConnect Text Narrative moved to appendix pending scoping decisions

### 1.2.0-experimental

- 'Dose to Product Translation' section added

### 1.1.0-experimental

- 'CareConnect Resources' section updated
  - Where a specific Trade Family (i.e brand name) is to be specified, an AMP concept must be used until a FHIR profiled resource can support a coded Trade Family concept.
  - Guidance and example for use of medicationDispense.quantity added.
- 'Dosage Structure' section updated
  - Moved the Dosage.asNeeded[x] guidance it it's own section.
  - New section for the Dosage.maxDosePer[x] structure.
  - Updated the 'additionalInstructions, patientInstructions' section to include a note on using coded concepts that relate to specific dosing timing instructions.
  - Change to use of Dosage.text and inclusion of Dosage.timing.code
  - Updated the 'Dosage doseQuantity, frequency, period' section to include guidance on doseRange.
- 'CareConnect Text Narrative' section added
- Fixed bugs within some of the worked FHIR XML examples
- Additional FHIR XML examples to highlight difference between dose-based and product-based instructions.
- Some examples removed where these covered duplicate aspects of the Dosage structure.

### 1.0.0-experimental

First version published.
