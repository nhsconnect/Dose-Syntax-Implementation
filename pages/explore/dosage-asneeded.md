---
title: Dosage asNeeded[x]
keywords:  messaging
tags: [fhir,messaging]
sidebar: foundations_sidebar
permalink: dosage-asneeded.html
summary: "Dosing 'asNeeded' and 'asNeededCodeableConcept' instructions"
---



## Dosage.asNeeded[x] ##

The **asNeeded** structure can be used to define a simple "as required" (or "pro re nata" expressed as "PRN" for those who still prefer to use Latin abbreviations) instructions. In this case use the **asNeededBoolean** option. The absence of asNeededBoolean is equivalent to where asNeededBoolean has a value of "false".

The **asNeededCodeableConcept** option is used to bound the dosage instruction to a coded term. Any number of coded terms can be used from the SNOMED-CT hierarchy as a descendant of [404684003 Clinical Finding (finding)](https://termbrowser.nhs.uk/?perspective=full&conceptId1=404684003&edition=uk-edition). An extensive medication-as-needed-reason value-set is defined within FHIR which is a subset of the SNOMED-CT clinical findings hierarchy.

## Examples

### Dosage.asNeeded
<script src="https://gist.github.com/RobertGoochUK/355dcf9b4e71f740e5b197b77f80818d.js"></script>

### Dosage.asNeededCodeableConcept
<script src="https://gist.github.com/RobertGoochUK/8a3bd9f5bbd25a7cf9ffd23975dbeedf.js"></script>
