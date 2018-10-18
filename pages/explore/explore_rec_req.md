---
title: FHIR Receiver Requirements
keywords: explore Reference
tags: [explore,fhir]
sidebar: overview_sidebar
permalink: explore_rec_req.html
summary: "Architectural Layers ensures that fault handling is handled in line with the layer that the fault occurs.
This means that fault processing can halt and report at the appropriate point of “fault/error”, all errors are regarded as fatal and there will only be a maximum of 2 Message Responses, each containing a maximum of one Response Code.
"
---



## Recipient – Header Validation ##

Receiving systems must apply basic header validation to check that the system is the intended recipient.

<table style="width:100%;max-width: 100%;">
<tr>
<th width="20%">ID</th>
<th width="60%">Description</th>
<th width="10%">Sender</th>
<th width="10%">Receiver</th>
</tr>
<tr>
<td bgcolor="#dfefff"><b>FHIR-RR-01</b></td>
<td>The system <b>MUST</b> validate 'recipient' information contained in the Document 'header' information to check that the identified recipient organisation, or person is supported by the system.</td>
<td bgcolor="#dfefff">N</td>
<td bgcolor="#dfefff">Y</td>
</tr>
<tr>
<td>1</td>
<td colspan="3">The system <b>MUST</b> where requested either :<br/>
<ul>
<li>Reject the message with an appropriate <a href="explore_response_structure.html#itk3-business-level-response-codes">response code.</a></li>
<li>Accept the message and pass it through to the clinical application for processing</li>
</ul>
</td>
</tr>
<tr>
<td>NB</td>
<td colspan="3">The sending of responses is controlled using the appropriate flag in the ITK3 MessageHeader- ITKMessageHandling extension on the incoming FHIR document bundle.</td>
</tr>
</table> 


## Recipient – Patient Validation ##

<table style="width:100%;max-width: 100%;">
<tr>
<th width="20%">ID</th>
<th width="60%">Description</th>
<th width="10%">Sender</th>
<th width="10%">Receiver</th>
</tr>
<tr>
<td bgcolor="#dfefff"><b>FHIR-RR-02</b></td>
<td>Upon receipt of a FHIR document for a patient whose identifiers are not found in the receiving system, the system <b>MUST</b> send a response back to the sender with an appropriate response code.</td>
<td bgcolor="#dfefff">N</td>
<td bgcolor="#dfefff">Y</td>
</tr>
<tr>
<td>NB</td>
<td colspan="3">The sending of responses is controlled using the appropriate flag in the ITK3 MessageHeader- ITKMessageHandling extension on the incoming FHIR document bundle.</td>
</tr>
</table> 


## Coded Clinical Content ##

These are common, agreed structures for clinical data representation, and are the cornerstone of clinical data interoperability.

<table style="width:100%;max-width: 100%;">
<tr>
<th width="20%">ID</th>
<th width="60%">Description</th>
<th width="10%">Sender</th>
<th width="10%">Receiver</th>
</tr>
<tr>
<td bgcolor="#dfefff"><b>FHIR-RR-03</b></td>
<td>A system <b>SHOULD</b> process coded entries as defined in the Message Specification.</td>
<td bgcolor="#dfefff">N</td>
<td bgcolor="#dfefff">Y</td>
</tr>
</table> 


## Patient Transfer Specific Requirements ##

<table style="width:100%;max-width: 100%;">
<tr>
<th width="20%">ID</th>
<th width="60%">Description</th>
<th width="10%">Sender</th>
<th width="10%">Receiver</th>
</tr>
<tr>
<td bgcolor="#dfefff"><b>FHIR-RR-04</b></td>
<td>If the patient has been moved from this care setting (e.g. they have been 'deducted' or a GP2GP record transfer has recently taken place), the system <b>SHOULD</b> following clinical review of the document, notify the new care setting.</td>
<td bgcolor="#dfefff">N</td>
<td bgcolor="#dfefff">Y</td>
</tr>
</table> 


## Duplicate Documents ##

The receiving system must be able to check for duplicates.

<table style="width:100%;max-width: 100%;">
<tr>
<th width="20%">ID</th>
<th width="60%">Description</th>
<th width="10%">Sender</th>
<th width="10%">Receiver</th>
</tr>
<tr>
<td bgcolor="#dfefff"><b>FHIR-RR-05</b></td>
<td>The system <b>SHOULD</b> perform 'duplicate document' checks on all received messages</td>
<td bgcolor="#dfefff">N</td>
<td bgcolor="#dfefff">Y</td>
</tr>
<tr>
<td>1</td>
<td colspan="3">If the document ID is a duplicate the system <b>MUST</b>:<br/>
<ul>
<li>NOT forward the document to the host clinical application</li>
<li>Log the fault in the system or application logs.</li>
</ul>
</td>
</tr>
<tr>
<td>2</td>
<td colspan="3">If a duplicate is found, the system <b>MUST</b> return a response with an appropriate code indicating 'Duplicate Document ID received'.</td>
</tr>
<tr>
<td>3</td>
<td colspan="3">The system <b>MUST</b> flag the item in the audit log indicating that it is a duplicate.</td>
</tr>
</table> 



