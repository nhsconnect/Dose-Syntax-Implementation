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

The coded medication will be defined within a CareConnect-Medication-1 structure definition referenced by **medicationReference**.

The dosage instruction is defined within **dosageInstruction**.

For primary care use cases, the prescribed quantity of a product (Virtual Medicinal Product or Actual Medicinal Product) is defined within **dispenseRequest**.

A complete and fit-for-purpose CareConnect-MedicationRequest-1 example would need additional elements populated, for example a reference to the patient within subject and a reference to the prescriber within requester.

## medicationReference ##

Here

## dosageInstruction ##

Here

## dispenseRequest ##

Here 

## text ##

Here