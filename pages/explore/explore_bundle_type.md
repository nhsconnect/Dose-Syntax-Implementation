---
title: Bundle Types
keywords:  messaging, bundles
tags: [fhir,messaging]
sidebar: foundations_sidebar
permalink: explore_bundle_type.html
summary: "The types of bundles used in XXXXXXXXXXXXXX3"
---



## The XXXXXXXXXXXXXX3 Messaging Distribution Bundle ##

The diagram below shows a schematic of the basic XXXXXXXXXXXXXX3 Messaging Distribution Bundle structure. The XXXXXXXXXXXXXX3 Message Bundle is the container for the XXXXXXXXXXXXXX3 MessageHeader and any Payload. The MessageHeader contains information that pertains to the Payload content. The Payload can be anything.
The diagrams showing the XXXXXXXXXXXXXX3 Message Bundle below are simplified and do not show all the resources which could be contained therein. 

<img src="images/explore/XXXXXXXXXXXXXXBundle.png" style="width:50%;max-width: 50%;">


## XXXXXXXXXXXXXX3 Typical Bundle Structures ##

This section illustrates typical bundle structures used with XXXXXXXXXXXXXX3.

## XXXXXXXXXXXXXX3 FHIR Document Bundle Structure ##

The diagram below is an example of an XXXXXXXXXXXXXX3 FHIR document Payload that may be used with the XXXXXXXXXXXXXX3 Messaging Distribution Bundle. When sending FHIR Documents the type of bundle is a document.

<img src="images/explore/XXXXXXXXXXXXXXDocExample.png" style="width:50%;max-width: 50%;">

## XXXXXXXXXXXXXX3 Response Bundle Structure ##

The diagram below is an example of an XXXXXXXXXXXXXX3 Response message structure.
 
<img src="images/explore/BUSExample.png" style="width:50%;max-width: 50%;">


## XXXXXXXXXXXXXX3 Other Payload Bundle Structure ##

The diagram below is an example of the structure used when the Payload is an additional bundle, of one of the types listed below:

- message
- transaction
- transaction-response
- batch
- batch-response
- history
- searchset
- collection

<img src="images/explore/XXXXXXXXXXXXXXPayBundExample.png" style="width:50%;max-width: 50%;">


## The XXXXXXXXXXXXXX3 Messaging Distribution Bundle Resources ##

This Bundle is a generic bundle for sending any Payload.

The Bundle consists of the following FHIR Resource Profiles.

- **[XXXXXXXXXXXXXX-Message-Bundle-1](https://fhir.nhs.uk/STU3/StructureDefinition/XXXXXXXXXXXXXX-Message-Bundle-1)** - A NHS Digital Profile of the FHIR Bundle Resource.
- **[XXXXXXXXXXXXXX-MessageHeader-2](https://fhir.nhs.uk/STU3/StructureDefinition/XXXXXXXXXXXXXX-MessageHeader-2)** - A NHS Digital Profile of the FHIR MessageHeader Resource.	
- **[CareConnect-XXXXXXXXXXXXXX-Header-Practitioner-1](https://fhir.nhs.uk/STU3/StructureDefinition/CareConnect-XXXXXXXXXXXXXX-Header-Practitioner-1)** - An XXXXXXXXXXXXXX3 Header Profile of the FHIR Practitioner Resource.
- **[CareConnect-XXXXXXXXXXXXXX-Header-Organization-1](https://fhir.nhs.uk/STU3/StructureDefinition/CareConnect-XXXXXXXXXXXXXX-Header-Organization-1)** - An XXXXXXXXXXXXXX3 Header Profile of the FHIR Organization Resource.
- Payload - one of the following:

-- One or more FHIR Resource. 

-- The **[XXXXXXXXXXXXXX-Response-OperationOutcome-1](https://fhir.nhs.uk/STU3/StructureDefinition/XXXXXXXXXXXXXX-Response-OperationOutcome-1)**

-- The **[XXXXXXXXXXXXXX-Document-Bundle-1](https://fhir.nhs.uk/STU3/StructureDefinition/XXXXXXXXXXXXXX-Document-Bundle-1)** containing a composition and one or more FHIR Resources.

-- The **[XXXXXXXXXXXXXX-Payload-Bundle-1](https://fhir.nhs.uk/STU3/StructureDefinition/XXXXXXXXXXXXXX-Payload-Bundle-1)** containing one or more FHIR Resources.


## XXXXXXXXXXXXXX3 Response Bundle ##

XXXXXXXXXXXXXX3 Responses are used to convey information from the receiving system back to the sending system, the messages are clinically agnostic and relay information regarding errors in the received XXXXXXXXXXXXXX3 Messaging Distribution Bundle, such as a failure in validation due to incorrect structure. This Response message also allows systems to report that a message was received without error. When a message is received without error at the infrastructure or technical layer it may subsequently error later at the business layer.

The Bundle consists of the following FHIR Resource Profiles.

- **[XXXXXXXXXXXXXX-Message-Bundle-1](https://fhir.nhs.uk/STU3/StructureDefinition/XXXXXXXXXXXXXX-Message-Bundle-1)** - A NHS Digital Profile of the FHIR Bundle Resource.
- **[XXXXXXXXXXXXXX-MessageHeader-2](https://fhir.nhs.uk/STU3/StructureDefinition/XXXXXXXXXXXXXX-MessageHeader-2)** - A NHS Digital Profile of the FHIR MessageHeader Resource.	
- **[CareConnect-XXXXXXXXXXXXXX-Header-Practitioner-1](https://fhir.nhs.uk/STU3/StructureDefinition/CareConnect-XXXXXXXXXXXXXX-Header-Practitioner-1)** - An XXXXXXXXXXXXXX3 Header Profile of the FHIR Practitioner Resource  
- **[CareConnect-XXXXXXXXXXXXXX-Header-Organization-1](https://fhir.nhs.uk/STU3/StructureDefinition/CareConnect-XXXXXXXXXXXXXX-Header-Organization-1)** - An XXXXXXXXXXXXXX3 Header Profile of the FHIR Organization Resource.
- **[XXXXXXXXXXXXXX-Response-OperationOutcome-1](https://fhir.nhs.uk/STU3/StructureDefinition/XXXXXXXXXXXXXX-Response-OperationOutcome-1)** - A NHS Digital Profile of the OperationOutcome resource

## Extensions Used ##

- **[Extension-XXXXXXXXXXXXXX-MessageHandling-2](https://fhir.nhs.uk/STU3/StructureDefinition/Extension-XXXXXXXXXXXXXX-MessageHandling-2)** - An NHS Digital complex extension to the MessageHeader Resource to support the XXXXXXXXXXXXXX3 message handling key.
















