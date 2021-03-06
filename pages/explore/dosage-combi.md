---
title: STU3 Limitation - Combination pack instructions
keywords:  messaging
tags: [fhir,messaging]
sidebar: foundations_sidebar
permalink: dosage-combi.html
summary: "STU3 Limitation - Combination pack instructions"
---


{% include important.html content="Workaround: Use a free-text Dosage.additionalInstruction." %}

It is common practice to provide a dosage instruction for the combination pack "Migraleve tablets" with instructions for when to take the pink tablets and when to take the yellow tablets. With the current STU3 Dosage structure, these instructions would have to be conveyed in free-text using the **Dosage.patientInstructions**.

In secondary care the individual components of the pack should be prescribed as separate items.

In primary care the combination pack is prescribed and therefore the medication request must reference the medication resource for the dm+d code of the combination product. The medication request then links to 2 dosing instructions which describe how each tablet should be taken.

<script src="https://gist.github.com/IOPS-DEV/96e660b150dcac3e70c56653425a11de.js"></script>