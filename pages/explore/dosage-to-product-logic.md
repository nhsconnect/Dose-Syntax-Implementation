---
title: Dose to Product Translation Logic
keywords:  messaging
tags: [fhir,messaging]
sidebar: foundations_sidebar
permalink: dosage-to-product-logic.html
summary: "Logic for translating a dose-based instruction into a list of suitable product-based instructions"
---


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

Together with the FORM, ROUTE and UNIT_OF_MEASURE vocabularies from the dm+d **lookup** data.
