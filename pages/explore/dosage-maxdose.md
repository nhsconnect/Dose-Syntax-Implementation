---
title: STU3 Limitation - Defining a maximum dose per course
keywords:  messaging
tags: [fhir,messaging]
sidebar: foundations_sidebar
permalink: dosage-maxdose.html
summary: "STU3 Limitation - Defining a maximum dose per course"
---



A maximum dose for three scenarios is supported within the STU3 Dosage structure;
  * maxDosePerPeriod - define a maximum dose over a given period of time
  * maxDosePerAdministration - defines a maximum dose per administration
  * maxDosePerLifetime - defines the maximum dose during the lifetime of the patient

Not currently supported is how to define a **maximum dose per course**.

With the current STU3 Dosage structure, a maximum dose per course would have to be conveyed in free-text using the **Dosage.additionalInstruction**.

<script src="https://gist.github.com/RobertGoochUK/3c2f9c94a120a473c67294f3f6d56f39.js"></script>