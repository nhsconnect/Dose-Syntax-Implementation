---
title: Semi Machine Readable Examples
keywords:  messaging
tags: [fhir,messaging]
sidebar: foundations_sidebar
permalink: dosage-examples-complex.html
summary: "Semi Machine Readable Examples"
---


These **medicationRequest** examples are only semi machine readable as they require part of the instruction to be expressed as free-text within either *additionalInstruction* or *patientInstruction*.

{% include important.html content="Examples are not complete with respect to all required data for a CareConnect implementation but instead highlight the variety of use of the FHIR Dosage structure" %}

## NovoRapid Penfill 100units/ml solution for injection 3ml cartridges (Novo Nordisk Ltd), inject according to insulin requirements ##

<script src="https://gist.github.com/IOPS-DEV/b7b62f10634459b819a61432da1afde5.js"></script>

## Microgynon 30 tablets (Bayer Plc), 1 tablet, ONCE a DAY, oral, for 21 days, subsequent courses repeated after 7-day tablet-free interval ##

Complex because the 7 day period where no medication should be taken has to be conveyed as text within **additionalInstruction**.

<script src="https://gist.github.com/IOPS-DEV/b58efa5827b0a9a1107f63f5043ed538.js"></script>

## Salbutamol, 100-200mcg to be inhaled when required up to 4 times daily, using the metered dose device ##

<script src="https://gist.github.com/IOPS-DEV/60f64431396ccec32488a3f672a32dc7.js"></script>

## Salbutamol, 5mg to be given via a nebuliser. Repeat every 20-30 minutes as required ##

<script src="https://gist.github.com/IOPS-DEV/2bb5f8a0699492a8ba64bfd576325cab.js"></script>

## Hydrocortisone 0.1% cream, apply 2-3 times daily to area around lips ##

<script src="https://gist.github.com/IOPS-DEV/79ad8159aa60822d84e856d0aa886def.js"></script>

## Phenoxymethylpenicillin 250mg tablets, 2 tablets every 6 hours an hour before food or on an empty stomach, oral ##

Complex because "on an empty stomach" is not a coded SNOMED-CT code nor in a FHIR value-set. To avoid confusion with a coded "before food", the complete instruction "an hour before food or on an empty stomach" is conveyed as free-text within **additionalInstruction**.

<script src="https://gist.github.com/IOPS-DEV/160e2452b4b147a4349c8a2fb88db86e.js"></script>

## Co-codamol 8mg/500mg tablets, 2 tablets when required when first symptoms of migraine appear. Dose may be repeated after 4 hours if migraine recurs. Oral. Maximum dose 6 tablets every 24 hours ##

Complex because could be modelled in two ways. Both have been provided as examples.

<script src="https://gist.github.com/IOPS-DEV/1785178bb17bdbf518ec8c9958261b13.js"></script>

<script src="https://gist.github.com/IOPS-DEV/1e3b87ae82d3e3d863aa06484aee8a16.js"></script>

## Prednisolone, 7.5-30 mg once daily, adjusted according to response ##

Complex because the instruction to "adjusted according to response" cannot be coded information so is conveyed as free-text within **additionalInstruction**.

<script src="https://gist.github.com/IOPS-DEV/ac9480b1e478a291144af0b13b222238.js"></script>

## Avloclor 250mg tablets (Alliance Pharmaceuticals Ltd), two to be taken once a week, start one week before travel and continue until 4 weeks after return ##

Complex because the instruction to "start one week before travel and continue until 4 weeks after return" cannot be a coded instruction so is conveyed as free-text within **patientlInstruction**.

<script src="https://gist.github.com/IOPS-DEV/753bf7ab40e299a816e0db113c2d3e15.js"></script>

## Migraleve tablets (McNeil Products Ltd), initially 2 pink tablets to be taken at onset of attack followed by 2 yellow tablets every 4 hours if required. maximum 2 pink and 6 yellow tablets in 24 hours ##

Complex because specific instructions related to combination products is not currently supported within the STU3 Dosage structure.

<script src="https://gist.github.com/IOPS-DEV/96e660b150dcac3e70c56653425a11de.js"></script>

## Eprex 2,000units/0.5ml solution for injection pre-filled syringes (Janssen-Cilag Ltd), to be given by s.c. injection on Mondays and Thursdays with dialysis ##

Complex because has specific timing instructions based on days of the week.

<script src="https://gist.github.com/IOPS-DEV/ea527c2c68f770bb7db918ec2896cea4.js"></script>

## Permitabs 400mg tablets. Add 500ml of warm water to one tablet and dissolve. Make the resulting solution up to 8 litres and use to soak feet. ##

Complex because contains a detailed preparation instruction which has to be conveyed as free-text within **patientlInstruction**.

<script src="https://gist.github.com/IOPS-DEV/bada479d2d8914282937f5ae7aa5a409.js"></script>

## Insulin lispro (Humalog) 16units to be given by subcutaneous injection at meal times ##

Complex because requires the use of a specific bfand (within SNOMED-CT known as a Trade Family).

<script src="https://gist.github.com/IOPS-DEV/39048b639f39819d7d012dd1a1ca4f27.js"></script>