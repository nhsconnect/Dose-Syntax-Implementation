---
title: ITK3 Message Responses
keywords: explore Reference
tags: [explore,fhir]
sidebar: overview_sidebar
permalink: explore_mess_responses.html
summary: "This section defines the response codes to be used by sending and receiving systems, e.g. the response codes include i) an inability to validate a message, ii) clinical level failure, iii) an inability to process a message etc. There will only be a maximum of 2 Message Responses, each containing a maximum of one Response Code."
---



## ITK3 Message Processing ##

The following requirements relate to all Message Response processing.

<table style="width:100%;max-width: 100%;">
<tr>
<th width="20%">ID</th>
<th width="60%">Description</th>
<th width="10%">Sender</th>
<th width="10%">Receiver</th>
</tr>
<tr>
<td bgcolor="#dfefff"><b>FHIR-BA-01</b></td>
<td>All received Message Responses <b>SHOULD</b> be appropriately logged and notified to local administrators.</td>
<td bgcolor="#dfefff">N</td>
<td bgcolor="#dfefff">Y</td>
</tr>
</table> 

<table style="width:100%;max-width: 100%;">
<tr>
<th width="20%">ID</th>
<th width="60%">Description</th>
<th width="10%">Sender</th>
<th width="10%">Receiver</th>
</tr>
<tr>
<td bgcolor="#dfefff"><b>FHIR-BA-02</b></td>
<td>Values or text placed into Message Responses described in the table below <b>MUST NOT</b> contain any patient identifiable information.</td>
<td bgcolor="#dfefff">Y</td>
<td bgcolor="#dfefff">N</td>
</tr>
</table> 

## ITK3 Response Codes ##

There is only one set of response codes used for all ITK3 FHIR Document implementations.

For details of the response code usage see the section on [response codes.](explore_response_codes.html)

## ITK3 Message Responses - Behavioural ## 


In order to provide comprehensive reporting for the Message Header, (note the Handling Specification is an extension to the Message Header), independently of the transport mechanism used (MESH, SOAP other), a response code vocabulary has been developed. 

This section of the requirements only applies to the response codes associated with behavioural extensions created for ITK3 FHIR Messaging.

The approach defines response codes for:
- Mismatch, e.g. payload ID and payload type.
- Bus Response problem, e.g. “server” can’t supply a business response.
- Inf Response problem, e.g. “server” can’t supply an infrastructure response.
- Null and/or missing handling specification components where the message specification indicates they are mandatory.

The response code vocabulary is provided with standardised numbers to uniquely identify any reporting matter in a structured and unambiguous manner.

## The minimum requirement for Handling Specification Processing ##

The minimum requirement for communicating Handling Specification processing matters are:

<table style="width:100%;max-width: 100%;">
<tr>
<th width="20%">ID</th>
<th width="60%">Description</th>
<th width="10%">Sender</th>
<th width="10%">Receiver</th>
</tr>
<tr>
<td bgcolor="#dfefff"><b>RC-HS-01</b></td>
<td>Implementations <b>MUST</b> be able to handle the Response Codes defined as <b>MUST</b> <a href="explore_response_structure.html">here</a></td>
<td bgcolor="#dfefff">Y</td>
<td bgcolor="#dfefff">Y</td>
</tr>
</table> 

## Elaborated Requirements for Managing Handling Specification Components ##

The following requirements aim to enhance reporting and pinpoint areas of Handling Specification component processing:

<table style="width:100%;max-width: 100%;">
<tr>
<th width="20%">ID</th>
<th width="40%">Description</th>
<th width="10%">Client</th>
<th width="10%">Host</th>
</tr>
<tr>
<td bgcolor="#dfefff"><b>RC-HS-02</b></td>
<td>Implementations <b>SHOULD</b> be able to handle the Response Codes defined as <b>SHOULD</b> <a href="explore_response_structure.html">here</a></td>
<td bgcolor="#dfefff">Y</td>
<td bgcolor="#dfefff">Y</td>
</tr>
</table> 

## Report Codes and the OperationOutcome Resource ##

The Handling Specification report codes will be delivered like any other Message Header report – and will therefore use a Message Response with an embedded OperationOutcome Resource.