---
title: STU3 Limitation - Specifying a Trade Family / Brand
keywords:  messaging
tags: [fhir,messaging]
sidebar: foundations_sidebar
permalink: dosage-tradefamily.html
summary: "STU3 Limitation - Specifying a Trade Family / Brand"
---



The use of a VTM with a Trade Family is a special case that is not directly supported within FHIR STU3. This combination would be used when a prescriber wishes to describe a dose-based prescription using a specific brand of medication but without constraining the instruction to a dm+d Actual Medicinal Product (AMP). The use of an AMP would not only define the brand, but also the strength and form, as is a product-based concept.

A clinical example would be for the VTM "Insulin lispro" which is more commonly referenced by the leading brand "Humalog". Trade family concepts are taken from the SNOMED-CT hierarchy as a  descendant of the concept [9191801000001103 Trade family]https://termbrowser.nhs.uk/?perspective=full&conceptId1=9191801000001103&edition=uk-edition).

There is no part of the Medication resource that is suitable to convey a SNOMED-CT coded Trade Family. This includes the "manufacturer" which is a reference to a CareConnect-Organization-1 structure that is used for organisational contact details such as name, address, ODS code etc. opposed to a SNOMED code Trade Family. The solution therefore is to convey the Trade Family within the **medication.text** narrative within brackets after the VTM description.

<script src="https://gist.github.com/RobertGoochUK/b8576feb29713055e54a6893c2a271cb.js"></script>