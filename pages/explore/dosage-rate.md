---
title: Dosage rate[x]
keywords:  messaging
tags: [fhir,messaging]
sidebar: foundations_sidebar
permalink: dosage-rate.html
summary: "Rate-based instructions"
---



A rate-based quantity, such as 30 ml per hour, can be expressed as a **rateRatio** with coded numerator and denominator values. Where the unit of measure for the ratio is defined within UCUM (see [Common UCUM Units](https://www.hl7.org/fhir/valueset-UCUM-common.xml)), for example, "milliliter per hour", it can also be expressed using the simpler **rateQuantity** structure.

## Dosage.rateRatio

Where the rate is expressed as coded numerator and denominator values.

## Dosage.rateQuantity

Where the unit of measure applicable to a rate is defined within UCUM which is mathematically equivalent to defining the rate using the more complex **rateRatio** structure.

## Dosage.rateRange

Where the unit of measure applicable to a rate range is defined within UCUM the **rateRange** structure can be used.

## Examples

<script src="https://gist.github.com/IOPS-DEV/4bf460c2c200f837d567f7d63e4b9aff.js"></script>