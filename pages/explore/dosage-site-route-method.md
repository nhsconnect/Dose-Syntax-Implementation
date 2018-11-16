---
title: Dosage site, route and method
keywords:  messaging
tags: [fhir,messaging]
sidebar: foundations_sidebar
permalink: dosage-site-route-method.html
summary: "Use of Dosage site, route and method"
---



## Site, Route and Method ##

Three simple coded data items that can define the **site**, **route** or **method** for the medication instruction.

Any site can be used from the SNOMED-CT hierarchy as a descendant of the concept [123037004 Body structure (body structure)](https://termbrowser.nhs.uk/?perspective=full&conceptId1=123037004&edition=uk-edition).

Any route can be used from the SNOMED-CT hierarchy as a  descendant of the concept [284009009 Route of administration value (qualifier value)](https://termbrowser.nhs.uk/?perspective=full&conceptId1=284009009&edition=uk-edition).

Any method can be used from either the FHIR [value-set for method](http://hl7.org/fhir/valueset-administration-method-codes.html), the SNOMED-CT hierarchy as a descendant of the concept [422096002 Dosing instruction fragment (qualifier value)](https://termbrowser.nhs.uk/?perspective=full&conceptId1=422096002&edition=uk-edition) or as a descendant of the concept [736665006 Dose form administration method (administration method)](https://termbrowser.nhs.uk/?perspective=full&conceptId1=736665006&edition=uk-edition).

<script src="https://gist.github.com/RobertGoochUK/463347c7af504eff10b60b2ae6bc189d.js"></script>

## Use of Synonyms ##

The use of synonyms defined within SNOMED-CT may be particularly relevant to the data items for site, route and method. In some cases, the anatomically correct SNOMED-CT term may not be easily understood by the patient or clinician so the use of a synonoym may be preferred. Guidance for using terms that are not preferred terms is available within the published document [Guidance on the use of CodeableConcept](https://nhsconnect.github.io/gpconnect/pages/accessrecord_structured/guidance-on-the-population-of-codeableconcept.pdf).