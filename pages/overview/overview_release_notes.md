---
title: Release Notes
keywords: development, versioning
tags: [development]
sidebar: overview_sidebar
permalink: overview_release_notes.html
summary: Summary release notes of the versions released in ITK3 Messaging Distribution Implementation Guide
---

{% include important.html content="This site is under active development by NHS Digital on behalf of INTEROPen and is intended to provide all the technical resources you need to successfully develop the ITK3 Messaging Distributions. This project is being developed using an agile methodology so iterative updates to content will be added on a regular basis." %}


## 2.5.1-beta ##

Patch to fix message definitions URL to align with NHS Digital FHIR Policy. (Removal of "Instance" from URL)

## 2.5.0-beta ##

**Handling Specification Extension**

The Priority Handling Specification has been removed due to an architectural decision to remove the priority of the processing of a message.
All remaining Handling Specifications have been made mandatory, with defaults for "Sender Reference" and "Local" Handling  Specifications when not used by a message.

**Value Sets / Code Systems**

ITK-MessageEvent-2 has been updated with the new codes for Digital Medicines and GP Write Back.

**Examples**

All example have updated to align with the above changes.

**Additional Guidance**

Added a new page under Messaging Architecture for MESH with overview presentations and link to MESH website.

## 2.4.0-beta ##

**Sender and Receiver Requirements**

Updated this section with the sender and receiver requirements for ITK3 FHIR Documents.

## 2.3.0-beta ##

**Profiles**

The Profiles for the two acknowledgement messages has been replaced by a single response message.
The Profile for ITK3 Message Definition has been changed to use a FHIR code system instead of an NHS Digital defined one.

**Specification Structure**

The specification Structure has been changed due to the changes the response messages.
Updated diagrams to allow for new response structure. 

**Error Codes**

The error codes have been replaced with a revised set of response codes. See the [ITK3 Response Codes](explore_response_codes.html) for further details.

## 2.2.0-beta ##

**The changes were made in order to meet the requirements of the Change Control Note for the generic FHIR receiver capability.**

The following new Profile has been added:

-  ITK3-Payload-Bundle-1 - This is issued for all bundle types except document.
 
This code system has changed:

- ITK-MessageEvent-2
  - The following new code have been added: ITK007C (where C=collection) to describe ITK3 GP Connect Writeback.
  - This has been upversioned from 2.0.0 to 2.1.0

## 2.1.0-beta ##

Interactions have been replaced by MessageDefinitions and some new handling keys (e.g. RecipientType and Priority).

A new Profile has been created called ITK-MessageDefinition-1 – which defines the characteristics of ITK3 messages that can be shared between systems, including the type of event that initiates the message, the content to be transmitted and what response(s) are permitted.  This Profile and its associated message definition instances can be found in the Message Definitions page, which also replaces the Interactions page. 

The following Profiles have changed:

- ITK-MessageHeader-2 - This was changed to ensure the ITK3 solution aligns to the ITK2.x solution.
  - Removed the following elements (and sub-elements): author, enterer, destination, responsible and reason.
  - Made the focus element 1..1 (mandatory).
  - The source element is constrained by the removal of all sub elements apart from the endpoint.
- Extension-ITK-MessageHandling-2
  - For the element extension:LocalExtension, changed the cardinality to 0..1 (optional), and made the value[x] sub-element 1..1 (mandatory).
- CareConnect-ITK-Header-Organization-1
  - The name element is not required, so the cardinality on the name element has been changed to 0..0.

This value set has changed:

- ValueSet-ITK-InfAcknowledgement-1
  - The following new Infrastructure error codes have been added: 51013, RC001, RC002, RC003, RC004, RC005, RC006 and RC999
  - See the [ITK3 Response Codes](explore_response_codes.html) for further details about these error codes
- ValueSet-CareSettingType-1
  - The url for ValueSet-CareSettingType-1, has changed to https://fhir.nhs.uk/STU3/ValueSet/CareSettingType-1 so that it can be used across programs, also the internal version has changed to 1.0.0

 
This code system has changed:

- ITK-Acknowledgement-1
  - The following new Infrastructure error codes have been added: 51013, RC001, RC002, RC003, RC004, RC005, RC006 and RC999
  - See the [ITK3 Response Codes](explore_response_codes.html) for further details about these error codes

The [ITK3 Response Codes](explore_response_codes.html) has been improved by including the display values of the error codes, and the table of contents includes the error example scenarios.  There is a new error code to describe an unreadable message received.

The [Bundle Structure Diagrams](explore_bundle_overview.html) have been corrected to reflect the changes to this specification. 

The diagrams and examples have changed to reflect the changes to the Profiles, value sets and code systems.

The following examples have changed:

- ITK-SendPayload-Invalid-Example-2.xml
  - Corrected the reference value="https://fhir.nhs.uk/STU3/MessageDefinition/ITK-EDIS-MessageDefinition-1".
  - The MessageHeader is corrected to reference the practitioner and organization.
  - The practitioner element has had the telecom element removed and the Organization element has had the following removed elements removed: type, name, telecom and address.
- ITK-SendPayload-Valid-Example-2.xml
  - Corrected the reference value="https://fhir.nhs.uk/STU3/MessageDefinition/ITK-EDIS-MessageDefinition-1".
  - The MessageHeader is corrected to reference the practitioner and organization.
  - The practitioner element has had the telecom element removed and the Organization element has had the following removed elements removed: type, name, telecom and address.
- ITK-BusinessAck-Success-Example-2.xml
  - Removed the elements: destination and response, added the element focus.
- ITK-InfAck-Fail-Example-2.xml
  - Removed the elements: destination and response, added the element focus.
- ITK-InfAck-Success-Example-2.xml
  - Removed the element: destination and added the element focus.
- ITK-SendPayload-Invalid-Example-2.xml
  - Removed the element: destination and added the element focus.
- ITK-SendPayload-Valid-Example-2.xml
  - Removed the element: destination and added the element focus.

The following new examples carry the [ITK3 Response Codes](explore_response_codes.html), that were not illustrated in the previously released XML examples:

- ITK-BusinessAck-Fail-PatNoClinSet-Example-1.xml
- ITK-InfAck-AttachInvalid-Example-1.xml
- ITK-InfAck-DocContFail-Example-1.xml
- ITK-InfAck-DuplicDoc-Example-1.xml
- ITK-InfAck-DuplicMsg-Example-1.xml
- ITK-InfAck-HandSpecError-Example-1.xml
- ITK-InfAck-NonApprovFT-Example-1.xml
- ITK-InfAck-ProcessError-Example-1.xml
- ITK-InfAck-ServiceFail-Example-1.xml
- ITK-InfAck-UnauthSender-Example-1.xml
- ITK-InfAck-UnrecRcpOrg-Example-1.xml
- ITK-InfAck-UnrecRcpPsn-Example-1.xml
- ITK-InfAck-UnrecSender-Example-1.xml


## 2.1.0-alpha ##
This is the second version published using Jekyll.

The following Profiles are tightly constrained ITK3 replacements of the corresponding Care Connect Profiles:

- CareConnect-ITK-Header-Practitioner-1 replaces CareConnect-Practitioner-1
- CareConnect-ITK-Header-PractitionerRole-1 replaces CareConnect-PractitionerRole-1
- CareConnect-ITK-Header-Organization-1 replaces CareConnect-Organization-1

The following Profiles have changed for this release:

- ITK-MessageHeader-2: the slicing on the event data element has been removed, and now this is bound to the ITK-MessageEvent-2 value set.
- Extension-ITK-MessageHandling-2: this has been restructured because the handling keys have been reviewed and updated following a decision to move to MESH, where redundant keys have been removed and additional keys added, see the [Handling Specification Section](explore_hand_spec.html) for further details.  In the previous version of this Profile this was structured as Key data element containing a valueCodeableConcept and a value.  In this version, each handling key is represented by its own extension URL element, containing the appropriate allowable value.

This value set has changed:

- ITK-MessageEvent-2 - the value of the system element has changed to "https://fhir.nhs.uk/STU3/CodeSystem/ITK-MessageEvent-2".

This value set has been removed:

- ITK-HandlingKey-1 - this is no longer needed, as the Handling Key information is modelled as a complex extension which consists of an Extension URL that carries the Handling Key and an associated allowable value in the Extension-ITK-MessageHandling-2 Profile.  See the [Handling Specification Section](explore_hand_spec.html) for further details".

This code system has changed:

- ITK-MessageEvent-2: there are new code values for eDischarge, Mental Health eDischarge, Emergency Care eDischarge and Outpatient Letter.

This code system has been removed:

- ITK-HandlingKey-1: this is no longer needed due to the way that the handling key information is modelled in the Extension-ITK-MessageHandling-2 Profile

The XML Examples have been updated to reflect the changes outlined above.

## 2.0.0-alpha.0 ##
First version published using Jekyll.

