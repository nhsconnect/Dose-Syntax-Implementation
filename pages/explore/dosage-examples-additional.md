---
title: Additional Instruction Examples
keywords:  messaging
tags: [fhir,messaging]
sidebar: foundations_sidebar
permalink: dosage-examples-additional.html
summary: "Additional Instruction Examples"
---


These **medicationRequest** examples require use of *additionalInstruction* elements.

Examples use combinations of the following elements of the CareConnect medicationRequest and FHIR Dosage structure;
* dispenseRequest
* additionalInstruction (using a coded concept)
* sequence (sequential and concurrent instructions)
* maxDosePerPeriod
* asNeededCodableConcept
* rateRatio
* rateRange
* duration
* periodMax

{% include important.html content="Examples are not complete with respect to all required data for a CareConnect implementation but instead highlight the variety of use of the FHIR Dosage structure" %}

## Microgynon 30 tablets (Bayer Plc), 63 tablets ##

This example includes a **dispenseRequest** instruction so represents the clinical information that could be shared as part of a FHIR-based primary care prescription between a prescribing and dispensing clinical system.

{% include note.html content="Product based prescription using additional instruction field to convey dosing instructions." %}
<script src="https://gist.github.com/IOPS-DEV/46ea686c0956f3b3dfbc9174fe0264be.js"></script>

## Simvastatin, 40mg, oral, once a day ##

{% include note.html content="Dose based prescription with additional instructions." %}
<script src="https://gist.github.com/IOPS-DEV/fb19cae01c43657194dfb1a77a850c1f.js"></script>

## Aspirin 300mg dispersible tablets, two tablets to be taken four times daily well diluted in water. To be taken with or after food. ##

{% include note.html content="Product based prescription using additional instruction field to convey dosing instructions." %}
<script src="https://gist.github.com/IOPS-DEV/585c376d541e1a7835fa06f1e901fa87.js"></script>

## Oxygen by inhalation 1 to 2 litres per minute via nasal cannula

{% include note.html content="Dose based prescription ( VMP) dose expressed as a rate. Device expressed as additional instruction." %}
<script src="https://gist.github.com/IOPS-DEV/d5d06b8a3e7117e194d2f92a93970fb8.js"></script>

## Prednisolone 5mg tablets, have 8 tablets a day after food for 7 days then stop ##

{% include note.html content="Product based prescription with course length, when and additional instruction." %}
<script src="https://gist.github.com/IOPS-DEV/4a46edd308206475af59c0a418965f68.js"></script>

## Loperamide 2mg capsules, take two capsules (4 mg) immediately followed by one capsule (2 mg) after each episode of diarrhoea. Daily dose should not exceed eight capsules (16 mg) ##

{% include note.html content="Product based prescription with sequential dosing, when required as additional instruction and maximum daily dose." %}
<script src="https://gist.github.com/IOPS-DEV/522f0fa2a4d0e262ebee98c9e8a6aa7c.js"></script>

## Microgynon 30 tablets (Bayer Plc), 1 tablet, ONCE a DAY, oral, for 21 days, subsequent courses repeated after 7-day tablet-free interval ##

{% include note.html content="Product based AMP prescription using additional instructions to convery pill free interval." %}
<script src="https://gist.github.com/IOPS-DEV/b58efa5827b0a9a1107f63f5043ed538.js"></script>

## Salbutamol, 100-200mcg to be inhaled when required up to 4 times daily, using the metered dose device ##

{% include note.html content="Dose based prescription (VTM) using additional instruction for device." %}
<script src="https://gist.github.com/IOPS-DEV/60f64431396ccec32488a3f672a32dc7.js"></script>

## Salbutamol, 5mg to be given via a nebuliser. Repeat every 20-30 minutes as required ##

{% include note.html content="Dose based prescription (VTM) using additional instruction for device and dose timing as a range." %}
<script src="https://gist.github.com/IOPS-DEV/2bb5f8a0699492a8ba64bfd576325cab.js"></script>

## Phenoxymethylpenicillin 250mg tablets, 2 tablets every 6 hours an hour before food or on an empty stomach, oral ##

Complex because "on an empty stomach" is not a coded SNOMED-CT code nor in a FHIR value-set. To avoid confusion with a coded "before food", the complete instruction "an hour before food or on an empty stomach" is conveyed as free-text within **additionalInstruction**.

{% include note.html content="Product based prescription (VMP) using free text additional instruction." %}
<script src="https://gist.github.com/IOPS-DEV/160e2452b4b147a4349c8a2fb88db86e.js"></script>

## Prednisolone, 7.5-30 mg once daily, adjusted according to response ##

Complex because the instruction to "adjusted according to response" cannot be coded information so is conveyed as free-text within **additionalInstruction**.

{% include note.html content="Dose based prescription (VTM) with dose range using free text additional instruction." %}
<script src="https://gist.github.com/IOPS-DEV/ac9480b1e478a291144af0b13b222238.js"></script>

## Migraleve tablets (McNeil Products Ltd), initially 2 pink tablets to be taken at onset of attack followed by 2 yellow tablets every 4 hours if required. maximum 2 pink and 6 yellow tablets in 24 hours ##

Complex because specific instructions related to combination products is not currently supported within the STU3 Dosage structure.

{% include note.html content="Product based combination pack prescription (AMP) using additional instruction to identify components." %}
<script src="https://gist.github.com/IOPS-DEV/96e660b150dcac3e70c56653425a11de.js"></script>

## Eprex 2,000units/0.5ml solution for injection pre-filled syringes (Janssen-Cilag Ltd), to be given by s.c. injection on Mondays and Thursdays with dialysis ##

{% include note.html content="Product based prescription with doses on specific days of the week. Also additional instructions field." %}
<script src="https://gist.github.com/IOPS-DEV/ea527c2c68f770bb7db918ec2896cea4.js"></script>

