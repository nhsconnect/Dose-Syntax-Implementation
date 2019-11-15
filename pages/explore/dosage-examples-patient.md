---
title: Patient Instruction Examples
keywords:  messaging
tags: [fhir,messaging]
sidebar: foundations_sidebar
permalink: dosage-examples-patient.html
summary: "Patient Instruction Examples"
---


These **medicationRequest** examples require use of *patientInstruction* elements.

{% include important.html content="Examples are not complete with respect to all required data for a CareConnect implementation but instead highlight the variety of use of the FHIR Dosage structure" %}

## NovoRapid Penfill 100units/ml solution for injection 3ml cartridges (Novo Nordisk Ltd), inject according to insulin requirements ##

{% include note.html content="Product based AMP prescription using patient instructions." %}
<script src="https://gist.github.com/IOPS-DEV/b7b62f10634459b819a61432da1afde5.js"></script>

## Hydrocortisone 0.1% cream, apply 2-3 times daily to area around lips ##

{% include note.html content="Product based prescription (VMP) using patient instruction for site." %}
<script src="https://gist.github.com/IOPS-DEV/79ad8159aa60822d84e856d0aa886def.js"></script>

## Co-codamol 8mg/500mg tablets, 2 tablets when required when first symptoms of migraine appear. Dose may be repeated after 4 hours if migraine recurs. Oral. Maximum dose 6 tablets every 24 hours ##

Complex because could be modelled in two ways. Both have been provided as examples.
{% include note.html content="Product based prescription (VMP) maximum daily dose. 2 ways of modelling." %}
<script src="https://gist.github.com/IOPS-DEV/1785178bb17bdbf518ec8c9958261b13.js"></script>

<script src="https://gist.github.com/IOPS-DEV/1e3b87ae82d3e3d863aa06484aee8a16.js"></script>

## Avloclor 250mg tablets (Alliance Pharmaceuticals Ltd), two to be taken once a week, start one week before travel and continue until 4 weeks after return ##

Complex because the instruction to "start one week before travel and continue until 4 weeks after return" cannot be a coded instruction so is conveyed as free-text within **patientlInstruction**.

{% include note.html content="Product based prescription (AMP) using patient instruction for start and duration." %}
<script src="https://gist.github.com/IOPS-DEV/753bf7ab40e299a816e0db113c2d3e15.js"></script>

## Permitabs 400mg tablets. Add 500ml of warm water to one tablet and dissolve. Make the resulting solution up to 8 litres and use to soak feet. ##

Complex because contains a detailed preparation instruction which has to be conveyed as free-text within **patientlInstruction**.

{% include note.html content="Product based prescription with patient instruction for preparation." %}
<script src="https://gist.github.com/IOPS-DEV/bada479d2d8914282937f5ae7aa5a409.js"></script>
