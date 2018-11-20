---
title: Current limitations of STU3 Dosage structure
keywords:  messaging
tags: [fhir,messaging]
sidebar: foundations_sidebar
permalink: dosage-limitations-overview.html
summary: "Current limitations of STU3 Dosage structure"
---



The following edge cases have been identified which are not sufficiently supported as coded structures within the STU3 Dosage structure. Until such a time when the CareConnect FHIR profiles are updated with either an extension or an internationally agreed change to the HL7 FHIR standard, these edge cases should be implemented as free-text.

The use of either the **Dosage.additionalInstruction** or **Dosage.patientInstruction** will be dependent on the target audience for the instruction, i.e. the clinician and/or the patient.
  * Edge Case 1 - Specific instructions related to combination products
  * Edge Case 2 - Defining a maximum dose per course
  * Edge Case 3 - Defining a period of time where medication should not be taken
  * Edge Case 4 - Medication request instructions including use of a specific device
  * Edge Case 5 - Defining a Trade Family without using an AMP
