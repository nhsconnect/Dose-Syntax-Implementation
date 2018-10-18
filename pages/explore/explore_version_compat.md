---
title: Message Header and Structure Definition - Versioning and Compatibility
keywords: explore Reference
tags: [explore,fhir]
sidebar: overview_sidebar
permalink: explore_version_compat.html
summary: "This section defines how versions at both MessageHeader level and StructureDefinition are implemented in ITK3."
---



## MessageDefinition versioning ##

A MessageDefinition will have a version number. This will be "up versioned" when there is a change of functionality which is deemed to be a breaking change.

## StructureDefinition versioning ##

For ITK3 the StructureDefinition is the XML representation of a FHIR resource that may be profiled within NHS Digital specifications. This section gives an overview of versioning of StructureDefinitions. These have a major version number in the name for example:
Composition-1
This will be "up versioned" when there is a change of functionality which is deemed to be a breaking change. This version number is carried in the XML instance within the meta.profile element as below:

&lt;meta&gt; <br/>
&lt;profile value="https://fhir.nhs.uk/STU3/StructureDefinition/xxxxxxxxxxxxxxxx-1" /&gt; <br/>
&lt;/meta>

The structure definition also has a version element internally, which can also be up versioned to indicate a minor change. This is not reflected in the XML instance.

For further details of versioning of FHIR structure definitions see the [NHS Digital FHIR Policy](https://developer.nhs.uk/apis/fhir-policy/) 

## Backward and Forward Compatibility ##

All FHIR profiles are derived from FHIR resources defined in a FHIR standard therefore the type of information that can be exchanged and its structure is defined within the standard. FHIR does provide schemas for these resources but they are very generic and have very little use for conformance purposes. The FHIR standard will evolve and mature over time and forward and backwards compatibility cannot be guaranteed. Implementers <b>SHOULD</b> be aware of this but forward and backward compatibility will need to be managed on a project-by-project basis at the business level.   

## Compatibility ##

The FHIR standard is still evolving and is not at the Normative stage and therefore it should be noted that forward compatibility cannot be guaranteed.



