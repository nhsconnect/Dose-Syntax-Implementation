---
title: Current limitations of STU3 Dosage structure
keywords:  messaging
tags: [overview]
sidebar: foundations_sidebar
permalink: dosage-limitations-overview.html
summary: "Current limitations of STU3 Dosage structure"
---



The following edge cases have been identified which are not sufficiently supported as coded structures within the STU3 Dosage structure. Until such a time when the CareConnect FHIR profiles are updated with either an extension or an internationally agreed change to the HL7 FHIR standard, a work-around is required.

  * [Edge Case 1 - Specific instructions related to combination products](https://nhsconnect.github.io/Dose-Syntax-Implementation/dosage-combi.html)
  * [Edge Case 2 - Defining a maximum dose per course](https://nhsconnect.github.io/Dose-Syntax-Implementation/dosage-maxdose.html)
  * [Edge Case 3 - Defining a period of time where medication should not be taken](https://nhsconnect.github.io/Dose-Syntax-Implementation/dosage-no-meds.html)
  * [Edge Case 4 - Medication request instructions including use of a specific device](https://nhsconnect.github.io/Dose-Syntax-Implementation/dosage-specific-device.html)
  * [Edge Case 5 - Defining a Trade Family without using an AMP](https://nhsconnect.github.io/Dose-Syntax-Implementation/dosage-tradefamily.html)
