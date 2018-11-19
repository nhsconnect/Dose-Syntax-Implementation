---
title: STU3 Limitation - Defining a period of time where medication should not be taken
keywords:  messaging
tags: [fhir,messaging]
sidebar: foundations_sidebar
permalink: dosage-no-meds.html
summary: "STU3 Limitation - Defining a period of time where medication should not be taken"
---



The example given for the current limitation for defining a maximum dose per course also includes an instruction for a period of time where medication should not be taken. This is not directly supported within the STU3 Dosage structure so needs to be expressed as free-text within the **Dosage.additionalInstruction**.
