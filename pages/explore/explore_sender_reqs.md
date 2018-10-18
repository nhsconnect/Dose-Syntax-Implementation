---
title: FHIR Document Sender Requirements 
keywords: explore Reference
tags: [explore,fhir]
sidebar: overview_sidebar
permalink: explore_sender_reqs.html
summary: "A Sender needs to be aware of a number of constraints associated with sending documents, generally considered in two categories, payload constraints and a patients' consent and preferences."
---



## ITK3 Number of Payloads Constraint ##

<table style="width:100%;max-width: 100%;">
<tr>
<th width="20%">ID</th>
<th width="60%">Description</th>
<th width="10%">Sender</th>
<th width="10%">Receiver</th>
</tr>
<tr>
<td bgcolor="#dfefff"><b>FHIR-PAY-01</b></td>
<td>A sending system <b>MUST</b> only send one document per transmission.</td>
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
<td bgcolor="#dfefff"><b>FHIR-PAY-02</b></td>
<td>Attachments <b>MUST</b> be included within the same FHIR Bundle.</td>
<td bgcolor="#dfefff">Y</td>
<td bgcolor="#dfefff">N</td>
</tr>
<tr>
<td>NB</td>
<td colspan="3">There will not be any external references via URL.</td>
</tr>
</table> 

## Demographic and Consent Preconditions ##

It is essential that the identity of the patient is consistently represented by systems that are interacting with one another and that a patients’ preferences are recognised.

## PDS Connected Systems ##

Where sending systems are connected to PDS, full PDS Synchronisation will be carried out prior to any messaging interaction and therefore the locally held serial change number will be up-to-date.  If the sending system is not connected directly to PDS and synchronises with PDS periodically, e.g. using the PDS Batch service, the latest details should be sent. 

<table style="width:100%;max-width: 100%;">
<tr>
<th width="20%">ID</th>
<th width="60%">Description</th>
<th width="10%">Sender</th>
<th width="10%">Receiver</th>
</tr>
<tr>
<td bgcolor="#dfefff"><b>FHIR-PDS-01</b></td>
<td>Sending systems <b>SHOULD</b> synchronise the document with the PDS record.</td>
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
<td bgcolor="#dfefff"><b>FHIR-PDS-02</b></td>
<td>The Sender MUST include additional patient demographics if the patient’s NHS number is not included or the NHS number has not been "verified".</td>
<td bgcolor="#dfefff">Y</td>
<td bgcolor="#dfefff">N</td>
</tr>
<tr>
<td>1.</td>
<td colspan="3">The Sender MUST include additional patient demographics if the patient’s NHS number is not 'verified':
<ul>
<li>First Given Name</li>
<li>Surname</li>
<li>Gender</li>
<li>Date of Birth</li>
<li>Address</li>
<li>Postcode</li>
</ul>
</td>
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
<td bgcolor="#dfefff"><b>FHIR-PDS-03</b></td>
<td>If the Sender is connected to PDS, prior to sending a document, the originating system <b>SHOULD</b> check the PDS ‘flagged’ status of the Patient’s record.</td>
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
<td bgcolor="#dfefff"><b>FHIR-PDS-04</b></td>
<td>Where a record is marked as 'S' (Sensitive) on the PDS, following an appropriate safety evaluation (by the local user organisation as data controller) the Sender <b>MAY</b> include Patient address or contact details in the additional demographic data, these items are (PDS data items):
<ul>
<li>Addresses</li>
<li>Telecom Addresses</li>
<li>Patient Care (All types)</li>
<li>Alternative Contacts</li>
</ul>
</td>
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
<td bgcolor="#dfefff"><b>FHIR-PDS-05</b></td>
<td>Where an NHS number is known to be invalid on PDS (error code '22' upon a PDS Retrieval), the Document <b>SHOULD NOT</b> be sent until the issue has been resolved.</td>
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
<td bgcolor="#dfefff"><b>FHIR-PDS-06</b></td>
<td>Where an NHS number is known to be invalid on the PDS (error code '22' upon a PDS Retrieval), documents <b>MUST NOT</b> contain the patient's NHS number.</td>
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
<td bgcolor="#dfefff"><b>FHIR-PDS-07</b></td>
<td>Where an NHS number is known to be invalid on the PDS (error code '22' upon a PDS Retrieval), if the Document is sent (and this can only be done with ITK3 Message Specifications) other (non- NHS number) demographic details <b>MUST</b> be included.
<ul>
<li>First Given Name</li>
<li>Surname</li>
<li>Gender</li>
<li>Date of Birth</li>
<li>Address</li>
<li>Postcode</li>
</ul>
</td>
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
<td bgcolor="#dfefff"><b>FHIR-PDS-08</b></td>
<td>Where a record is marked as 'B' (formerly meaning 'Business Flagged' prior to 2008-B but now meaning 'Under Data Quality Investigation' from spine release 2008-B onwards) on PDS, documents <b>MUST</b> still be sent.</td>
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
<td bgcolor="#dfefff"><b>FHIR-PDS-09</b></td>
<td>Where a Patient dissents from sharing their detailed care records and the document is a routine clinical communication, the originating system <b>SHOULD</b> still send documents for that Patient to the Patient’s GP Practice.</td>
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
<td bgcolor="#dfefff"><b>FHIR-PDS-10</b></td>
<td>The verification status code (an NHS Extension) <b>MUST</b> be populated in the Patient Profile.</td>
<td bgcolor="#dfefff">Y</td>
<td bgcolor="#dfefff">N</td>
</tr>
</table> 

## Systems not connected to PDS  ##

If the system is not connected to PDS at all then sufficient identifying attributes should be sent to enable a receiving system to match them to an existing record (if applicable) or create a new record (if applicable). Where possible the NHS number must be indicated.

<table style="width:100%;max-width: 100%;">
<tr>
<th width="20%">ID</th>
<th width="60%">Description</th>
<th width="10%">Sender</th>
<th width="10%">Receiver</th>
</tr>
<tr>
<td bgcolor="#dfefff"><b>FHIR-DEM-01</b></td>
<td>If the patient’s NHS number is not known the system <b>MUST</b> include an alternative local patient identifier in the text section.</td>
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
<td bgcolor="#dfefff"><b>FHIR-DEM-02</b></td>
<td>If the patient’s NHS number is not known the system <b>MUST</b> include additional demographics.</td>
<td bgcolor="#dfefff">Y</td>
<td bgcolor="#dfefff">N</td>
</tr>
<tr>
<td>1</td>
<td colspan="3">When a system ONLY sends a local patient identifier it <b>MUST</b> as a minimum also include: 
<ul>
<li>First Given Name</li>
<li>Surname</li>
<li>Gender</li>
<li>Date of Birth</li>
<li>Address</li>
<li>Postcode</li>
</ul>
</td>
</tr>
</table>  

## ITK3 Documents - Text Section Exclusions ##

<table style="width:100%;max-width: 100%;">
<tr>
<th width="20%">ID</th>
<th width="60%">Description</th>
<th width="10%">Sender</th>
<th width="10%">Receiver</th>
</tr>
<tr>
<td bgcolor="#dfefff"><b>FHIR-TXT-01</b></td>
<td>To avoid unnecessary and potentially disruptive duplication when a FHIR document is rendered, certain information <b>SHOULD NOT</b> be included in the text section of a FHIR document but <b>SHOULD</b> be carried in the FHIR resource specified within the document profile. 
<br/>
Below are examples of the type of information covered by this requirement.</td>
<td bgcolor="#dfefff">Y</td>
<td bgcolor="#dfefff">N</td>
</tr>
<tr>
<td></td>
<td>
<ul>
<li>Document timestamp</li>
<li>Author of document</li>
<li>Recipient</li>
<li>Custodian</li>
<li>Encounter information</li>
<li>Care setting type</li>
</ul>
</td>
<td></td>
<td></td>
</tr>
</table> 

## ITK3 FHIR Coded Entries ##

Where a Sending System has the functionality to support coded clinical entries for medications, FHIR documents created by that system should include coded entries where possible.

<table style="width:100%;max-width: 100%;">
<tr>
<th width="20%">ID</th>
<th width="60%">Description</th>
<th width="10%">Sender</th>
<th width="10%">Receiver</th>
</tr>
<tr>
<td bgcolor="#dfefff"><b>FHIR-CE-01</b></td>
<td>Where an originating system has the functionality to support coded clinical entries for <b>medications</b>, documents created by that system <b>MUST</b> include coded entries.</td>
<td bgcolor="#dfefff">Y</td>
<td bgcolor="#dfefff">N</td>
</tr>
<tr>
<td>1</td>
<td colspan="3">If an originating system has the functionality to support SNOMED CT coded entries for medications, then documents generated by that system and which contain medication information <b>MUST</b> include SNOMED CT coded medication entries of dm+d.</td>
</tr>
<tr>
<td>2</td>
<td colspan="3">Where an originating system does not have functionality to support coded clinical entries for medications, then documents created by that system <b>MUST</b> contain medication information as text</td>
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
<td bgcolor="#dfefff"><b>FHIR-CE-02</b></td>
<td>Where an originating system has the functionality to support coded clinical entries for <b>allergies and drug sensitivities</b>, documents created by that system <b>SHOULD</b> include coded entries where possible.</td>
<td bgcolor="#dfefff">Y</td>
<td bgcolor="#dfefff">N</td>
</tr>
<tr>
<td>1</td>
<td colspan="3">If an originating system has the functionality to support SNOMED CT coded entries for allergies and drug sensitivities, then documents generated by that system and which contain allergies and drug sensitivities information <b>MUST</b> include SNOMED CT coded allergies and drug sensitivities entries.</td>
</tr>
<tr>
<td>2</td>
<td colspan="3">Where an originating system does not have functionality to support coded clinical entries for allergies and drug sensitivities, then FHIR documents created by that system <b>MUST</b> contain allergies and drug sensitivities information as text.</td>
</tr>
</table> 

## Multiple Recipients ##

<table style="width:100%;max-width: 100%;">
<tr>
<th width="20%">ID</th>
<th width="60%">Description</th>
<th width="10%">Sender</th>
<th width="10%">Receiver</th>
</tr>
<tr>
<td bgcolor="#dfefff"><b>FHIR-MR-01</b></td>
<td>The contents of a document <b>MUST</b> be the same for every recipient.</td>
<td bgcolor="#dfefff">Y</td>
<td bgcolor="#dfefff">N</td>
</tr>
<tr>
<td>1</td>
<td colspan="3">Having the same document for every recipient <b>MUST</b> be achieved by addressing an identical clinical payload (document) to each of the recipients.</td>
</tr>
<tr>
<td>2</td>
<td colspan="3">The payload <b>MUST</b> be syntactically and semantically identical regardless of the number of receivers.</td>
</tr>
</table>    

## UUIDs and Version numbers ## 

In generating documents, the sender <b>Must</b> meet the following requirement.

<table style="width:100%;max-width: 100%;">
<tr>
<th width="20%">ID</th>
<th width="60%">Description</th>
<th width="10%">Sender</th>
<th width="10%">Receiver</th>
</tr>
<tr>
<td bgcolor="#dfefff"><b>FHIR-VER-01</b></td>
<td>Systems creating new Documents <b>MUST</b> generate a unique document identifier.</td>
<td bgcolor="#dfefff">Y</td>
<td bgcolor="#dfefff">N</td>
</tr>
</table>  

## FHIR - General Sender Requirements ##

This section defines the general sender requirements, including the FHIR mandated elements that need to be populated.
 
<table style="width:100%;max-width: 100%;">
<tr>
<th width="20%">ID</th>
<th width="60%">Description</th>
<th width="10%">Sender</th>
<th width="10%">Receiver</th>
</tr>
<tr>
<td bgcolor="#dfefff"><b>FHIR-SR-01</b></td>
<td>FHIR Mandate - Where it is indicated that a document recipient <u>is required to act</u> on the contents of a FHIR document, the originating system <b>MUST</b> set:<br/>
MessageHeader.extension(ITKMessageHandling) – RecipientType = "FA"(For Action).
</td>
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
<td bgcolor="#dfefff"><b>FHIR-SR-02</b></td>
<td>FHIR Mandate - Where it is indicated that a document recipient <u>is not required to act</u> on the contents of a FHIR document, the originating system <b>MUST</b> set:<br/>
MessageHeader.extension(ITKMessageHandling) - RecipientType = "FI" (For Information).
</td>
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
<td bgcolor="#dfefff"><b>FHIR-SR-03</b></td>
<td>FHIR Mandate – To indicate the Sender Reference the originating system <b>MUST</b> set:<br/>
MessageHeader.extension(ITKMessageHandling) – SenderReference = &lt;up to any 255 character string&gt; (Default Value= None)
</td>
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


</table> 

<table style="width:100%;max-width: 100%;">
<tr>
<th width="20%">ID</th>
<th width="60%">Description</th>
<th width="10%">Sender</th>
<th width="10%">Receiver</th>
</tr>

<tr>
<td bgcolor="#dfefff"><b>FHIR-SR-05</b></td>
<td>FHIR Mandate – To indicate the Message Definition the originating system <b>MUST</b> set:<br/>
MessageHeader.extension(ITKMessageHandling) – MessageDefinition = &lt;a URI&gt;</td>
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
<td bgcolor="#dfefff"><b>FHIR-SR-06</b></td>
<td>NHS Digital have provided a Local Extension key, that can be populated and defined to suit local requirements: -, the originating system <b>MUST</b> set: <br/> 
MessageHeader.extension(ITKMessageHandling) – Local Extension = &lt;is of any type&gt;. (Default = String, Value= None)
</td>
<td bgcolor="#dfefff">Y</td>
<td bgcolor="#dfefff">N</td>
</tr>
<tr>
<td><b>NB</b></td>
<td colspan="3">The default value of None means local extensions are not being used.</td>
</tr>
</table> 