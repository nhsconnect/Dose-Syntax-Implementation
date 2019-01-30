---
title: STU3 Limitation - Instructions for a specific device
keywords:  messaging
tags: [fhir,messaging]
sidebar: foundations_sidebar
permalink: dosage-specific-device.html
summary: "STU3 Limitation - Instructions for a specific device"
---


{% include important.html content="Workaround: Use a Virtual Medicinal Product (VMP) or Actual Medicinal Product (AMP) concept, or express within a free-text Dosage.additionalInstruction." %}

In some cases, with a dose-based instruction, the type of device to use for the administration of the medication needs to be specified.

For example, Salbutamol medication may be inhaled using one of four types of device; 
  * Nebuliser
  * Metered dose inhaler
  * Breath actuated inhaler
  * Dry powder inhaler

Whilst each of these devices is a coded term within SNOMED-CT, it would be potentially confusing to add a coded device as an additional instruction. None of the CareConnect profiled resources referenced within this guidance contain a structure where a coded device can be specified as part of the medication request.

Until supported via another means, where a specific type of device needs to be specified, either prescribe using a product-based dm+d concept (e.g. VMP or AMP) or specify the request for any type of device to be used as free-text within **Dosage.additionalInstruction**. 
