---
title: Standard Dose Syntax Examples
keywords:  messaging
tags: [fhir,messaging]
sidebar: foundations_sidebar
permalink: dosage-examples-standard.html
summary: "Standard Dose Syntax Examples"
---

These **medicationRequest** examples are fully machine-readable in that they **do not** include any free-text instructions within either *additionalInstruction*, *patientInstruction* or *text*.

Examples use combinations of the following elements of the CareConnect medicationRequest and FHIR Dosage structure;
* form
* method
* doseQuantity
* frequency, period and frequencyMax
* when
* route
* site
* asNeededBoolean
* boundsDuration
* count
* event

Where clinically appropriate, each example is shown as both a **dose-based** and **product-based** instruction.

{% include important.html content="Examples are not complete with respect to all required data for a CareConnect implementation but instead highlight the variety of use of the FHIR Dosage structure" %}

## Oxytetracycline, 250mg, oral, 6 hourly ##

{% include note.html content="Product-based instruction using a VMP. Dose expressed 6 hourly." %}
<script src="https://gist.github.com/IOPS-DEV/41924351e7ac4f837e17d4cf3b2ed7cb.js"></script>

{% include note.html content="Dose-based instruction using a VTM. Dose expressed 6 hourly." %}
<script src="https://gist.github.com/IOPS-DEV/936946bb3ba9c0342d85c5f16b644584.js"></script>

## Omeprazole, 10mg, gastro-resistant, oral, once daily ##

{% include note.html content="Product-based instruction using a VMP. Dose expressed per day." %}
<script src="https://gist.github.com/IOPS-DEV/e5ca4ab85624e3df67de924b0fa13230.js"></script>

{% include note.html content="Dose-based instruction using a VTM. Dose expressed per day." %}
<script src="https://gist.github.com/IOPS-DEV/99e7d1981aa4afdcbf62be255f227310.js"></script>

## Trimethoprim, 200mg, oral, twice a day, for 3 days ##

{% include note.html content="Product-based instruction using an AMP. Dose expressed per day. Duration of 3 days." %}
<script src="https://gist.github.com/IOPS-DEV/23773a88639d8af59fdce0ee51ba0c99.js"></script>

{% include note.html content="Dose-based instruction using a VTM. Dose expressed per day. Duration of 3 days." %}
<script src="https://gist.github.com/IOPS-DEV/0cf95eab3f50b55f1c3536da70c6f92b.js"></script>

## Sodium citrate / Micralax Micro-enema enema, once daily ##

{% include note.html content="Product-based instruction using an AMP. Dose expressed per day." %}
<script src="https://gist.github.com/IOPS-DEV/f52358c0c7f148fbb2ac6e48a61c8d22.js"></script>

{% include note.html content="Dose-based instruction using a VTM. Dose expressed per day." %}
<script src="https://gist.github.com/IOPS-DEV/2aadf814dff7ce823db4d848916a2ddb.js"></script>

## Diprobase ointment, 1 application, Topical, 3 times a day ##

{% include note.html content="Product-based instruction using an AMP. Where no dose quantity." %}
<script src="https://gist.github.com/IOPS-DEV/e7cd9ef929f175967f7992708a272a75.js"></script>

{% include note.html content="Dose-based instruction using a VTM. Where no dose quantity." %}
The VTM related to the Diprobase AMP's is a multi-ingredient concept "White soft paraffin + Liquid paraffin" and cannot be used as a prescribing concept.

## Beclometasone 0.025% cream, Apply Thigh, twice a day ##

{% include note.html content="Product-based instruction using a VMP. Body site identified." %}
<script src="https://gist.github.com/IOPS-DEV/1433336c801362a517ad3d7e86103348.js"></script>

{% include note.html content="Dose-based instruction using a VTM. Body site identified." %}
Where a concentration is required it is expected that the prescribing concept would be a VMP or AMP.

## Zopiclone 3.75mg tablets, 1 tablet, at BEDTIME, PRN, oral ##

{% include note.html content="Product-based instruction using a VMP. When required dosing." %}
<script src="https://gist.github.com/IOPS-DEV/ef3fd4b4b3ff7689ab99ca0f44a51163.js"></script>

## Ibuprofen 400mg orally three times daily for 5 days to start tomorrow ##

For this example, assume today's date is 9th March 2019, hence 'tomorrow' is 10th March 2019.

{% include note.html content="Dose-based instruction using a VTM. Specified start date and course length." %}
<script src="https://gist.github.com/IOPS-DEV/2eb8658f9386a1e95350ac64fbbc94e9.js"></script>

## Timolol 0.1% gel eye drops, 1 drop in the left eye once daily ##

{% include note.html content="Product-based instruction using a VMP. Body site identified." %}
<script src="https://gist.github.com/IOPS-DEV/dfe63dc44f5bbfc5248fb13650898672.js"></script>

## Epoetin alfa, 4500units, ONCE a DAY, subcutaneous injection ##

{% include note.html content="Dose-based instruction using a VTM. Route and method identified." %}
<script src="https://gist.github.com/IOPS-DEV/87e1a43fc9841b5a64057dba81ee939c.js"></script>

## Morphine modified release capsule, 20mg orally every 12 hours ##

{% include note.html content="Dose-based instruction using a VTM with a specific form. Dose expressed as hourly dose interval." %}
<script src="https://gist.github.com/IOPS-DEV/f9b0b0f7f600f04d33d67e754c500692.js"></script>

## Morphine, 30mg, intravenously, injection, four times a day, for 1 day ##

{% include note.html content="Dose-based instruction using a VTM. Route and method identified and course duration." %}
<script src="https://gist.github.com/IOPS-DEV/c969c345365ef6123ae5012e89aec719.js"></script>

## Zoladex 3.6mg implant SafeSystem pre-filled syringes (AstraZeneca UK Ltd), one to be given by IM injection into the anterior abdominal wall on 1st November 2019 ##

{% include note.html content="Product-based instruction using an AMP. Identified route, method and site. Specific date." %}
<script src="https://gist.github.com/IOPS-DEV/de9709319e9fe581f5bcefecfce193e4.js"></script>

## Hyoscine 1mg/72hours transdermal patches, one patch to be applied once every 3 days ##

{% include note.html content="Product-based instruction using a VMP. Dosing every 3 days. Specific method." %}
<script src="https://gist.github.com/IOPS-DEV/ad44806fa2410ed450683d9a7f80bb5c.js"></script>

## Co-trimoxazole 80mg/400mg tablets (Actavis UK Ltd), one tablet to be taken twice daily on Mondays, Wednesdays and Fridays ##

{% include note.html content="Product-based instruction using an AMP. Dosing given only on specific days." %}
<script src="https://gist.github.com/IOPS-DEV/9ea5185aef4d71712df6e3ba0e597fda.js"></script>

## Furosemide 40mg tablets, take two in the morning and one at midday for one week ##

{% include note.html content="Product based presciption demonstrating concurrent dosing schedules." %}
<script src="https://gist.github.com/IOPS-DEV/812bc65d9eb7c30891888e0dbda570bd.js"></script>

## Metformin 500mg tablets, initially 500 mg once daily for 1 week, dose to be taken with breakfast, then 500 mg twice daily for week, dose to be taken with breakfast and evening meal, then 500 mg 3 times a day, dose to be taken with breakfast, lunch and evening meal; maximum 2 g per day ##

{% include note.html content="Product based presciption demonstrating sequential dosing schedules for an increasing dose." %}
<script src="https://gist.github.com/IOPS-DEV/56fe2c774b9c772895cd702eeabcb128.js"></script>

## Metoclopramide, orally 10mg to be taken when required for nausea up to three times daily ##

{% include note.html content="Dose based prescription with when required dosing and daily maximum frequency" %}
<script src="https://gist.github.com/IOPS-DEV/45bcc402fbeedc35099db6fa6085aa08.js"></script>

## Aspirin suppository, 600mg rectally every 4 hours. Maximum 3.6gm per 24 hours ##

{% include note.html content="Dose based prescription with maximum dose." %}
<script src="https://gist.github.com/IOPS-DEV/d00ec0a22eb11e46357d248ed27d6ec7.js"></script>

## Glucose 5% infusion 500ml bags, 500ml, intravenous, continuous infusion, over 8 hours ##

{% include note.html content="Product based prescription. Route, method and dose duration." %}
<script src="https://gist.github.com/IOPS-DEV/509539f865054465a4f70d78e48bafe7.js"></script>

## Glucose 5% infusion 500ml bags, 500ml, intravenous, continuous infusion, over 8 hours ##

{% include note.html content="Non dm+d (ingredient) based prescription. Route, method and dose duration." %}
<script src="https://gist.github.com/IOPS-DEV/cd7efa8708679e39f7c203a6f690e516.js"></script>

## Voluven 10% infusion 500ml Freeflex bags (Fresenius Kabi Ltd), infuse intravenously at a rate of 30ml/kg for 10 hours ##

Includes a **rateRatio** and a **duration**.

{% include note.html content="Product based prescription. Route method,dose duration, and dose expressed a rate ratio." %}

**Note**. The rateRatio could also be modelled using a UCUM unit within a **doseQuantity**. In this example we are using the slightly more complex **rateRatio** structure.

```xml
<doseQuantity>
   <value value="30"/>
   <unit value="millilitres per kilogram"/>
   <system value="http://unitsofmeasure.org"/>
   <code value="ml/kg"/>
</doseQuantity>
```

<script src="https://gist.github.com/IOPS-DEV/6d107cc31ef17e3db0dfe6154b9ab41b.js"></script>

## Hydroxocobalamin 10mg/2ml solution for injection ampoules, one to be given by IM injection into the shoulder, 3 times per week for 6 doses, then every 3 months, starting on 1st November 2019

{% include note.html content="Product based prescription with course length as number of doses, sequential dosing." %}
<script src="https://gist.github.com/IOPS-DEV/73bf7eef079a6dff9eed68ff5d110570.js"></script>

## Insulin lispro, 16units to be given by subcutaneous injection at meal times ##

<script src="https://gist.github.com/IOPS-DEV/39048b639f39819d7d012dd1a1ca4f27.js"></script>