---
title: Release Notes
keywords: development, versioning
tags: [overview]
sidebar: overview_sidebar
permalink: overview_release_notes.html
summary: Summary release notes of the versions of the FHIR Dose Syntax Implementation Guidance
---

## Scope ##

### Inclusions ###

* Use of STU3 Dosage structure within CareConnect profiled resources
* Worked examples using the CareConnect-MedicationRequest-1 profiled resource
* Guidance for creating a human readable string from the FHIR Dosage elements

### Exclusions ####

The following will be added to future versions of this implementation guidance.
* Guidance for converting existing prescription content (e.g. an order sentence) within an existing prescribing system into a FHIR Dosage instruction
* Guidance for converting a dose-based (VTM) instruction into an appropriate short list of (VMP/AMP) products 
* Guidance for creating patient focussed dosage instructions when converting from a dose-based to product-based instruction

## Version History ##

### 1.1.0-experimental ###
* 'CareConnect Resources' section updated
  * Where a specific Trade Family (i.e brand name) is to be specified, an AMP concept must be used until a FHIR profiled resource can support a coded Trade Family concept.
  * Guidance and example for use of medicationDispense.quantity added.
* 'Dosage Structure' section updated
  * Moved the Dosage.asNeeded[x] guidance it it's own section.
  * New section for the Dosage.maxDosePer[x] structure.
  * Updated the 'additionalInstructions, patientInstructions' section to include a note on using coded concepts that relate to specific dosing timing instructions.
  * Change to use of Dosage.text and inclusion of Dosage.timing.code
  * Updated the 'Dosage doseQuantity, frequency, period' section to include guidance on doseRange.
* 'CareConnect Text Narrative' section added
* Fixed bugs within many of the worked FHIR XML examples 

### 1.0.0-experimental ###
First version published.

