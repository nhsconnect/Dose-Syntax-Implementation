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

CUI recommends the medication name is formatted in **bold**. The text narrative support XHTML mark-up therefore the medication name could be contained within <b> HTML tags. 

### Medication Strength ### 

*if not implied within a VMP/AMP name*

TBC

### Medication Form ### 

*if not implied within a VMP/AMP name*

No additional formatting required.

### Trade Family Name ###

Although not suppported yet within FHIR profiled resources, when available, format into UPPER case.

## Dosage Structure Component Parts ##

Repeated for each **sequence**;

### method ###

No additional formatting required.

### doseQuantity / doseRange ###

Express a **doseQuantity** as "{quantity} {units}

`50 milligram`

Express a **doseRange** as "{low_quantity} to {high_quantity} {high_units}"

`20 to 40 millilitre`

## rateRatio / rateRange / rateQuantity ##

## duration, durationMax ##

## frequency, frequencyMax, period and periodMax ##

## offset, when(s) ##

## dayOfWeek(s) ##

## timeOfDay(s) ##

## route ##

## site ##

## asNeededCodeableConcept / asNeeded ##

## boundsDuration / boundsRange ##

## count, countMax ##

## event(s) ##

## maxDosePerPeriod / maxDosePerAdministration / maxDosePerLifetime ##

## additionalInstruction(s) ##

## patientInstruction ##


Notes....




rateRatio = prefixed by "at a rate of" then if the denominator value is 1 then express as "A per B", otherwise express as "A every B units".

rateRange = prefixed by "at a rate of" expressed as "A to B units".

rateQuantity = prefixed by "at a rate of" then "A units".

duration / durationMax = prefixed by "over" then expressed as a period of time expanding the coded unit e.g. "h" to "hour(s)". Use the singular or plural depending on the quantity. Where a maximum is defined, append with "(maximum X units)"

route or site = as it comes

when and offset = prefixed with any offset expressed as minutes, but use hours or days if divisible by a whole number of hours (60 minutes) or day (1440 minutes). Modify the FHIR "when" value-set definitions to remove the text "event occurs [offset]" and "(from the Latin...)". Simplify the definition of WAKE to "before sleep".

dayOfWeek = prefix with "on" and comma separate multiple values. Ideally replace a comma with "and" between the last two values.

timeOfDay = prefix with "at" and comma separate multiple values. Ideally replace a comma with "and" between the last two values.

event = prefix with "on" and comma separate multiple values. Ideally replace a comma with "and" between the last two values.

frequency, frequencyMax, period and periodMax = this one gets complex but essentially if the frequency is less than the period then express as "every A unit(s)" otherwise express as "A time a unit(s)". Special cases apply for "once" or "twice". Where maximums are defined express as "A to B times every C units" or ""A times every B to C units".

asNeededBoolean = "as required" (or should this be "when required"?)

asNeededCodeableConcept = prefixed with "as required for"

boundsDuration = prefix with "for" then express as "A units"

boundRange = prefix with "for" then express as "A to B units"

count and countMax = special case for "once" otherwise prefix with "repeat" then "A times" or "A to B times"

maxDosePerPeriod = prefix with "for a maximum of" then express as "A units over B units"

maxDosePerAdministration = prefix with "for a maximum of" then express as "A units per dose"

maxDosePerLifetime = prefix with "for a maximum of" then express as "A units for lifetime of patient"

additionalInstruction = as it comes comma separating multiple values. Ideally replace a comma with "and" between the last two instructions.

patientInstruction = as it comes

Separate sequential instructions (where <sequence> is incremental) with "then".

Separate parallel instructions (where <sequence> is the same) with "and".
