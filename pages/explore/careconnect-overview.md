---
title: CareConnect Resources Overview
keywords:  messaging
tags: [overview]
sidebar: foundations_sidebar
permalink: careconnect-overview.html
summary: "Overview of CareConnect profiled resources that include the Dosage structure"
---


{% include important.html content="This guidance is under active development by NHS Digital and content may be added or updated on a regular basis." %}

This implementation guidance applies to three CareConnect profiled resources that contain the same two structures;

  * [CareConnect-MedicationRequest-1](https://fhir.hl7.org.uk/STU3/StructureDefinition/CareConnect-MedicationRequest-1)
  * [CareConnect-MedicationDispense-1](https://fhir.hl7.org.uk/STU3/StructureDefinition/CareConnect-MedicationDispense-1)
  * [CareConnect-MedicationStatement-1](https://fhir.hl7.org.uk/STU3/StructureDefinition/CareConnect-MedicationStatement-1)

Each contain two common structures;

  * A reference to a [CareConnect-Medication-1](https://fhir.hl7.org.uk/STU3/StructureDefinition/CareConnect-Medication-1) profiled resource
  * A [STU3 Dosage](http://hl7.org/fhir/stu3/dosage.html#Dosage) structure

## Referencing a CareConnect-Medication-1 profiled resource ##

A reference to a CareConnect-Medication-1 resource can be implemented in three ways;
  * As an internal reference known as a "contained resource" where the resource is embedded inside the parent resource.
  * As an internal reference to a resource defined elsewhere within a [FHIR bundle](https://www.hl7.org/fhir/bundle.html). Use this when an implementation requires the use of a bundle, for example NHS Digital Transfer of Care.
  * As an external reference to a RESTful API that would return a resource. At the time of writing, such a terminology service does not exists so use of this method is **not recommended**.

<script src="https://gist.github.com/RobertGoochUK/6d2ec5ac0e42545a0598723be730578a.js"></script>

## Use of the different dm+d concepts ##

All references to medication must use the NHS standard of dm+d, which is published as an independent terminology product using XML format data as well as being included in the SNOMED-CT UK Drug extension.

The dm+d code used within a medication resource will vary depending on the level of detail required by the prescriber. The most generic instruction would specify a Virtual Therapeutic Moiety (VTM) plus a dosage instruction. The most specific instruction, for the purposes of prescribing, would specify an Actual Medicinal Product (AMP) plus a dosage instruction.

![alt text](images/overview/concepts.png "dm+d concepts and related data")

### VTM ###

The most generic representation of a medicine using only a Virtual Therapeutic Moiety (VTM) dm+d concept.

<script src="https://gist.github.com/RobertGoochUK/92bff409c185c985fdb85269cb912761.js"></script>

### VTM plus Form ###

A coded form can be defined along with a Virtual Therapeutic Moiety (VTM) dm+d concept where the clinician does not want to be specific with a product-based instruction.

<script src="https://gist.github.com/RobertGoochUK/43d83d1cac80e404d02a8440368362c7.js"></script>

### VTM plus Trade Family ###

{% include important.html content="Trade Family coded concepts are not currently supported within FHIR profiles. Where a Trade Family needs to be specified, use an Actual Medicinal Product (AMP) concept." %}

The use of a VTM with a Trade Family is a use case not currently supported within FHIR STU3, or through a UK extension. There is currently no part of the Medication resource that is suitable to convey a SNOMED coded Trade Family. This includes the "manufacturer" which is a reference to a CareConnect-Organization-1 structure that is used for organisational contact details such as name, address, ODS code etc. opposed to a SNOMED coded Trade Family.

### VMP or AMP ###

A Virtual Medicinal Product (VMP) or Actual Medicinal Product (AMP) coded concept. Both are pre-coordinated SNOMED-CT coded concepts. A VMP comprises of a medication + strength + form. An AMP may use either the same medication term as the parent VMP or use a [9191801000001103 Trade family (product)](https://termbrowser.nhs.uk/?perspective=full&conceptId1=9191801000001103&edition=uk-edition) for the medication name. An AMP also defines the manufacturer.

#### Virtual Medicinal Product (VMP) Example ####

<script src="https://gist.github.com/RobertGoochUK/574f6ae7053f908e2cc95abc6224dd76.js"></script>

#### Actual Medicinal Product (AMP) Example ####

<script src="https://gist.github.com/RobertGoochUK/b0de11fbd88a3e2949532a66168659f4.js"></script>

## Use of medication.text ##

In all cases, the **medication.text** must be populated with the description of the coded medication concept. The text is a narrative data type containing `<div>` and `<status>` elements. Within the `<div>` the content could contain XHTML marked-up but receiving systems may choose to ignore any mark-up if they want to be in control of the presentation.
