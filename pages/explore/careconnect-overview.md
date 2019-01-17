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

The use of a VTM with a Trade Family is a special case that is not directly supported within FHIR STU3. This combination would be used when a prescriber wishes to describe a dose-based prescription using a specific brand of medication but without constraining the instruction to a dm+d Actual Medicinal Product (AMP). The use of an AMP would not only define the brand, but also the strength and form, as is a product-based concept.

A clinical example would be for the VTM "Insulin lispro" which is more commonly referenced by the leading brand "Humalog". Trade family concepts are taken from the SNOMED-CT hierarchy as a  descendant of the concept 9191801000001103 Trade family.

There is no part of the Medication resource that is suitable to convey a SNOMED coded Trade Family. This includes the "manufacturer" which is a reference to a CareConnect-Organization-1 structure that is used for organisational contact details such as name, address, ODS code etc. opposed to a SNOMED code Trade Family. The solution therefore is to convey the Trade Family within the **medication.text** narrative within brackets after the VTM description.

<script src="https://gist.github.com/RobertGoochUK/b8576feb29713055e54a6893c2a271cb.js"></script>

### VMP or AMP ###

For prescribing or dispensing uses cases where a Virtual Medicinal Product (VMP) or Actual Medicinal Product (AMP) is defined, the implementation will often require the requested or dispensed quantity of medication using the FHIR SimpleQuantity structure. This will always be the case for data sharing within Primary Care.

The SimpleQuantity structure contains a simple quantity and coded unit of measure. Any unit of measure can be used from the SNOMED-CT hierarchy as a descendant of 767524001 Unit of measure (qualifier value). Most, but not all units relevant to medication dosage instructions, are contained within the hierarchy as a descendant of 732935002 Unit of presentation (unit of presentation).

<script src="https://gist.github.com/RobertGoochUK/987b500e381e4b1fc3e258a19fda8acd.js"></script>

## Use of medication.text ##

In all cases, the **medication.text** must be populated with a complete human readable string equivalent to the coded information within the Medication resource. The text is a narrative data type therefore must be marked up as xhtml within a <div> element together with an associated <status> element. Population of the text ensure backwards compatibility with receiving systems that do not process the coded information within the medication resource.

A suitable syntax for constructing an equivalent text string would be;

<code>name = medication.code.coding.display <br/>
medication.text = name , [ " (", tradeFamily , ")" ]
</code>

**Note 1.** The inclusion of any specified Trade Family description is an interim solution pending the availability of a coded structure within a CareConnect profiled resource to specify a Trade Family coded concept.

**Note 2.** Version 1.0.0 of this guidance suggested any specified medication Form should be included within the medication.text. This has been removed as any specified Form will be included within the parent resource .text structure. For example, the medicationRequest.text structure.

## Use of Dosage structure ##

Refer to the section "Dosage Structure" within this documentation.