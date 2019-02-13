---
title: Intermediate Worked Examples
keywords:  messaging
tags: [fhir,messaging]
sidebar: foundations_sidebar
permalink: dosage-examples-inter.html
summary: "Complex Fully Machine-Readable Examples"
---


These **medicationRequest** examples are fully machine-readable in that they **do not** include any free-text instructions within either *additionalInstruction* or *patientInstruction*. They are more complex than the simple examples

Examples use combinations of the following elements of the CareConnect medicationRequest and FHIR Dosage structure;
* dispenseRequest
* additionalInstruction (using a coded concept)
* sequence (sequential and concurrent instructions)
* maxDosePerPeriod
* asNeededCodableConcept
* rateRatio
* duration
* periodMax

{% include important.html content="Examples are not complete with respect to all mandatory or required data for a CareConnect implementation but instead highlight the variety of use of the FHIR Dosage structure" %}

## Microgynon 30 tablets (Bayer Plc), 63 tablets ##

This example includes a **dispenseRequest** instruction so represents the clinical information that could be shared as part of a FHIR-based primary care prescription between a prescribing and dispensing clinical system.

{% include note.html content="Product-based instruction using an AMP" %}
<script src="https://gist.github.com/RobertGoochUK/2d5b5a1261bb9a785618fbf5380e9e20.js"></script>

## Simvastatin, 40mg, oral, once a day ##

Requires a coded **additionalInstruction**.

{% include note.html content="Dose-based instruction using a VTM" %}
<script src="https://gist.github.com/RobertGoochUK/19449543a736c1a65a52b996fed92443.js"></script>

## Furosemide 40mg tablets, take two in the morning and one at midday for one week ##

Requires two concurrent dosage instructions. 

<script src="https://gist.github.com/RobertGoochUK/bc29af1df30e9f0b86da1d2224a76b39.js"></script>

## Metformin 500mg tablets, initially 500 mg once daily for 1 week, dose to be taken with breakfast, then 500 mg twice daily for week, dose to be taken with breakfast and evening meal, then 500 mg 3 times a day, dose to be taken with breakfast, lunch and evening meal; maximum 2 g per day ##

Requires a sequence of dosage instructions that increase the dose over a period of time.

{% include note.html content="Product-based instruction using a VMP" %}
<script src="https://gist.github.com/RobertGoochUK/c24aa67aa4e10dfefb95e0623ae989b4.js"></script>

## Metoclopramide, orally 10mg to be taken when required for nausea up to three times daily ##

Includes an instruction based on a coded clinical event.

{% include note.html content="Dose-based instruction using a VTM" %}
<script src="https://gist.github.com/RobertGoochUK/8a3bd9f5bbd25a7cf9ffd23975dbeedf.js"></script>

## Aspirin 300mg dispersible tablets, two tablets to be taken four times daily well diluted in water. To be taken with or after food. ##

Includes a specific dosing instruction that is luckily also a SNOMED-CT coded term. 

{% include note.html content="Product-based instruction using a VMP" %}
<script src="https://gist.github.com/RobertGoochUK/472df255d63ccd7b0f6116e600248071.js"></script>

## Aspirin suppository, 600mg rectally every 4 hours. Maximum 3.6gm per 24 hours ##

Includes a dose-based instruction with a specific form and contains a maximum dose per period instruction.

{% include note.html content="Dose-based instruction using a VTM" %}
<script src="https://gist.github.com/RobertGoochUK/12facda56854c648a1c678101c34c965.js"></script>

## Morphine modified release capsule, 20mg orally every 12 hours ##

A dose-based instruction but with a specific form.

{% include note.html content="Dose-based instruction using a VTM" %}
<script src="https://gist.github.com/RobertGoochUK/0b373b241f7044f937f801232863ee8b.js"></script>

## Glucose 5% infusion 500ml bags, 500ml, intravenous, continuous infusion, over 8 hours ##

Includes a dose duration.

{% include note.html content="Product-based instruction using a VMP" %}
<script src="https://gist.github.com/RobertGoochUK/6a992f5415ef2ba7ddfab2d4e69337a7.js"></script>

## Voluven 10% infusion 500ml Freeflex bags (Fresenius Kabi Ltd), infuse intravenously at a rate of 30ml/kg for 10 hours ##

Includes a **rateRatio** and a **duration**.

**Note**. The rateRatio could also be modelled using a ucum unit within a **doseQuantity**.

`<doseQuantity>
` <value value="30"/>
` <unit value="millilitres per kilogram"/>
` <system value="http://unitsofmeasure.org"/>
` <code value="ml/kg"/>
`</doseQuantity>

{% include note.html content="Product-based instruction using an AMP" %}
<script src="https://gist.github.com/RobertGoochUK/9be3ce815d05950fd5e87822f2450776.js"></script>

## Oxygen by inhalation 2litres/minute via nasal route

Complex because requires a rate-based dosing instruction.

{% include note.html content="Dose-based instruction using a VTM" %}
<script src="https://gist.github.com/RobertGoochUK/71a1192a10e7cd31fe339260aeb2d317.js"></script>

## Prednisolone 5mg tablets, have 8 tablets a day after food for 7 days then stop ##

{% include note.html content="Product-based instruction using a VMP" %}
<script src="https://gist.github.com/RobertGoochUK/abd7ce473f5fe38ed1865134a9cfa1b5.js"></script>