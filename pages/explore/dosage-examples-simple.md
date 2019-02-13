---
title: Simple Worked Examples
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
* duration
* when
* route
* site
* asNeededBoolean
* boundsDuration
* count
* event
* additionalInstructions (using coded concepts)

Where clinically appropriate, each example is shown as both a **dose-based** and **product-based** instruction.

{% include important.html content="Examples are not complete with respect to all mandatory or required data for a CareConnect implementation but instead highlight the variety of use of the FHIR Dosage structure" %}

## Oxytetracycline, 250mg, oral, 4 times a day ##

{% include note.html content="Product-based instruction using a VMP" %}
<script src="https://gist.github.com/RobertGoochUK/2b88fe64156c2d3c788328463d7a4a5d.js"></script>

{% include note.html content="Dose-based instruction using a VTM" %}
<script src="https://gist.github.com/RobertGoochUK/3d90859ce98769ec9b6643cfccdcc65a.js"></script>

## Omeprazole, gastro-resistant, oral ##

{% include note.html content="Product-based instruction using a VMP" %}
<script src="https://gist.github.com/RobertGoochUK/b80afd58861658643c8265d3cb622979.js"></script>

{% include note.html content="Dose-based instruction using a VTM" %}
<script src="https://gist.github.com/RobertGoochUK/940fb93b1509d13e762344e6e27fa31b.js"></script>

## Trimethoprim, 200mg, oral, twice a day ##

{% include note.html content="Product-based instruction using an AMP" %}
<script src="https://gist.github.com/RobertGoochUK/55593efcf8d81d681bed1a3dc4f9d1c4.js"></script>

{% include note.html content="Dose-based instruction using a VTM" %}
<script src="https://gist.github.com/RobertGoochUK/dcf25dec1dba6a574c44f83bdab627f9.js"></script>

## Sodium citrate / Micralax Micro-enema enema ##

{% include note.html content="Product-based instruction using an AMP" %}
<script src="https://gist.github.com/RobertGoochUK/15231b8269739c11bf86fe4948f7090f.js"></script>

{% include note.html content="Dose-based instruction using a VTM" %}
<script src="https://gist.github.com/RobertGoochUK/b6dc5df61528a1b0ff4eec3dd429a273.js"></script>

## Diprobase ointment, 1 application, Topical, 3 times a day ##

{% include note.html content="Product-based instruction using an AMP" %}
<script src="https://gist.github.com/RobertGoochUK/8c72ae276972c87272056eb2e984a956.js"></script>

{% include note.html content="Dose-based instruction using a VTM" %}
The VTM related to the Diprobase AMP's is a multi-ingredient concept "White soft paraffin + Liquid paraffin" and cannot be used as a prescribing concept.

## Microgynon 30 tablets (Bayer Plc), 63 tablets ##

{% include note.html content="Product-based instruction using an AMP" %}
<script src="https://gist.github.com/RobertGoochUK/2d5b5a1261bb9a785618fbf5380e9e20.js"></script>

{% include note.html content="Dose-based instruction using a VTM" %}
The VTM related to the Microgynon AMP's is a multi-ingredient concept "Ethinylestradiol + Levonorgestrel" and cannot be used as a prescribing concept.

## Beclometasone 0.025% cream, Apply Thigh, twice a day ##

{% include note.html content="Product-based instruction using a VMP" %}
<script src="https://gist.github.com/RobertGoochUK/5efddc06de5180593a38cd907de63443.js"></script>

{% include note.html content="Dose-based instruction using a VTM" %}
Where a concentration is required it is expected that the prescribing concept would be a VMP or AMP.

## Zopiclone 3.75mg tablets, 1 tablet, at BEDTIME, PRN, oral ##

{% include note.html content="Product-based instruction using a VMP" %}
<script src="https://gist.github.com/RobertGoochUK/355dcf9b4e71f740e5b197b77f80818d.js"></script>

## Ibuprofen 400mg orally three times daily for 5 days to start tomorrow ##

For this example, assume today's date is 9th March 2019, hence 'tomorrow' is 10th March 2019.

{% include note.html content="Dose-based instruction using a VTM" %}
<script src="https://gist.github.com/RobertGoochUK/ad4a8db957700cc528fd8ea1b8f4253f.js"></script>

## Timolol 0.1% gel eye drops, 1 drop in the left eye once daily ##

{% include note.html content="Product-based instruction using a VMP" %}
<script src="https://gist.github.com/RobertGoochUK/184f6e053a1714347739c827a3de8773.js"></script>

## Epoetin alfa, 4500units, ONCE a DAY, subcutaneous injection ##

{% include note.html content="Dose-based instruction using a VTM" %}
<script src="https://gist.github.com/RobertGoochUK/adaed4fbce1276ae287178417b2985c5.js"></script>

## Prednisolone 5mg tablets, have 8 tablets a day after food for 7 days then stop ##

{% include note.html content="Product-based instruction using a VMP" %}
<script src="https://gist.github.com/RobertGoochUK/abd7ce473f5fe38ed1865134a9cfa1b5.js"></script>

## Morphine, 30mg, intravenously, injection, four times a day over 24 hours ##

{% include note.html content="Dose-based instruction using a VTM" %}
<script src="https://gist.github.com/RobertGoochUK/5b987bcdafe267b597c9c432a9a11c11.js"></script>

## Glucose 5% infusion 500ml bags, 500ml, intravenous, continuous infusion, over 8 hours ##

{% include note.html content="Product-based instruction using a VMP" %}
<script src="https://gist.github.com/RobertGoochUK/6a992f5415ef2ba7ddfab2d4e69337a7.js"></script>

## Zoladex 3.6mg implant SafeSystem pre-filled syringes (AstraZeneca UK Ltd), one to be given by IM injection into the anterior abdominal wall on 1st November 2019 ##

{% include note.html content="Product-based instruction using an AMP" %}
<script src="https://gist.github.com/RobertGoochUK/53c52eb0dd8a7ca7e0535e62e7ce74e0.js"></script>

## Hyoscine 1mg/72hours transdermal patches, one patch to be applied once every 3 days ##

{% include note.html content="Product-based instruction using a VMP" %}
<script src="https://gist.github.com/RobertGoochUK/1b9c0c0481221e93f294f1ba9a8bacac.js"></script>

## Co-trimoxazole 80mg/400mg tablets (Actavis UK Ltd), one tablet to be taken twice daily on Mondays, Wednesdays and Fridays ##

{% include note.html content="Product-based instruction using an AMP" %}
<script src="https://gist.github.com/RobertGoochUK/36e517d24a23bd5b617fcb9ca13f16f8.js"></script>
