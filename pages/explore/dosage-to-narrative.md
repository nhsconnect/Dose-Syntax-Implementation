---
title: CareConnect Text Narrative
keywords:  messaging
tags: [fhir,messaging]
sidebar: foundations_sidebar
permalink: dosage-to-narrative-overview.html
summary: "Use of the text narrative within CareConnect profiled resources"
---


The **text** narrative at the root level of all medication-related CareConnect profiled resources must be populated with a '*...text summary of the resource, for human interpretation*'.

This section details the logic required for a system to generate a suitable, clinically safe, complete medication + dosage string from the coded structures.

