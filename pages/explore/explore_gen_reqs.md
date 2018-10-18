---
title: Document General Requirements
keywords: explore Reference
tags: [explore,fhir]
sidebar: overview_sidebar
permalink: explore_gen_reqs.html
summary: "There are a number of features associated with a document: i) the ability to view documents, ii) the need to acknowledge receipt of a document(s), iii) versioning and compatibility."
---



## Audit Requirements - Clinical ##

The sending / receiving of Clinical Documents forms part of a patient’s record and as such the audit requirements need to be of an equivalent standard.

<table style="width:100%;max-width: 100%;">
<tr>
<th width="20%">ID</th>
<th width="60%">Description</th>
<th width="10%">Sender</th>
<th width="10%">Receiver</th>
</tr>
<tr>
<td bgcolor="#dfefff"><b>FHIR-DOC-01</b></td>
<td>Documents that are sent or received <b>MUST</b> be logged.</td>
<td bgcolor="#dfefff">Y</td>
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
<td bgcolor="#dfefff"><b>FHIR-DOC-02</b></td>
<td>When information from  documents has been retrieved or is processed, the local Audit trail <b>SHOULD</b> include entries for the following events:<br/> 
<ul>
<li>Clinical Information displayed to a user</li>
<li>Clinical Information stored (imported) in the local patient record</li> 
<li>Clinical Information printed.</li>
</ul>
</td>
<td bgcolor="#dfefff">Y</td>
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
<td bgcolor="#dfefff"><b>FHIR-DOC-03</b></td>
<td>The information stored in the audit record <b>SHOULD</b> include:
<ul>
<li>Timestamp</li> 
<li>Patient NHS Number</li> 
<li>User identifier and current role identifier</li> 
<li>Clinical data/document identifier</li>
</ul>
</td>
<td bgcolor="#dfefff">Y</td>
<td bgcolor="#dfefff">Y</td>
</tr>
</table> 

## Document Display ##

<table style="width:100%;max-width: 100%;">
<tr>
<th width="20%">ID</th>
<th width="60%">Description</th>
<th width="10%">Sender</th>
<th width="10%">Receiver</th>
</tr>
<tr>
<td bgcolor="#dfefff"><b>FHIR-DOC-04</b></td>
<td>Sending and Receiving systems <b>MUST</b> provide a function to render the contents of a Document to an authorised user in line with their access rights.</td>
<td bgcolor="#dfefff">Y</td>
<td bgcolor="#dfefff">Y</td>
</tr>
</table> 

## Composition.type and Document Ontology ## 

<table style="width:100%;max-width: 100%;">
<tr>
<th width="20%">ID</th>
<th width="60%">Description</th>
<th width="10%">Sender</th>
<th width="10%">Receiver</th>
</tr>
<tr>
<td bgcolor="#dfefff"><b>FHIR-DOC-05</b></td>
<td>A Sending system <b>MUST</b> support the use of the SNOMED CT as defined in <a href="https://fhir.nhs.uk/STU3/ValueSet/DocumentType-1">ValueSet</a> during the creation of a FHIR Document, which has a NHS Digital profile that specifies SNOMED CT for the “Compostion.type” element within the composition resource.</td>
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
<td bgcolor="#dfefff"><b>FHIR-DOC-06</b></td>
<td>A Sending system <b>MUST</b> support the use of the SNOMED CT as defined in <a href="https://fhir.nhs.uk/STU3/ValueSet/CareSettingType-1">ValueSet</a> during the creation of a FHIR Document, which has a NHS Digital profile that specifies SNOMED CT for the “CareSettingType” extension.</td>
<td bgcolor="#dfefff">Y</td>
<td bgcolor="#dfefff">N</td>
</tr>
</table> 

## General Processing Requirements ##

The system will need to provide several different views of a document depending on the access rights of individual users and what data they wish to view. 
The simplest distinction is to:
1. provide an administrative view of the document which does not display any clinical content (except for document type) and 
2. provide a clinical view which displays all clinical data which may comprise structured coded data and text data.


<table style="width:100%;max-width: 100%;">
<tr>
<th width="20%">ID</th>
<th width="60%">Description</th>
<th width="10%">Sender</th>
<th width="10%">Receiver</th>
</tr>
<tr>
<td bgcolor="#dfefff"><b>FHIR-DOC-09</b></td>
<td><b>Clinical Data</b> - The system <b>MUST</b> regard all the contents of the Composition.section.text element and the documentReference Binary.content as being the clinical data.</td>
<td bgcolor="#dfefff">Y</td>
<td bgcolor="#dfefff">Y</td>
</tr>
</table> 


