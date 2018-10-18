---
title: Bundle Types
keywords:  messaging, bundles
tags: [fhir,messaging]
sidebar: foundations_sidebar
permalink: explore_bundle_type.html
summary: "The types of bundles used in ITK3"
---



## The ITK3 Messaging Distribution Bundle ##

The diagram below shows a schematic of the basic ITK3 Messaging Distribution Bundle structure. The ITK3 Message Bundle is the container for the ITK3 MessageHeader and any Payload. The MessageHeader contains information that pertains to the Payload content. The Payload can be anything.
The diagrams showing the ITK3 Message Bundle below are simplified and do not show all the resources which could be contained therein. 

<img src="images/explore/ITKBundle.png" style="width:50%;max-width: 50%;">


## ITK3 Typical Bundle Structures ##

This section illustrates typical bundle structures used with ITK3.

## ITK3 FHIR Document Bundle Structure ##

The diagram below is an example of an ITK3 FHIR document Payload that may be used with the ITK3 Messaging Distribution Bundle. When sending FHIR Documents the type of bundle is a document.

<img src="images/explore/ITKDocExample.png" style="width:50%;max-width: 50%;">

## ITK3 Response Bundle Structure ##

The diagram below is an example of an ITK3 Response message structure.
 
<img src="images/explore/BUSExample.png" style="width:50%;max-width: 50%;">


## ITK3 Other Payload Bundle Structure ##

The diagram below is an example of the structure used when the Payload is an additional bundle, of one of the types listed below:

- message
- transaction
- transaction-response
- batch
- batch-response
- history
- searchset
- collection

<img src="images/explore/ITKPayBundExample.png" style="width:50%;max-width: 50%;">


## The ITK3 Messaging Distribution Bundle Resources ##

This Bundle is a generic bundle for sending any Payload.

The Bundle consists of the following FHIR Resource Profiles.

- **[ITK-Message-Bundle-1](https://fhir.nhs.uk/STU3/StructureDefinition/ITK-Message-Bundle-1)** - A NHS Digital Profile of the FHIR Bundle Resource.
- **[ITK-MessageHeader-2](https://fhir.nhs.uk/STU3/StructureDefinition/ITK-MessageHeader-2)** - A NHS Digital Profile of the FHIR MessageHeader Resource.	
- **[CareConnect-ITK-Header-Practitioner-1](https://fhir.nhs.uk/STU3/StructureDefinition/CareConnect-ITK-Header-Practitioner-1)** - An ITK3 Header Profile of the FHIR Practitioner Resource.
- **[CareConnect-ITK-Header-Organization-1](https://fhir.nhs.uk/STU3/StructureDefinition/CareConnect-ITK-Header-Organization-1)** - An ITK3 Header Profile of the FHIR Organization Resource.
- Payload - one of the following:

-- One or more FHIR Resource. 

-- The **[ITK-Response-OperationOutcome-1](https://fhir.nhs.uk/STU3/StructureDefinition/ITK-Response-OperationOutcome-1)**

-- The **[ITK-Document-Bundle-1](https://fhir.nhs.uk/STU3/StructureDefinition/ITK-Document-Bundle-1)** containing a composition and one or more FHIR Resources.

-- The **[ITK-Payload-Bundle-1](https://fhir.nhs.uk/STU3/StructureDefinition/ITK-Payload-Bundle-1)** containing one or more FHIR Resources.


## ITK3 Response Bundle ##

ITK3 Responses are used to convey information from the receiving system back to the sending system, the messages are clinically agnostic and relay information regarding errors in the received ITK3 Messaging Distribution Bundle, such as a failure in validation due to incorrect structure. This Response message also allows systems to report that a message was received without error. When a message is received without error at the infrastructure or technical layer it may subsequently error later at the business layer.

The Bundle consists of the following FHIR Resource Profiles.

- **[ITK-Message-Bundle-1](https://fhir.nhs.uk/STU3/StructureDefinition/ITK-Message-Bundle-1)** - A NHS Digital Profile of the FHIR Bundle Resource.
- **[ITK-MessageHeader-2](https://fhir.nhs.uk/STU3/StructureDefinition/ITK-MessageHeader-2)** - A NHS Digital Profile of the FHIR MessageHeader Resource.	
- **[CareConnect-ITK-Header-Practitioner-1](https://fhir.nhs.uk/STU3/StructureDefinition/CareConnect-ITK-Header-Practitioner-1)** - An ITK3 Header Profile of the FHIR Practitioner Resource  
- **[CareConnect-ITK-Header-Organization-1](https://fhir.nhs.uk/STU3/StructureDefinition/CareConnect-ITK-Header-Organization-1)** - An ITK3 Header Profile of the FHIR Organization Resource.
- **[ITK-Response-OperationOutcome-1](https://fhir.nhs.uk/STU3/StructureDefinition/ITK-Response-OperationOutcome-1)** - A NHS Digital Profile of the OperationOutcome resource

## Extensions Used ##

- **[Extension-ITK-MessageHandling-2](https://fhir.nhs.uk/STU3/StructureDefinition/Extension-ITK-MessageHandling-2)** - An NHS Digital complex extension to the MessageHeader Resource to support the ITK3 message handling key.
















