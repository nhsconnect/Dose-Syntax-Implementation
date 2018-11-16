---
title: CareConnect-Medication-Request-1
keywords:  messaging
tags: [fhir,messaging]
sidebar: foundations_sidebar
permalink: careconnect-medication-request-1.html
summary: "How medication and dosage instructions are defined within the CareConnect-Medication-Request-1 profiled resource"
---



The CareConnect-MedicationRequest-1 structure definition contains a number of elements that are out of scope for this implementation guidance. Only those elements relevant to convey a medication request with a structured dosage instruction are in scope of this guidance. These are show in the following diagram.

![alt text](images/overview/CareConnect-MedicationRequest-1.jpg "CareConnect-MedicationRequest-1 profiled resource")

A complete and fit-for-purpose CareConnect-MedicationRequest-1 example would need additional elements populated, for example a reference to the patient within subject and a reference to the prescriber within requester.

## medicationReference ##

A coded medication resource will be referenced by **medicationReference**.

This reference can be implemented in three ways;
  * As an internal reference to a FHIR medicationRequest resource, known as a "contained resource". Use this when an implementation requires the sharing of a medicationRequest resource in isolation.
  * As an internal reference to a FHIR resource elsewhere within a [FHIR bundle](https://www.hl7.org/fhir/bundle.html). Use this when an implementation requires the use of a bundle, for example NHS Digital Transfer of Care where medication information is contained within a [CareConnect-MedicationStatement-1](https://fhir.hl7.org.uk/STU3/StructureDefinition/CareConnect-MedicationStatement-1) profiled resource. .
  * As an external reference to a RESTful API that would return a FHIR medication resource for the dm+d concept. At the time of writing, such a terminology service does not exists so use of this method is **not recommended**.
  
All references to medication must use the NHS standard of dm+d, which is published as an independent terminology product using XML format data as well as being included in the SNOMED-CT UK Drug extension.

<script src="https://gist.github.com/RobertGoochUK/6d2ec5ac0e42545a0598723be730578a.js"></script>

### Use of the different dm+d concepts ###

The SNOMED-CT code used within Medication resource will vary depending on the level of detail required by the prescriber. The most generic instruction would specify a Virtual Therapeutic Moiety (VTM) plus a dosage instruction. The most specific instruction, for the purposes of prescribing, would specify an Actual Medicinal Product (AMP) plus a dosage instruction.

![alt text](images/overview/concepts.png "dm+d concepts and related data")

#### VTM ####

Here

#### VTM plus Form ####

Here

#### VTM plus Trade Family ####

The use of a VTM with a Trade Family is a special case that is not directly supported within FHIR STU3. This combination would be used when a prescriber wishes to describe a dose-based prescription using a specific brand of medication but without constraining the instruction to a dm+d Actual Medicinal Product (AMP). The use of an AMP would not only define the brand, but also the strength and form, as is a product-based concept.

A clinical example would be for the VTM "Insulin lispro" which is more commonly referenced by the leading brand "Humalog". Trade family concepts are taken from the SNOMED-CT hierarchy as a  descendant of the concept 9191801000001103 Trade family.

There is no part of the Medication resource that is suitable to convey a SNOMED coded Trade Family. This includes the "manufacturer" which is a reference to a CareConnect-Organization-1 structure that is used for organisational contact details such as name, address, ODS code etc. opposed to a SNOMED code Trade Family. The solution therefore is to convey the Trade Family within the **medication.text** narrative using the syntax "<VTM> (<Trade Family>)".

For example;
"Insulin lispro (Humalog)"
Where "Insulin lispro" is the VTM description and "Humalog" is the Trade Family description

#### VMP or AMP ####

Where a Virtual Medicinal Product (VMP) or Actual Medicinal Product (AMP) are prescribed in Primary Care, the requested quantity and unit of measure of the product is also required. This can be populated within the **dispenseRequest** as part of the CareConnect-MedicationRequest-1 structure definition. The dispenseRequest contains a simple quantity and coded unit of measure. Any unit of measure can be used from the SNOMED-CT hierarchy as a descendant of 767524001 Unit of measure (qualifier value). Most, but not all units relevant to medication dosage instructions, are contained within the hierarchy as a descendant of 732935002 | Unit of presentation (unit of presentation).

### medication.text ###

In all cases, the **medication.text** must be populated with a complete human readable string equivalent to the coded information within the Medication resource. The text is a narrative data type therefore must be marked up as xhtml within a <div> element together with an associated <status> element. Population of the text ensure backwards compatibility with receiving systems that do not process the coded information within the contained Medication resource.

A suitable syntax for constructing an equivalent text string would be;

<code>
name = medication.code.coding.display
form = medication.form.coding.display
medication.text = name , [ " (", tradeFamily , ")" ] , [ " " , form  ]
</code>

## dosageInstruction ##

The structured dosage instruction will be defined within **dosageInstruction**. Refer to the section "Dosage Structure" within this documentation.

## dispenseRequest ##

For primary care use cases, the prescribed quantity of a product (a dm+d Virtual Medicinal Product or Actual Medicinal Product) is defined within **dispenseRequest**. This element would typically be omitted for dose-based instructions.

## text ##

To support backwards compatibility, the **text** attribute should be populated with a human readable textual representation of the structured data within the resource.

At the time of writing, implementation guidance is to use the existing textual instruction for the prescription or order.

An updated version of this guidance may define a logical sequence to generate a human readable dose string from the components of the medication request structure.