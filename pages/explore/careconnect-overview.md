---
title: CareConnect Resources Overview
keywords:  messaging
tags: [fhir,messaging]
sidebar: foundations_sidebar
permalink: careconnect-overview.html
summary: "Overview of CareConnect profiled resources that include the Dosage structure"
---



This implementation guidance applies to four CareConnect profiled resources that contain the same two structures;

  * CareConnect-MedicationRequest-1
  * CareConnect-MedicationDispense-1
  * CareConnect-MedicationStatement-1 
  * CareConnect-MedicationOrder-1

All contain the same two structures;

  * [CareConnect-Medication-1](https://fhir.hl7.org.uk/STU3/StructureDefinition/CareConnect-Medication-1)
  * [STU3 Dosage](http://hl7.org/fhir/stu3/dosage.html#Dosage)

However note that the CareConnect-MedicationOrder-1 profiled resource has been modelled slightly differently to the others in two respects, as per the following table.

| Profiled Resource | Medication | Dosage |
| ------------- |:-------------:| -----:|
| CareConnect-MedicationRequest-1 | Referenced CareConnect-Medication-1 | STU3 Dosage |
| CareConnect-MedicationDispense-1 | Referenced CareConnect-Medication-1 | STU3 Dosage |
| CareConnect-MedicationStatement-1 | Referenced CareConnect-Medication-1 |  STU3 Dosage |
| CareConnect-MedicationOrder-1 | CodeableConcept or Referenced  |  BackboneElement aligned to STU3 Dosage |
  
## Referencing a CareConnect-Medication-1 profiled resource ##

Where a CareConnect profiles resource uses a reference to CareConnect-Medication-1 then it can be implemented in three ways;
  * As an internal reference known as a "contained resource" where the CareConnect-Medication-1 resource is embedded inside the parent resource.
  * As an internal reference to a CareConnect-Medication-1 resource defined elsewhere within a [FHIR bundle](https://www.hl7.org/fhir/bundle.html). Use this when an implementation requires the use of a bundle, for example NHS Digital Transfer of Care where medication information is contained within a [CareConnect-MedicationStatement-1](https://fhir.hl7.org.uk/STU3/StructureDefinition/CareConnect-MedicationStatement-1) profiled resource, which itself contains a reference to a CareConnect-Medication-1 resource.
  * As an external reference to a RESTful API that would return a CareConnect-Medication-1 resource. At the time of writing, such a terminology service does not exists so use of this method is **not recommended**.
  
All references to medication must use the NHS standard of dm+d, which is published as an independent terminology product using XML format data as well as being included in the SNOMED-CT UK Drug extension.

<script src="https://gist.github.com/RobertGoochUK/6d2ec5ac0e42545a0598723be730578a.js"></script>

### Use of the different dm+d concepts ###

The SNOMED-CT code used within Medication resource will vary depending on the level of detail required by the prescriber. The most generic instruction would specify a Virtual Therapeutic Moiety (VTM) plus a dosage instruction. The most specific instruction, for the purposes of prescribing, would specify an Actual Medicinal Product (AMP) plus a dosage instruction.

![alt text](images/overview/concepts.png "dm+d concepts and related data")

#### VTM ####

The most generic representation of a medicine using only a Virtual Therapeutic Moiety (VTM) dm+d concept.

#### VTM plus Form ####

A coded form can be defined along with a Virtual Therapeutic Moiety (VTM) dm+d concept where the clinician does not want to be specific with a product-based instruction.

#### VTM plus Trade Family ####

The use of a VTM with a Trade Family is a special case that is not directly supported within FHIR STU3. This combination would be used when a prescriber wishes to describe a dose-based prescription using a specific brand of medication but without constraining the instruction to a dm+d Actual Medicinal Product (AMP). The use of an AMP would not only define the brand, but also the strength and form, as is a product-based concept.

A clinical example would be for the VTM "Insulin lispro" which is more commonly referenced by the leading brand "Humalog". Trade family concepts are taken from the SNOMED-CT hierarchy as a  descendant of the concept 9191801000001103 Trade family.

There is no part of the Medication resource that is suitable to convey a SNOMED coded Trade Family. This includes the "manufacturer" which is a reference to a CareConnect-Organization-1 structure that is used for organisational contact details such as name, address, ODS code etc. opposed to a SNOMED code Trade Family. The solution therefore is to convey the Trade Family within the **medication.text** narrative within brackets after the VTM description.

#### VMP or AMP ####

For prescribing or dispensing uses cases where a Virtual Medicinal Product (VMP) or Actual Medicinal Product (AMP) is defined, the implementation will often require the requested or dispensed quantity of medication using the FHIR SimpleQuantity structure. This will always be the case for data sharing within Primary Care.

The SimpleQuantity structure contains a simple quantity and coded unit of measure. Any unit of measure can be used from the SNOMED-CT hierarchy as a descendant of 767524001 Unit of measure (qualifier value). Most, but not all units relevant to medication dosage instructions, are contained within the hierarchy as a descendant of 732935002 Unit of presentation (unit of presentation).

### medication.text ###

In all cases, the **medication.text** must be populated with a complete human readable string equivalent to the coded information within the Medication resource. The text is a narrative data type therefore must be marked up as xhtml within a <div> element together with an associated <status> element. Population of the text ensure backwards compatibility with receiving systems that do not process the coded information within the contained Medication resource.

A suitable syntax for constructing an equivalent text string would be;

<code>name = medication.code.coding.display <br/>
form = medication.form.coding.display <br/>
medication.text = name , [ " (", tradeFamily , ")" ] , [ " " , form  ]
</code>

## Dosage structure ##

Refer to the section "Dosage Structure" within this documentation.
