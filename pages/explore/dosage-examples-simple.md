---
title: Simple Fully Machine-Readable Examples
keywords:  messaging
tags: [fhir,messaging]
sidebar: foundations_sidebar
permalink: dosage-examples-simple.html
summary: "Simple Fully Machine-Readable Examples"
---

These **medicationRequest** examples are fully machine-readable in that they **do not** include any free-text instructions within either *additionalInstruction* or *patientInstruction*.

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

## Oxytetracycline, 250mg, oral, 4 times a day ##

{% include note.html content="Product-based instruction using a VMP" %}
<script src="https://gist.github.com/IOPS-DEV/41924351e7ac4f837e17d4cf3b2ed7cb.js"></script>

{% include note.html content="Dose-based instruction using a VTM" %}
<script src="https://gist.github.com/IOPS-DEV/936946bb3ba9c0342d85c5f16b644584.js"></script>

## Omeprazole, gastro-resistant, oral ##

{% include note.html content="Product-based instruction using a VMP" %}
<script src="https://gist.github.com/IOPS-DEV/e5ca4ab85624e3df67de924b0fa13230.js"></script>

{% include note.html content="Dose-based instruction using a VTM" %}
<script src="https://gist.github.com/IOPS-DEV/99e7d1981aa4afdcbf62be255f227310.js"></script>

## Trimethoprim, 200mg, oral, twice a day ##

{% include note.html content="Product-based instruction using an AMP" %}
<script src="https://gist.github.com/IOPS-DEV/23773a88639d8af59fdce0ee51ba0c99.js"></script>

{% include note.html content="Dose-based instruction using a VTM" %}
<script src="https://gist.github.com/IOPS-DEV/0cf95eab3f50b55f1c3536da70c6f92b.js"></script>

## Sodium citrate / Micralax Micro-enema enema ##

{% include note.html content="Product-based instruction using an AMP" %}
<script src="https://gist.github.com/IOPS-DEV/f52358c0c7f148fbb2ac6e48a61c8d22.js"></script>

{% include note.html content="Dose-based instruction using a VTM" %}
<script src="https://gist.github.com/IOPS-DEV/2aadf814dff7ce823db4d848916a2ddb.js"></script>

## Diprobase ointment, 1 application, Topical, 3 times a day ##

{% include note.html content="Product-based instruction using an AMP" %}
<script src="https://gist.github.com/IOPS-DEV/e7cd9ef929f175967f7992708a272a75.js"></script>

{% include note.html content="Dose-based instruction using a VTM" %}
The VTM related to the Diprobase AMP's is a multi-ingredient concept "White soft paraffin + Liquid paraffin" and cannot be used as a prescribing concept.

## Beclometasone 0.025% cream, Apply Thigh, twice a day ##

{% include note.html content="Product-based instruction using a VMP" %}
<script src="https://gist.github.com/IOPS-DEV/1433336c801362a517ad3d7e86103348.js"></script>

{% include note.html content="Dose-based instruction using a VTM" %}
Where a concentration is required it is expected that the prescribing concept would be a VMP or AMP.

## Zopiclone 3.75mg tablets, 1 tablet, at BEDTIME, PRN, oral ##

{% include note.html content="Product-based instruction using a VMP" %}
<script src="https://gist.github.com/IOPS-DEV/ef3fd4b4b3ff7689ab99ca0f44a51163.js"></script>

## Ibuprofen 400mg orally three times daily for 5 days to start tomorrow ##

For this example, assume today's date is 9th March 2019, hence 'tomorrow' is 10th March 2019.

{% include note.html content="Dose-based instruction using a VTM" %}
<script src="https://gist.github.com/IOPS-DEV/2eb8658f9386a1e95350ac64fbbc94e9.js"></script>

## Timolol 0.1% gel eye drops, 1 drop in the left eye once daily ##

{% include note.html content="Product-based instruction using a VMP" %}
<script src="https://gist.github.com/IOPS-DEV/dfe63dc44f5bbfc5248fb13650898672.js"></script>

## Epoetin alfa, 4500units, ONCE a DAY, subcutaneous injection ##

{% include note.html content="Dose-based instruction using a VTM" %}
<script src="https://gist.github.com/IOPS-DEV/87e1a43fc9841b5a64057dba81ee939c.js"></script>

## Morphine, 30mg, intravenously, injection, four times a day over 24 hours ##

{% include note.html content="Dose-based instruction using a VTM" %}
<script src="https://gist.github.com/IOPS-DEV/c969c345365ef6123ae5012e89aec719.js"></script>

## Zoladex 3.6mg implant SafeSystem pre-filled syringes (AstraZeneca UK Ltd), one to be given by IM injection into the anterior abdominal wall on 1st November 2019 ##

{% include note.html content="Product-based instruction using an AMP" %}
<script src="https://gist.github.com/IOPS-DEV/de9709319e9fe581f5bcefecfce193e4.js"></script>

## Hyoscine 1mg/72hours transdermal patches, one patch to be applied once every 3 days ##

{% include note.html content="Product-based instruction using a VMP" %}
<script src="https://gist.github.com/IOPS-DEV/ad44806fa2410ed450683d9a7f80bb5c.js"></script>

## Co-trimoxazole 80mg/400mg tablets (Actavis UK Ltd), one tablet to be taken twice daily on Mondays, Wednesdays and Fridays ##

{% include note.html content="Product-based instruction using an AMP" %}
<script src="https://gist.github.com/IOPS-DEV/9ea5185aef4d71712df6e3ba0e597fda.js"></script>
