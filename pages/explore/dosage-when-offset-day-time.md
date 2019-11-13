---
title: Dosage when, offset, dayOfWeek, timeOfDay and code
keywords:  messaging
tags: [fhir,messaging]
sidebar: foundations_sidebar
permalink: dosage-when-offset-day-time.html
summary: "Specific timing instructions (when, offset, dayOfWeek, timeOfDay and code)"
---



A dosage instruction can be tied to the specific days, dates and times, plus life events related to eating or sleeping.

## Dosage.timing.repeat.when and Dosage.timing.repeat.offset ##

The **when** element ties to the regular life events of sleeping and eating, for example "C" = "event occurs at a meal" and "WAKE" = "event occurs [offset] after waking".

An **offset** allows the event to be tied X minutes before or after. The offset is an unsigned integer value so different codes within the when value-set are used to define before or after.

<script src="https://gist.github.com/IOPS-DEV/bf76e94ae24000211dfc776a611ffb54.js"></script>

## Dosage.timing.repeat.dayOfWeek and Dosage.timing.repeat.timeOfDay ##

A dosage instruction can specify specific days of the week and/or times of the day using **dayOfWeek** and **timeOfDay**.

<script src="https://gist.github.com/IOPS-DEV/164f90716763aa43c666b2cff1e99653.js"></script>

## Dosage.timing.event ##

A dosage instruction can specify specific dates and times using event.

<script src="https://gist.github.com/IOPS-DEV/32b2b7aa996e1817ea3c4b7a1f1a31b4.js"></script>

## Dosage.timing.code ##

Allows a code, often a Latin abbreviation, for a timing schedule to be specified, for example, "BID" (=twice a day). It is recommended that such codes **are not** used when the rest of the Dosage structure is supported by the system. Instead use the structures like **frequency** and **period** so that a timing schedule can be computable.