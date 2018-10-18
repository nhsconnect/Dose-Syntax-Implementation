---
title: Conformance
keywords: explore Reference
tags: [explore,fhir]
sidebar: overview_sidebar
permalink: explore_con_and_acc.html
summary: "NHS Digital can provide conformance certification for sending and receiving systems processing FHIR Documents."
---



## Verification and Validation ##

Sending and receiving systems are required to validate documents conform to their Message Specifications. 

<table style="width:100%;max-width: 100%;">
<tr>
<th width="20%">ID</th>
<th width="60%">Description</th>
<th width="10%">Sender</th>
<th width="10%">Receiver</th>
</tr>
<tr>
<td bgcolor="#dfefff"><b>FHIR-V&V-01</b></td>
<td>Sending and Receiving systems <b>MUST</b> provide a means to assure the validity of the FHIR document.</td>
<td bgcolor="#dfefff">Y</td>
<td bgcolor="#dfefff">Y</td>
</tr>
<tr>
<td>1.</td>
<td colspan="3">If this validation fails, the system <b>MUST</b> log the fault in the application or system logs as appropriate.</td>
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
<td bgcolor="#dfefff"><b>FHIR-V&V-02</b></td>
<td>Sending systems <b>SHOULD</b> provide facilities (e.g. a ‘verification’ step) to ensure the content of the FHIR Document is checked/verified by the document author, or other approved user, prior to the sending of the Document.</td>
<td bgcolor="#dfefff">Y</td>
<td bgcolor="#dfefff">N</td>
</tr>
</table> 

## Use of Coded Clinical Content ##

Coded entries are the mechanism used to exchange structured clinical information between systems. These are common, agreed structures for clinical data representation, and are the cornerstone of clinical data interoperability. A Coded entry is one or more Resources that are referenced from the FHIR element <b>Composition.section.entry.Reference</b>.

<table style="width:100%;max-width: 100%;">
<tr>
<th width="20%">ID</th>
<th width="60%">Description</th>
<th width="10%">Sender</th>
<th width="10%">Receiver</th>
</tr>
<tr>
<td bgcolor="#dfefff"><b>FHIR-CC-01</b></td>
<td>If a local system is not able to construct a coded entry to represent coded clinical information in a document, then the Payload Implementation Guidance will define the processing rules.</td>
<td bgcolor="#dfefff">Y</td>
<td bgcolor="#dfefff">N</td>
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
<td bgcolor="#dfefff"><b>FHIR-CC-02</b></td>
<td>Coded clinical content within documents <b>MUST</b> validate against the Payload Implementation Guidance and specified profiles.</td>
<td bgcolor="#dfefff">Y</td>
<td bgcolor="#dfefff">N</td>
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
<td bgcolor="#dfefff"><b>FHIR-CC-03</b></td>
<td>All clinical content within coded entries of a document <b>MUST</b> also be represented within the text sections of that document.</td>
<td bgcolor="#dfefff">Y</td>
<td bgcolor="#dfefff">N</td>
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
<td bgcolor="#dfefff"><b>FHIR-CC-04</b></td>
<td>References to coded entries within a document <b>MUST</b> be to resources within the same document.</td>
<td bgcolor="#dfefff">Y</td>
<td bgcolor="#dfefff">N</td>
</tr>
</table> 