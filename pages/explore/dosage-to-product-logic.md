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

SNOMED/dm+d code | Dose Form
385049006 | Capsule
385054002 | Modified-release capsule
385061003 | Modified-release tablet
421720008 | Spray

## Known Issues

### Products (VMPs) where the VPI strength is expressed as an inaccurate decimal value

The vast majority of VMPs are defined with a Virtual Product Ingredient (VPI) strength as a whole number, e.g. numerator = 5 (mg) and denominator = 1 (ml). A small percentage of VMPs are defined with a numerator expressed as an incurate decimal value. Two examples are;

1. **Oxybutynon 3mg/15ml bladder irrigation vials**, VPI strength = 333.33 micrograms / 1 ml

2. **Methotrexate 25mg/3ml solution for injection pre-filled syringes**, VPI strength = 8.333 mg / 1 ml

This inaccuracy of values like `333.33` or `8.333` not being mathmetically the same as one third of a milligram means the mathematics used in these calcations does not result in a whole number. For example;

VMP = Oxybutynon 3mg/15ml bladder irrigation vials
Requested Dose = `1 milligram`
Calculated Quantity = `3.003003 vials`

VMP = Methotrexate 25mg/3ml solution for injection pre-filled syringes
Requested Dose = `25 milligram`
Calculated Quantity = `1.041667 pre-filled disposable injection`

It would be unwise to add bespoke logic to round up to the nearest whole number in such cases as this would require an assumption that this is the intention of the prescriber.