---
title: STU3 Limitation - Defining a maximum dose per course
keywords:  messaging
tags: [fhir,messaging]
sidebar: foundations_sidebar
permalink: dosage-maxdose.html
summary: "STU3 Limitation - Defining a maximum dose per course"
---


{% include important.html content="Workaround: Use a free-text Dosage.additionalInstruction." %}

A maximum dose for three scenarios is supported within the STU3 Dosage structure;
  * maxDosePerPeriod - define a maximum dose over a given period of time
  * maxDosePerAdministration - defines a maximum dose per administration
  * maxDosePerLifetime - defines the maximum dose during the lifetime of the patient

Not currently supported is how to define a **maximum dose per course**.

With the current STU3 Dosage structure, a maximum dose per course would have to be conveyed in free-text using the **Dosage.additionalInstruction**.

<script src="https://gist.github.com/IOPS-DEV/09b3a6a0572b5977269bc0cc5d900f45.js"></script>