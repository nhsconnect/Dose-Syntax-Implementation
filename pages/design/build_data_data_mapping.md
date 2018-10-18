---
title: Data Mapping
keywords: design, build,
tags: [design]
sidebar: foundations_sidebar
permalink: build_data_mapping.html
summary: "Mapping of system data to ITK3 Message and Document resources"
---

{% include important.html content="The ITK3 Messaging Solution data mapping described in this section is not meant to be complete but a starting point to understand some design considerations to consider when implementing ITK3 Messaging Solutions." %}

## What is ITK3 Messaging Solution Data Mapping? ##

Any ITK3 Messaging Solution will require some mapping to the FHIR Resources included in the message Bundle. This section only concerns mapping to the Bundle and message Bundle Profiles, the Payload specification will need to be consulted for Payload mapping information.
The sender of the ITK3 Messaging Distribution will need to either create Bundle and MessageHeader data items or source them from its own data store. When it sources from its own data store then a mapping will need to be done. Some data items such as UUIDs for identifiers for example will always need to be created by a sending system. 

<!--## Existing Systems ##

Pre-existing systems which for example are HL7 V2 based will find lots of guidance on mapping V2 to FHIR Bundles. 

The table below illustrates V2 MSH mapping to FHIR MessageHeader Resource.-->
<!--<table>

<tr>
<th>Element</th>	
<th>V2 segment</th>
<th>Description</th>
</tr>

<tr>
<td>Identifier</td>	
<td>MSH-10</td>	
<td>Message Control ID</td>
</tr>

<tr>
<td>Timestamp</td>	
<td>MSH-7</td>	
<td>Message Date/time</td>
</tr>

<tr>
<td>Event</td>	
<td>MSH-9.2</td>	
<td>observation-provideDerived from the second component of the Message Type field. Its value comes from HL7 table 3</td>
</tr>

<tr>
<td>Source.name</td>	
<td>MSH-3</td>	
<td>Sending application name</td>
</tr>

<tr>
<td>Source.software</td>	
<td>MSH-3</td>	 
<td>Sending application name</td>
</tr>

<tr>
<td>Source.endpoint</td>	
<td>MSH-24</td>	
<td>Sending network address</td>
</tr>

<tr>
<td>Destination.name</td>	
<td>MSH-5</td>	
<td>Receiving application</td>
</tr>

<tr>
<td>Destination.endpoint</td>
<td>MSH-25</td>	
<td>Receiving network address</td>
</tr>

<tr>
<td>data</td>
<td></td>		
<td>References to the ‘root’ Resource of the message.</td>
</tr>

</table>-->

<!--## ITK3 Messaging Solution Mapping ##

Other ITK3 Messaging Solution considerations are shown below. Please click on the parts of the ITK3 Messaging Solution process to continue your ITK3 Messaging Solution creation journey.-->

