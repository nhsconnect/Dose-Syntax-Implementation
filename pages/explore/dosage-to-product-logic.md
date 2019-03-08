---
title: Dose to Product Translation Logic
keywords:  messaging
tags: [dm+d,messaging]
sidebar: foundations_sidebar
permalink: dosage-to-product-logic.html
summary: "Logic for translating a dose-based instruction into a list of suitable product-based instructions"
---


## Introduction

Here

## dm+d Data Requirements

The dm+d data fields used for this process are;

**VTM** | **VMP** | **VMP-VPI** | **VMP-FORM** | **VMP-ROUTE**
VTMID | VTMID | | |
 | VPID | VPID | VPID | VPID
NM | NM | | |
INVALID | INVALID | | |
 | NON_AVAILCD
 | UDFS | | |
 | UDFS_UOMCD | | |
 | UNIT_DOSE_UOMCD | |
 | | STRNT_NMRTR_VAL | |
 | | STRNT_NMRTR_UOMCD | |
 | | STRNT_DNMTR_VAL | |
 | | STRNT_DNMTR_UOMCD | |
 | | | FORMCD | ROUTECD

Together with the FORM, ROUTE and UNIT_OF_MEASURE vocabularies from the dm+d **LOOKUP** data.

## Mapping between ucum and SNOMED/dm+d

The following mapping table needs to be available to the implementing system. It is required to identify the SNOMED/dm+d coded unit of measure when a ucum unit is used that differs from the SNOMED term. For example; For example; `gram` is a dm+d unit of measure with `g` is the equivalant within ucum, and ucum spells `liter` differently to the dm+d `litre`.

SNOMED/dm+d code | ucum unit
258683005 | kilogram
258682000 | g
258684004 | milligram
258686002 | ng
258685003 | ug
258773002 | milliliter
258770004 | liter
258770004 | l

## Identification of dose forms that are typically not divisable

Intro text...

Dose Form | SNOMED/dm+d code
Capsule | 385049006
Modified-release capsule | 385054002
Modified-release tablet | 385061003
Spray | 421720008

## Next Section

Here