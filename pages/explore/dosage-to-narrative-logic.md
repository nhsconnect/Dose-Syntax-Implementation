---
title: CareConnect Text Narrative Logic
keywords:  messaging
tags: [fhir,messaging]
sidebar: foundations_sidebar
permalink: dosage-to-narrative-logic.html
summary: "Logic required to generate a text narrative from the coded structures"
---



## Medication Component Parts ##

### Medication Name ###

CUI recommends the medication name is formatted in **bold**. The text narrative supports XHTML mark-up therefore the medication name could be marked-up within `<b>` HTML tags.

If using a VTM  concept the name will just be the name of the VTM;

`Paracetamol`

If using a VMP concept the name will include the strength and form;

`Paracetamol 1g tablets`

if using an AMP concept the name will also include the manufacturer;

`Paracetamol 1g tablets (Dawa Ltd)`

### Medication Form ### 

(*if not implied within a VMP/AMP name*)

No additional formatting required.

### Trade Family Name ###

Although not suppported yet within FHIR profiled resources, when available, format into UPPER case.

`ZOMORPH`

## Dosage Structure Component Parts ##

### method ###

No additional formatting required.

### doseQuantity / doseRange ###

Express a **doseQuantity** as "{quantity} {units}"

`50 milligram`

Express a **doseRange** as "{low_quantity} to {high_quantity} {high_units}"

`20 to 40 millilitre`

### rateRatio / rateRange / rateQuantity ###

When the denominator value is 1 (one) express a **rateRatio** as "at a rate of {numerator_value} per {denominator_unit}". Otherwise express as "at a rate of {numerator_value} every {denominator_value} {denominator_unit}". Express the time-based units in plural when required.

`at a rate of 30 millitre per hour`
`at a rate of 30 millitre every 2 hours`

Express a **rateRange** as "at a rate of {low_value} to {high_value} {high_units}"

`at a rate of 1 to 2 liter per minute`

Express a **rateQuantity** as "at a rate of {value} {units}"

`at a rate of 1 microgram per kilogram per hour` (**Note**. This example uses the ucum unit "microgram per kilogram per hour")

### duration, durationMax ###

Express a **duration** as "over/in {value} {units}". Express the time-based units in plural when required. Where a **durationMax** is defined, append with "(maximum {max_value} {max_units})".

`over/in 8 hours`

`over/in 4 hours (maximum 8 hours)`

### frequency, frequencyMax, period and periodMax ###

{% include important.html content="Logic to produce human readable timing instructions is complex with both generic rules and a number of special cases." %}

#### Generic Rules ####

Express the combination of **frequency** and **period** as "{frequency} times every {period_value} {period_unit}".

`3 times every 8 hours`

Where a **frequencyMax** is defined, express as "{frequency} to {frequencyMax} times every {period_value} {period_unit}".

`2 to 3 times every 8 hours`

Where a **periodMax** is defined, express as "{frequency} times every {period_value} to {periodMax_value} {period_unit}".

`3 times every 6 to 8 hours`

Where both **frequencyMax** and **periodMax** are defined, express as "{frequency} to {frequencyMax} times every {period_value} to {periodMax_value} {period_unit}".

`2 to 3 times every 6 to 8 hours`

Where a **frequencyMax** is defined without a **frequency** then express as "up to {frequencyMax} times...".

`up to 3 times a day`

`up to 4 times every 8 hours`

`up to 6 times every 3 to 4 weeks`

Where a **periodMax** is defined without a **period** then express as "{frequency} times up to {periodMax_value} {period_unit}".

`3 times up to 8 hours`

`2 to 3 times up to 8 hours`

**Note**. The omission of both a **frequency** and **frequencyMax** when either a **period** or **periodMax** is present is allowed as per cardinality rules but should be prevented in practice as does not result in a logical timing instruction. 

#### Special Cases ####

When **frequency** is 1 (one) and defined without a **period**, express as "once".

`once`

When **frequency** is 2 (two) and defined without a **period**, express as "twice".

`twice`

When **frequency** is greater than 2 (two) and defined without a **period**, express as "{frequency} times".

`3 times`

When **frequency** and **period** are both 1 (one) express as "once a {period_unit}".

`once a week`

When **frequency** is 1 (one) and **period** is greater than 1 (one) express as "every {period_value} {period_unit}" or "every {period_value} to {periodMax_value} {period_unit}".

`every 8 hours`

`every 6 to 8 hours`

When **frequency** is 2 (two) and **period** is 1 (one) express as "twice a {unit}".

`twice a day`

When **frequency** is greater than 2 (two) and **period** is 1 (one) express as "{frequency} times a {unit}".

`4 times a day`

When **frequency** is 2 (two) and **period** is greater than 1 (one) express as "twice every {period_value} {period_unit}" or "twice every {period_value} to {periodMax_value} {period_unit}".

`twice every 8 hours`

`twice every 6 to 8 hours`

### offset, when(s) ###

Any **offset** will be defined as a number of minutes. If this equates to a whole number of hours or days then express as the number of hours (=60 minutes) or days (=1440 minutes). Use the singular or plural expression of time when required. 

The FHIR [event timing value-set](http://hl7.org/fhir/stu3/valueset-event-timing.html) used for **when** should have descriptions modified to make them more human readable. Remove the text "event occurs [offset]" and "(from the Latin...)" from the descriptions. Simplify the definition of "WAKE" to "before sleep".

Express as "{offset_value} minute(s)/hour(s)/day(s) {modified_when_value-set}".

`at breakfast`

`30 minutes before a meal`

`1 hour before sleep`

`2 hours after breakfast`

### dayOfWeek(s) ###

Express **dayOfWeek** statements as "on {dayOfWeek}" using the full description from the FHIR value-set, i.e. "mon" = "Monday". Separate multiple statements with a comma and use the word " and " to separate the final two statements.

`on Monday`

`on Monday, Wednesday and Friday`

### timeOfDay(s) ###

Express **timeOfWeek** statements as "at {timeOfWeek}". Separate multiple statements with a comma and use the word " and " to separate the final two statements. If a time is expressed with `:00` seconds then express just in terms of hours and minutes. Sending systems should always be provided times using the 24 hour clock.

`at 10:00`

`at 10:00 and 15:00`

### route ###

No additional formatting required.

### site ###

No additional formatting required.

### asNeededCodeableConcept / asNeeded ###

Express the **asNeededBoolean** statement as "as required".

`as required`

Express the **asNeededCodeableConcept** as "as required for {coded_value_description}"

`as required for Migraine`

### boundsDuration / boundsRange ###

Express **boundsDuration** as "for {value} {units}". Express the units in plural when required.

`for 7 days`
	
Express **boundRange** as "for {low_value} to {high_value} {high_units}". Express the units in plural when required.

`for 2 to 4 hours`

### count, countMax ###

Express **count** as "repeat {value} times". If the value is 1 (one) express as "once". If the value is 2 (two) express as "repeat twice". If a **countMax** is define then express as "repeat {value} to {max_value} times".

`repeat 3 times`

`once`

`repeat twice`

`repeat 3 to 4 times`

### event(s) ###

Express **event** statements as "on {event_value}". Separate multiple statements with a comma and use the word " and " to separate the final two statements. Local preferences can be used to display the date in `dd/mm/yyyy` or `dd-mmm-yyyy` format.

`on 25/01/2019`

`on 25-Jan-2019`

`on 25/01/2019, 25/02/2019 and 25/03/2019`

### maxDosePerPeriod / maxDosePerAdministration / maxDosePerLifetime ###

Express a **maxDosePerPeriod** statement as "up to a maximum of {numerator_value} {numerator_unit} over/in {denominator_value} {denominator_unit}". Express the time-based units in plural when required.

`up to a maximum of 1000 milligram over/in 24 hours`

Express a **maxDosePerAdministration** statement as "up to a maximum of {value} {unit} per dose".

`up to a maximum of 2 milligram per dose`

Express a **maxDosePerLifetime** statement as "up to a maximum of {value} {unit} for the lifetime of patient".

`up to a maximum of 60 milligram for the lifetime of patient`

### additionalInstruction(s) ###

Separate multiple statements with a comma and use the word " and " to separate the final two statements.

`Do not stop taking this medicine except on your doctor's advice`

`Dissolve or mix with water before taking and Contains aspirin`

### patientInstruction ###

No additional formatting required.

## Multi-Sequence Instructions ##

When a complete dosing instruction is described across multiple sequences, the complete string is concatinated with each sequence. The original medication information is not repeated.

### Sequential Instructions ###

Separate sequential instructions (where each <sequence> is an incremental value) with ", then ".

`Anydrug - 50 milligram - once a day - oral - for 1 week, then 100 milligram - once a day - oral - for 3 weeks`

### Concurrent  Instructions ###

Separate parallel instructions (where <sequence> is the same) with ", and ".

`Anydrug - 50 milligram - once a day - in the morning - oral, and 100 milligram - once a day - in the evening`
