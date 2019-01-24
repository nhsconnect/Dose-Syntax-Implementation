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

CUI recommends the medication name is formatted in **bold**. The text narrative support XHTML mark-up therefore the medication name could be contained within `<b>` HTML tags.

If using a VTM  concept the name will just be the name of the VTM;
`Paracetamol`

If using a VMP concept the name will include the strenght and form;
`Paracetamol 1g tablets`

if using an AMP concept the name will also include the manufctorer;
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

When the denominator value is 1 (one) express a **rateRatio** as "at a rate of {numerator_value} per {denominator_unit}". Otherwise express as "at a rate of {numerator_value} every {denominator_value} {denominator_unit}".

`at a rate of 30 millitre per hour`
`at a rate of 30 millitre every 2 hours`

Express a **rateRange** as "at a rate of {low_value} to {high_value} {high_units}"

`at a rate of 1 to 2 liter per minute`

Express a **rateQuantity** as "at a rate of {value} {units}"

`at a rate of 1 microgram per kilogram per hour` (**Note**. This example uses the ucum unit "microgram per kilogram per hour")

### duration, durationMax ###

Express a **duration** as "over {value} {units}". Express the units in plural when required. Where a **durationMax** is defined, append with "(maximum {max_value} {max_units})".

`over 8 hours`

`over 4 hours (maximum 8 hours)`

### frequency, frequencyMax, period and periodMax ###

Gets very complicated so I'll finish this section off another time and just list examples for all the combinations.

`once a day`

`twice a week`

`every 8 hours`

`twice every 8 hours`

`3 times every 8 hours`

`4 times a day`

`2 to 3 times every 8 hours`

`once every 6 to 8 hours`

`twice every 6 to 8 hours`

`3 times every 6 to 8 hours`

`2 to 3 times every 6 to 8 hours`

### offset, when(s) ###

Any **offset** will be defined as a number of minutes. If this equates to a whole number of hours of days then express as a number of hours (=60 minutes) or days (=1440 minutes). Use the plural expression of time when required. 

The FHIR **when** value-set definitions should be modified with the text "event occurs [offset]" and "(from the Latin...)" removed. Also simplify the definition of "WAKE" to "before sleep".

"{offset_value} minute(s)/hour(s)/day(s) {modified_when_value-set}"

`30 minutes before a meal`

`1 hour before sleep`

`2 hours after breakfast`

### dayOfWeek(s) ###

Express **dayOfWeek** statements as "on {dayOfWeek}" using the full description from the FHIR value-set, i.e. "mon" = "Monday". Separate multiple statements with a comma and use the word ` and ` to separate the final two statements.

`on Monday`

`on Monday, Wednesday and Friday`

### timeOfDay(s) ###

Express **timeOfWeek** statements as "at {timeOfWeek}". Separate multiple statements with a comma and use the word ` and ` to separate the final two statements. If a time is expressed with `:00` seconds then express just in terms of hours and minutes. Sending systems should always be provided times using the 24 hour clock.

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

Express **event** statements as "on {event_value}". Separate multiple statements with a comma and use the word ` and ` to separate the final two statements. Local preferences can be used to display the date in `dd/mm/yyyy` or `dd-mmm-yyyy` format.

`on 25/01/2019`

`on 25-Jan-2019`

`on 25/01/2019, 25/02/2019 and 25/03/2019`

### maxDosePerPeriod / maxDosePerAdministration / maxDosePerLifetime ###

Express a **maxDosePerPeriod** statement as "up to a maximum of {numerator_value} {numerator_unit} over {denominator_value} {denominator_unit}". Express the time-based units in plural when required.

`up to a maximum of 1000 milligram over 24 hours`

Express a **maxDosePerAdministration** statement as "up to a maximum of {value} {unit} per dose".

`up to a maximum of 2 milligram per dose`

Express a **maxDosePerLifetime** statement as "up to a maximum of {value} {unit} for the lifetime of patient".

`up to a maximum of 60 milligram for the lifetime of patient`

### additionalInstruction(s) ###

Separate multiple statements with a comma and use the word ` and ` to separate the final two statements.

`Do not stop taking this medicine except on your doctor's advice`

`Dissolve or mix with water before taking and Contains aspirin`

### patientInstruction ###

No additional formatting required.

# Multi-Sequence Instructions #

When a complete dosing instruction is described across multiple sequences, the complete string is concatinated with each sequence. The original medication information is not repeated.

## Sequential Instructions ##

Separate sequential instructions (where each <sequence> is an incremental value) with `, then `.

`Anydrug - 50 milligram - daily - oral - for 1 week, then 100 milligram - daily - oral - for 3 weeks`

## Concurrent  Instructions ##

Separate parallel instructions (where <sequence> is the same) with `, and `.

`Anydrug - 50 milligram - daily - in the morning - oral, and 100 milligram - daily - in the evening`
