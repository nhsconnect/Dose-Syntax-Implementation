---
title: Dosage duration, bounds and count
keywords:  messaging
tags: [fhir,messaging]
sidebar: foundations_sidebar
permalink: dosage-duration-bounds-count.html
summary: "Adding constraints, bounds or limits to a dosage instruction"
---



A dosage instruction to be administered over a period of time is defined by a **duration** and/or a **durationMax**. These relate to the duration of a single administration so would be applicable for an infusion or potentially a transdermal patch. The use of duration does not apply to medicines that are swallowed or otherwise instantly administered.

An instruction to limit a single course of medication uses the **bounds** structure. This can be implemented in three ways;
  * boundsDuration - a period of time, e.g. "for 7 days"
  * boundsRange - a low/high quantity, e.g. "for 2 to 3 weeks"
  * boundsPeriod - a date/time start to end period. e.g. "from 01/11/2018 to 10/11/2018" 

An instruction for a set number of doses, including the use case of "once", plus also any maximum number of doses, is defined by **count** and **countMax**. Whilst the **count** is within **repeat** it does not mean repeat a number of additional times. A count of 1 means adminster a dose once. A count of 3 means administer 3 doses.
  
<script src="https://gist.github.com/RobertGoochUK/021a2e6a7b726dca4e4ce61269ddc508.js"></script>