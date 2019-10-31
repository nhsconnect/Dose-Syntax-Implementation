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

<script src="https://gist.github.com/RobertGoochUK/029d9e231bc54fb3b0ac6386f9e0b501.js"></script>

## Microgynon 30 tablets (Bayer Plc), 1 tablet, ONCE a DAY, oral, for 21 days, subsequent courses repeated after 7-day tablet-free interval ##

Complex because the 7 day period where no medication should be taken has to be conveyed as text within **additionalInstruction**.

<script src="https://gist.github.com/RobertGoochUK/67a2e1bf88c100ff62aba8467f5f743e.js"></script>

## Salbutamol, 100-200mcg to be inhaled when required up to 4 times daily, using the metered dose device ##

<script src="https://gist.github.com/RobertGoochUK/3058adde9517ffb68a62f55112e036f0.js"></script>

## Salbutamol, 5mg to be given via a nebuliser. Repeat every 20-30 minutes as required ##

<script src="https://gist.github.com/RobertGoochUK/ddf9ad03106e7203180b91436bd38689.js"></script>

## Hydrocortisone 0.1% cream, apply 2-3 times daily to area around lips ##

<script src="https://gist.github.com/RobertGoochUK/340ff8c4c169f972532b62a1b3f32a37.js"></script>

## Phenoxymethylpenicillin 250mg tablets, 2 tablets every 6 hours an hour before food or on an empty stomach, oral ##

Complex because "on an empty stomach" is not a coded SNOMED-CT code nor in a FHIR value-set. To avoid confusion with a coded "before food", the complete instruction "an hour before food or on an empty stomach" is conveyed as free-text within **additionalInstruction**.

<script src="https://gist.github.com/RobertGoochUK/85954bf963f7d98dfd1c382a36fc689c.js"></script>

## Co-codamol 8mg/500mg tablets, 2 tablets when required when first symptoms of migraine appear. Dose may be repeated after 4 hours if migraine recurs. Oral. Maximum dose 6 tablets every 24 hours ##

Complex because could be modelled in two ways and both have been provided in this example.

<script src="https://gist.github.com/RobertGoochUK/fe839c3b0dc68be679346192d67569bc.js"></script>

## Prednisolone, 7.5-30 mg once daily, adjusted according to response ##

Complex because the instruction to "adjusted according to response" cannot be coded information so is conveyed as free-text within **additionalInstruction**.

<script src="https://gist.github.com/RobertGoochUK/a5d896f2dba7119f98bbdd69be8e3a7f.js"></script>

## Avloclor 250mg tablets (Alliance Pharmaceuticals Ltd), two to be taken once a week, start one week before travel and continue until 4 weeks after return ##

Complex because the instruction to "start one week before travel and continue until 4 weeks after return" cannot be a coded instruction so is conveyed as free-text within **patientlInstruction**.

<script src="https://gist.github.com/RobertGoochUK/4fd01ea1de85d61fb63d8b352b35221e.js"></script>

## Migraleve tablets (McNeil Products Ltd), initially 2 pink tablets to be taken at onset of attack followed by 2 yellow tablets every 4 hours if required. maximum 2 pink and 6 yellow tablets in 24 hours ##

Complex because specific instructions related to combination products is not currently supported within the STU3 Dosage structure.

<script src="https://gist.github.com/RobertGoochUK/ed35e1f7cfb0eea8df8acad2aced3369.js"></script>

## Eprex 2,000units/0.5ml solution for injection pre-filled syringes (Janssen-Cilag Ltd), to be given by s.c. injection on Mondays and Thursdays with dialysis ##

Complex because has specific timing instructions based on days of the week.

<script src="https://gist.github.com/RobertGoochUK/f480c7dda3c50f651ffbbcdb7694b272.js"></script>

## Permitabs 400mg tablets. Add 500ml of warm water to one tablet and dissolve. Make the resulting solution up to 8 litres and use to soak feet. ##

Complex because contains a detailed preparation instruction which has to be conveyed as free-text within **patientlInstruction**.

<script src="https://gist.github.com/RobertGoochUK/397909d95f2f97ba391c13c5820f36ee.js"></script>

## Insulin lispro (Humalog) 16units to be given by subcutaneous injection at meal times ##

Complex because requires the use of a specific bfand (within SNOMED-CT known as a Trade Family).

<script src="https://gist.github.com/RobertGoochUK/9d73d7c9e6bcba03d0703dd2fb590dea.js"></script>