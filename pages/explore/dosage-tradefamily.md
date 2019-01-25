---
title: STU3 Limitation - Specifying a Trade Family / Brand
keywords:  messaging
tags: [fhir,messaging]
sidebar: foundations_sidebar
permalink: dosage-tradefamily.html
summary: "STU3 Limitation - Specifying a Trade Family / Brand"
---


The use of a VTM with a Trade Family is a use case not currently supported within FHIR STU3, or through a UK extension. There is currently no part of the Medication resource that is suitable to convey a SNOMED coded Trade Family. This includes the "manufacturer" which is a reference to a CareConnect-Organization-1 structure that is used for organisational contact details such as name, address, ODS code etc. opposed to a SNOMED coded Trade Family.

The use of a VTM with a Trade Family is required when a prescriber wishes to describe a dose-based prescription using a specific brand of medication but without constraining the instruction to an Actual Medicinal Product (AMP). The use of an AMP would not only define the brand, but also the strength and form, as is a product-based concept.

{% include important.html content="Until Trade Family coded concepts are supported within FHIR profiles, where a Trade Family needs to be specified use an Actual Medicinal Product (AMP) concept." %}
