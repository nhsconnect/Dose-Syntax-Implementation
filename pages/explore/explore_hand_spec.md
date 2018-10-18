---
title: Handling Specification
keywords: workflow
tags: [development,fhir,Profiles]
sidebar: foundation_sidebar
permalink: explore_hand_spec.html
summary: "The ITK3 Handling Specification Usage."
---



## Overview ##

One of the important parts of the ITK3 messaging distribution is the message handling specification. The handling specification consists of a set of "keys" which allow the sender to send information in the ITK3 MessageHeader to the recipient, to indicate how the received message should be processed (handled). 
The handling specification is implemented by adding a complex extension called the ITKMessageHandling Extension to the ITK3 MessageHeader Profile. This extension contains a number of extension elements(keys) which are used to control messaging behaviour, such as when to send a response on receipt of a message.

**Important Note 1: There is no default behaviour for any handling keys unless specified by the Payload specification. For example, the Payload specification may mandate that a particular handling key always be populated or define some default behaviour for a particular key. The Payload specification must always be consulted when implementing handling key behaviour on a sending or receiving system.**

## ITKMessageHandling Extension ##

This complex extension consists of extension elements each with their own extension URLs. Each extension element is a specific handling key with an associated allowable value which is described in the table below. 

**Important Note 2: As this complex extension can be further extended, other keys and values may be used by local agreement.**


<table style="width:100%;max-width: 100%;">
<tr>
<th>Extension URL</th>
<th>Usage</th>
<th>Allowable Values</th>
<th>Definition</th>
</tr>

<tr>
<td rowspan="2">BusAckRequested</td>
<td rowspan="2">Populated when the sender requires a business level response to be returned</td>
<td>true</td>
<td>The business level response has been requested</td>
</tr>
<tr>
<td>false</td>
<td>The business level response has not been requested</td>
</tr>

<tr>
<td rowspan="2">InfAckRequested</td>
<td rowspan="2">Populated when the sender requires an infrastructure level response to be returned</td>
<td>true</td>
<td>The infrastructure response has been requested</td>
</tr>
<tr>
<td>false</td>
<td>The infrastructure level response has not been requested</td>
</tr>


<tr>
<td rowspan="2">RecipientType</td>
<td rowspan="2">Indicates the type of recipient</td>
<td>FA</td>
<td>For Action - the recipient has been sent the Payload for action. The action required by the recipient will be either explicit in the Payload or there will be a business rule defined.</td>  
</tr>
<tr>
<td>FI</td>
<td>For Information - No Action is required by the recipient and they may process the Payload as they see fit.</td>
</tr>

<tr>
<td>MessageDefinition</td>
<td>A reference to the MessageDefinition for the Payload</td>
<td></td>
<td>This MessageDefinition will detail the information to allow correct processing of the Payload. Such as Profiles used, message event type, Profiles used, responses allowed/ required etc...</td>
</tr>

<tr>
<td>SenderReference </td>
<td>A reference that the sender includes and wants returning in any response.</td>
<td>Any String up to 255 Characters  </td>
<td>This extension allows the sender to send a reference string which can be returned to the sender.  The default behaviour is that if a sender reference is received the receiving system should be capable of returning the reference to the sender.</td>
</tr>

<tr>
<td>LocalExtension</td>
<td>A local Handling Specification Key</td>
<td>This can be any type of value</td>
<td>This provides the flexibility of locally defined local Handling Specifications being used.</td>
</tr>
</table>


