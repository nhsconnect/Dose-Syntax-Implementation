---
title: Message Definitions Overview
keywords:  messaging
tags: [fhir,messaging]
sidebar: foundations_sidebar
permalink: explore_defs_overview.html
summary: "Overview of the Message Definitions section"
---



## Use of Message Definitions ##

For ITK3 message flows, the use of message definitions to replace interactions has been implemented. This section describes the use of message definitions and their proposed usage to help with versioning and managing changes for consumers.

The FHIR MessageDefinition Resource defines the characteristics of a message that can be shared between systems, including the type of event that initiates the message, the content to be transmitted and what response(s), if any, are permitted. NHS Digital has Profiled this Resource for ITK3 messaging over MESH. The Profile contains a complex extension that contains sub-extensions to allow all the components (known as FHIR assets) within the Message Bundle to be defined along with the version of each asset. The FHIR assets are categorised using a [FHIR value set](http://hl7.org/fhir/ValueSet/all-types). The current asset types that are used in the message definition are:

- Profiles (StructureDefinitions)
- Extensions
- ValueSets
- CodeSystems
- ConceptMaps

## How the Message Definition is Used ##

The message definition has two functions.

- The first is to allow comparisons between versions of a message definition for configuration/development  purposes.
- The second is to include a reference to the message definition within the ITK3 Message Header in a message instance to identify the message definition the the message instance conforms to. 
 
## Message Definition Patterns ## 
            
There are two "patterns" which utilise message definitions: 

1. For ITK3 messages which only have one Bundle, such as the Response message, the MessageDefinition carried in the handling specification is the MessageDefinition for that bundle. 
2. For ITK3 Payloads which have two Bundles, the MessageDefinition carried in the handling specification is the MessageDefinition for the Payload (second Bundle).

This diagram illustrates the two patterns.

<img src="images/explore/message_def.png" style="width:80%;max-width: 80%;">  


## Message Definition Instances ##

For each message or document type there will be a message definition instance provided. These instances will conform to the [ITK-MessageDefinition-1](https://fhir.nhs.uk/STU3/StructureDefinition/ITK-MessageDefinition-1) Profile. For each message or document these MessageDefinitions instances contain information about: 

- The Profiles (StructureDefinitions) used.
- The extensions used.
- The ValueSets used.
- The CodeSystems used.
- The ConceptMaps used.
- The version of the above assets to highlight changes between versions of a message or document.
- The responses are allowed to be returned to the sender for the message or document.


**Note 1:** When using MESH, additional MESH responses will be available.  Any responses defined in the message definitions do not include MESH responses.

## Versioning of Message Definitions ##

The message definition version reflects changes to the FHIR assets used by the message. If any of the assets referred to in the message definition change and are up-versioned then the message definition will be up-versioned accordingly. The message definition will be a Major, Minor or Patch type of up-version dependent on how the change to the asset or assets has been defined (Major, Minor or Patch). 

The long-term goal would ideally be to use message definitions for ascertaining which messages an endpoint or system supports but to do that correctly would require capability statements to be defined by all receiving systems and a system for managing the capability statements to be available. 

Therefore, currently for implementations using ITK3, the message definition information should be sent in the ITK3 MessageHeader handling specification extension. This allows a receiving system to determine whether it can process the received message based on the version of the message definition and the versions of bundled assets without having to parse the actual instance. The receiver then can decide whether to accept or reject the message and if rejecting return an appropriate response code. 

See the section on [response codes](explore_response_codes.html) for further details.




