---
title: Complex Fully Machine-Readable Examples
keywords:  messaging
tags: [fhir,messaging]
sidebar: foundations_sidebar
permalink: dosage-examples-inter.html
summary: "Complex Fully Machine-Readable Examples"
---


These **medicationRequest** examples are fully machine-readable in that they **do not** include any free-text instructions within either *additionalInstruction* or *patientInstruction*.

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

{% include note.html content="Product-based instruction using an AMP" %}
<script src="https://gist.github.com/IOPS-DEV/46ea686c0956f3b3dfbc9174fe0264be.js"></script>

## Simvastatin, 40mg, oral, once a day ##

Requires a coded **additionalInstruction**.

{% include note.html content="Dose-based instruction using a VTM" %}
<script src="https://gist.github.com/IOPS-DEV/fb19cae01c43657194dfb1a77a850c1f.js"></script>

## Furosemide 40mg tablets, take two in the morning and one at midday for one week ##

Requires two concurrent dosage instructions. 

<script src="https://gist.github.com/IOPS-DEV/812bc65d9eb7c30891888e0dbda570bd.js"></script>

## Metformin 500mg tablets, initially 500 mg once daily for 1 week, dose to be taken with breakfast, then 500 mg twice daily for week, dose to be taken with breakfast and evening meal, then 500 mg 3 times a day, dose to be taken with breakfast, lunch and evening meal; maximum 2 g per day ##

Requires a sequence of dosage instructions that increase the dose over a period of time.

{% include note.html content="Product-based instruction using a VMP" %}
<script src="https://gist.github.com/IOPS-DEV/56fe2c774b9c772895cd702eeabcb128.js"></script>

## Metoclopramide, orally 10mg to be taken when required for nausea up to three times daily ##

Includes an instruction based on a coded clinical event.

{% include note.html content="Dose-based instruction using a VTM" %}
<script src="https://gist.github.com/IOPS-DEV/45bcc402fbeedc35099db6fa6085aa08.js"></script>

## Aspirin 300mg dispersible tablets, two tablets to be taken four times daily well diluted in water. To be taken with or after food. ##

Includes a specific dosing instruction that is luckily also a SNOMED-CT coded term. 

{% include note.html content="Product-based instruction using a VMP" %}
<script src="https://gist.github.com/IOPS-DEV/585c376d541e1a7835fa06f1e901fa87.js"></script>

## Aspirin suppository, 600mg rectally every 4 hours. Maximum 3.6gm per 24 hours ##

Includes a dose-based instruction with a specific form and contains a maximum dose per period instruction.

{% include note.html content="Dose-based instruction using a VTM" %}
<script src="https://gist.github.com/IOPS-DEV/d00ec0a22eb11e46357d248ed27d6ec7.js"></script>

## Morphine modified release capsule, 20mg orally every 12 hours ##

A dose-based instruction but with a specific form.

{% include note.html content="Dose-based instruction using a VTM" %}
<script src="https://gist.github.com/IOPS-DEV/f9b0b0f7f600f04d33d67e754c500692.js"></script>

## Glucose 5% infusion 500ml bags, 500ml, intravenous, continuous infusion, over 8 hours ##

Includes a dose duration.

{% include note.html content="Product-based instruction using a VMP" %}
<script src="https://gist.github.com/IOPS-DEV/509539f865054465a4f70d78e48bafe7.js"></script>

## Voluven 10% infusion 500ml Freeflex bags (Fresenius Kabi Ltd), infuse intravenously at a rate of 30ml/kg for 10 hours ##

Includes a **rateRatio** and a **duration**.

**Note**. The rateRatio could also be modelled using a UCUM unit within a **doseQuantity**. In this example we are using the slightly more complex **rateRatio** structure.

```xml
<doseQuantity>
   <value value="30"/>
   <unit value="millilitres per kilogram"/>
   <system value="http://unitsofmeasure.org"/>
   <code value="ml/kg"/>
</doseQuantity>
```

{% include note.html content="Product-based instruction using an AMP" %}
<script src="https://gist.github.com/IOPS-DEV/6d107cc31ef17e3db0dfe6154b9ab41b.js"></script>

## Oxygen by inhalation 1 to 2 litres per minute via nasal cannula

Includes a **rateRange** instruction and an **additionalInstruction** for the administration device.

{% include note.html content="product-based instruction using a VMP" %}
<script src="https://gist.github.com/IOPS-DEV/d5d06b8a3e7117e194d2f92a93970fb8.js"></script>

## Prednisolone 5mg tablets, have 8 tablets a day after food for 7 days then stop ##

{% include note.html content="Product-based instruction using a VMP" %}
<script src="https://gist.github.com/IOPS-DEV/4a46edd308206475af59c0a418965f68.js"></script>

## Loperamide 2mg capsules, take two capsules (4 mg) immediately followed by one capsule (2 mg) after each episode of diarrhoea. Daily dose should not exceed eight capsules (16 mg) ##

Includes a maximum daily dose and requires administration of medication following a coded clinical event.

<script src="https://gist.github.com/IOPS-DEV/522f0fa2a4d0e262ebee98c9e8a6aa7c.js"></script>

## Hydroxocobalamin 10mg/2ml solution for injection ampoules, one to be given by IM injection into the shoulder, 3 times per week for 6 doses, then every 3 months, starting on 1st November 2019

Includes a two-part **sequence** and two different timing instructions.

<script src="https://gist.github.com/IOPS-DEV/73bf7eef079a6dff9eed68ff5d110570.js"></script>
