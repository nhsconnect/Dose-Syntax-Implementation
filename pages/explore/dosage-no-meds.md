---
title: STU3 Limitation - Defining a period of time where medication should not be taken
keywords:  messaging
tags: [fhir,messaging]
sidebar: foundations_sidebar
permalink: dosage-no-meds.html
summary: "STU3 Limitation - Defining a period of time where medication should not be taken"
---


{% include important.html content="Workaround: Use a free-text Dosage.additionalInstruction." %}

The example given for the current limitation for defining a [maximum dose per course](https://nhsconnect.github.io/Dose-Syntax-Implementation/dosage-maxdose.html) also includes an instruction for a period of time where medication should not be taken. This is not directly supported within the STU3 Dosage structure.

Another clinical example would be for a Lidocaine medicated plaster. A typical written dosage instruction would be;

`Apply 2 patches once daily to the affected area for up to 12 hours, followed by a 12-hour plaster-free period; to be applied to intact, dry, non-hairy, non-irritated skin`

The FHIR STU3 Dosage structure can describe all the above except for the clause `followed by a 12-hour plaster-free period`. In a dose-based instruction this would needs to be expressed as free-text within a **Dosage.additionalInstruction**.
