---
title: Dosage when, offset, dayOfWeek and timeOfDay
keywords:  messaging
tags: [fhir,messaging]
sidebar: foundations_sidebar
permalink: dosage-when-offset-day-time.html
summary: "Specific timing instructions (when, offset, dayOfWeek and timeOfDay)y"
---



A dosage instruction can be tied to the specific days, dates and times, plus life events related to eating or sleeping.

## Dosage.timing.when and Dosage.timing.offset ##

The when element ties to the regular life events of sleeping and eating, for example "C" = "event occurs at a meal" and "WAKE" = "event occurs [offset] after waking".

An offset allows the event to be tied X minutes before or after. The offset is an unsigned integer value so different codes within the when value-set are used to define before or after.

<script src="https://gist.github.com/RobertGoochUK/87e846d7ce29827519a3ba317a781410.js"></script>

## Dosage.timing.dayOfWeek and Dosage.timing.timeOfDay ##

A dosage instruction can specify specific days of the week and/or times of the day using dayOfWeek and timeOfDay.

"to be given on Mondays and Thursdays"
<timing>
 <repeat>
  <frequency value="1"/>
  <period value="1"/>
  <periodUnit value="d"/>
  <dayOfWeek value="mon"/>
  <dayOfWeek value="thu"/>
 </repeat>
</timing>

"to be given twice daily at 10:00 and 14:00"
<timing>
 <repeat>
  <frequency value="2"/>
  <period value="1"/>
  <periodUnit value="d"/>
  <timeOfDay value="10:00"/>
  <timeOfDay value="14:00"/>
 </repeat>
</timing>

"to be given on Mondays at midday"
<timing>
 <repeat>
  <frequency value="1"/>
  <period value="1"/>
  <periodUnit value="w"/>
  <dayOfWeek value="mon"/>
  <timeOfDay value="12:00"/>
 </repeat>
</timing>

## Dosage.timing.event ##

A dosage instruction can specify specific dates and times using event.

"on 1st Nov 2019"
<timing>
 <event value="2019-11-01" />
</timing>

"on 1st Nov 2019 at 10:30 and again on 1st Dec 2019 at 22:03"
<timing>
 <event value="2019-11-01T10:30" />
 <event value="2019-12-01T22:30" />
</timing>

## Supporting "as required" or condition-bound instructions ##

The Dosage.asNeeded structure can be used to define a simple "as required" (or "pro re nata" expressed as "PRN" for those who still prefer to use Latin abbreviations) instructions. In this case use the Dosage.asNeededBoolean option.

Take "as required"
<asNeededBoolean value="true"/>

Note. The absence of asNeededBoolean is equivalent to <asNeededBoolean value="false"/>.

The Dosage.asNeededCodeableConcept option is used to bound the dosage instruction to a coded term. Any coded term can be used from the SNOMED-CT hierarchy as a descendant of 404684003  | Clinical Finding (finding). An extensive medication-as-needed-reason value-set is defined within FHIR which is a subset of the SNOMED-CT clinical findings hierarchy.

Take following diarrhea
<asNeededCodeableConcept>
 <coding>
  <system value="http://snomed.info/sct"/>
  <code value="62315008"/>
  <display value="Diarrhea"/>
 </coding>
</asNeededCodeableConcept>


