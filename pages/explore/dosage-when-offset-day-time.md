---
title: Dosage when, offset, dayOfWeek and timeOfDay
keywords:  messaging
tags: [fhir,messaging]
sidebar: foundations_sidebar
permalink: dosage-when-offset-day-time.html
summary: "Specific timing instructions (when, offset, dayOfWeek and timeOfDay)"
---



A dosage instruction can be tied to the specific days, dates and times, plus life events related to eating or sleeping.

## Dosage.timing.when and Dosage.timing.offset ##

The **when** element ties to the regular life events of sleeping and eating, for example "C" = "event occurs at a meal" and "WAKE" = "event occurs [offset] after waking".

An **offset** allows the event to be tied X minutes before or after. The offset is an unsigned integer value so different codes within the when value-set are used to define before or after.

<script src="https://gist.github.com/RobertGoochUK/87e846d7ce29827519a3ba317a781410.js"></script>

## Dosage.timing.dayOfWeek and Dosage.timing.timeOfDay ##

A dosage instruction can specify specific days of the week and/or times of the day using **dayOfWeek** and **timeOfDay**.

<script src="https://gist.github.com/RobertGoochUK/d9879db73c269f4bb75bf0a337aeedc2.js"></script>

## Dosage.timing.event ##

A dosage instruction can specify specific dates and times using event.

<script src="https://gist.github.com/RobertGoochUK/01338160314cb372216b05d329c45656.js"></script>



