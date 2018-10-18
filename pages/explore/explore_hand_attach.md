---
title: Handling Attachments
keywords: explore Reference
tags: [explore,fhir]
sidebar: overview_sidebar
permalink: explore_hand_attach.html
summary: "Embedded binary objects (files) can be included in a Document.  When present the system must be able to detect them, and should inform the user of their presence, display them on demand and add them to the patient record if a user elects to do so."
---



<table style="width:100%;max-width: 100%;">
<tr>
<th width="20%">ID</th>
<th width="60%">Description</th>
<th width="10%">Sender</th>
<th width="10%">Receiver</th>
</tr>
<tr>
<td bgcolor="#dfefff"><b>FHIR-HA-01</b></td>
<td>Receiving systems <b>MUST</b> detect the presence of attachments.</td>
<td bgcolor="#dfefff">N</td>
<td bgcolor="#dfefff">Y</td>
</tr>
<tr>
<td>1</td>
<td colspan="3">The system <b>SHOULD</b> inform the user that there are attachments and display them on demand.</td>
</tr>
<tr>
<td>2</td>
<td colspan="3">When present the system <b>MUST</b> be able to detect them, and should inform the user of their presence.</td>
</tr>
</table> 

As FHIR and representations of clinical concepts mature, suppliers will need to consider how to manage backwards compatibility of the data stored in/on the patient record.


