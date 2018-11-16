---
title: Dosage rate[x]
keywords:  messaging
tags: [fhir,messaging]
sidebar: foundations_sidebar
permalink: dosage-rate.html
summary: "Rate-based instructions"
---



A rate-based quantity, such as 30 ml per kilogram, can be expressed as a **rateRatio** with coded numerator and denominator values. Where the unit of measure for the ratio is defined within ucom, for example, ml per kilogram, it can also be expressed using the simpler **rateQuantity** structure.

## Dosage.rateRatio ##

Where the rate is expressed as coded numerator and denominator values.

## Dosage.rateQuantity ##

Where the unit of measure applicable to a rate is defined within ucom which is mathematically equivalent to defining the rate using the more complex **rateRatio** structure.

## Dosage.rateRange ##

Where the unit of measure applicable to a rate range is defined within ucom the **rateRange** structure can be used.

<script src="https://gist.github.com/RobertGoochUK/618bb18a1ad8e5397883a68032cdb4ff.js"></script>