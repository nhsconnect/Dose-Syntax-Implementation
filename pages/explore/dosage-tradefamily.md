---
title: STU3 Limitation - Specifying a Trade Family / Brand
keywords:  messaging
tags: [fhir,messaging]
sidebar: foundations_sidebar
permalink: dosage-tradefamily.html
summary: "STU3 Limitation - Specifying a Trade Family / Brand"
---


{% include important.html content="Trade Family coded concept as the medication within FHIR profiles." %}

The use of a coded Trade Family as the medication item with or without identifying a dose form is
supported within FHIR STU3.

It is also possible to specify a brand as the medication using an Actual Medicinal Product (AMP)
concept. The use of an AMP would not only define the brand, but also the strength and form, as it is
a product-based concept.

The use of a Virtual Therapeutic Moiety with Trade Family in a medication request may be required
when a prescriber wishes to describe a dose-based prescription using a specific brand of medication
without further specifying the product required. FHIR STU3 does not support the use of 2 or more
codes (e.g. VTM and TF) to identify a specific Medication.
