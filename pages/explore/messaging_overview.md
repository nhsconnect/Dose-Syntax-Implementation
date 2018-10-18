---
title: Messaging Architecture Overview
keywords:  messaging
tags: [fhir,messaging]
sidebar: foundations_sidebar
permalink: explore.html
summary: "Overview of the Messaging Architecture section"
---



This section details the "Messaging Architecture" used for ITK3 using FHIR messaging and documents such as: 

- The different types of bundle structures which may be used
- Identifying the FHIR Resources which are Profiled
- Providing example bundle instances
- Explaining the extensions to the header Resource for ITK3 Handling Specifications

## Pre-Requisites for FHIR ITK3 Messaging Solutions ##

There are some pre-requisites for the use of the ITK3 Messaging Distribution specification which are detailed below.

## ITK3 Messaging Distribution Requirements ##

- SHALL support HL7 FHIR STU3.
- SHALL implement ITK3 Sender and/or Receiver Responsibilities as per [ITK3 Document Sender and Receiver Requirements](explore_snd&rec_req.html) when sending an ITK3 FHIR Document.
- SHALL support the XML format for all NHS Digital document and message flows.

## FHIR Conformance ##

Systems SHOULD declare a Conformance using the FHIR Resource Capability Statement identifying the list of message definitions supported.

