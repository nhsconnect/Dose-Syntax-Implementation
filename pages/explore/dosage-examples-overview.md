---
title: Worked Examples
keywords:  messaging
tags: [overview]
sidebar: foundations_sidebar
permalink: dosage-examples-overview.html
summary: "Worked Examples"
---


{% include important.html content="Examples are not complete with respect to all mandatory or required data for a CareConnect implementation but instead highlight the variety of use of the FHIR Dosage structure" %}

Examples are split into three categories;
  * Simple Fully Machine Readable
  * Complex Fully Machine Readable
  * Semi Machine Readable (where parts of the instruction need to be expressed in free-text)
  
{% include important.html content="For simplicity, all examples are modelled with medication information within a referenced contained resource, opposed to referencing a medication resource defined elsewhere within a Bundle or on an external source/server. This is solely to illustrate the 'what' of the Medication resource alongside the 'when' and 'how' of the dosage instruction within the CareConnect-MedicationRequest-1 resource.<br/><br/>
Resources are minimal, but conformant, examples used to illustrate the relevant concept and the relevant ordering in the XML representation." %}
