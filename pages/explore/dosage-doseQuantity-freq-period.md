---
title: Dosage dose[x], frequency and period
keywords: messaging
tags: [fhir, messaging]
sidebar: foundations_sidebar
permalink: dosage-doseQuantity-freq-period.html
summary: "Simple timing instructions using dose[x], frequency and period"
mathjax: true
---

> A large proportion of cases, especially those where the medication are described using a VMP or AMP concept, can have a dosage instruction defined as a **doseQuantity** plus a combination of **frequency** and **period** elements within the [Timing structure](http://hl7.org/fhir/STU3/datatypes.html#Timing).

## Units of Measure

A unit of measure is required when [describing a dosage](#describing-a-dose) and can be supplied via one of the following:

### UCUM

[The Unified Code for Units of Measure](http://unitsofmeasure.org) (UCUM) is preferred and should be used where possible.

Examples of when a UCUM unit of measure would be used are:

- gram (g)
- milliliter (ml)
- percent (%)

### SNOMED-CT

In the instance where a UCUM unit of measure is not defined, use a [SNOMED-CT](https://datadictionary.nhs.uk/data_elements/unit_of_measurement__snomed_ct_dm_d_.html) unit of measure instead.

Examples of where a SNOMED-CT unit of measure would typically be used are:

- tablet
- capsule
- ampoule

All units of measure are descendants of concept [`767524001 | Unit of measure (qualifier value) |`](https://termbrowser.nhs.uk/?perspective=full&conceptId1=767524001&edition=uk-edition,999000691000001104) which includes both UCUM and non-UCUM codes.

Concept [`732935002 | Unit of presentation (unit of presentation) |`](https://termbrowser.nhs.uk/?perspective=full&conceptId1=732935002&edition=uk-edition), which is also a descendant of the Unit of measure concept, holds a list non-UCUM units of measure that are used within prescribing, such as:

- tablet
- pad
- patch

## Describing a dosage

A dosage can be described via one of the following methods. In both instances when considering Units of Measure note that UCUM is preferred.

### Dosage.doseQuantity

The amount of medication per dose, as a [simple coded quantity](http://hl7.org/fhir/STU3/datatypes.html#SimpleQuantity).

<script src="https://gist.github.com/IOPS-DEV/f57f25fa61f77bdf837919d0e676b2b2.js"></script>

### Dosage.doseRange

A dose that may be in a given low/high range.

<script src="https://gist.github.com/IOPS-DEV/8e95e65ffbcae8b797b5f5d0cf76274d.js"></script>

## Dosage.timing.repeat.frequency and Dosage.timing.repeat.period

Simple dosage timing instructions can be described using **frequency** and **period**.

The combination of frequency and period allows for the two commonly used expressions of:

- $$x$$ times a period
- every $$x$$ period

The unit of the period **must be** one of the UCUM units:

| UCUM Unit | Definition |
| --------- | ---------- |
| `s`       | second     |
| `min`     | minute     |
| `h`       | hour       |
| `d`       | day        |
| `wk`      | week       |
| `mo`      | month      |
| `a`       | year       |

A **frequencyMax** and/or **periodMax** can also be used to define ranges.

<script src="https://gist.github.com/IOPS-DEV/9b76d9da1ef82906bd2cd3e49ce5beb1.js"></script>
