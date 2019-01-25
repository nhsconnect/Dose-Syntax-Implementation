---
title: Dosage.text and Dosage.timing.code
keywords:  messaging
tags: [fhir,messaging]
sidebar: foundations_sidebar
permalink: dosage-text2.html
summary: "Use of the dosage.text and dosage.timing.code elements of the dosage instruction"
---



## Dosage.text ##

The FHIR specification states the **Dosage.text** attribute can be used where medications are too complex to code.

For the purposes of this guidance, not such cases have been identified. The population of the **text** attribute is not recommended where the dosage instruction is defined using the coded structures.

## Dosage.timing.code ##

Allows a code, often a Latin abbreviation, for a timing schedule to be specified, for example, "BID" (=twice a day). It is recommended that such codes **are not** used when the rest of the Dosage structure is supported by the system. Instead use the structures like **frequency** and **period** so that a timing schedule can be computable.