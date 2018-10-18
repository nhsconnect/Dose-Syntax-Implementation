---
title: ITK3 Response Codes
keywords: explore Reference
tags: [explore,fhir,error codes]
sidebar: overview_sidebar
permalink: explore_response_structure.html
summary: "Response codes, their associated FHIR elements and value sets."
---



## Overview ##

This section details how the ITK3 response codes are carried in the FHIR MessageHeader and OperationOutcome resources.
 

## Elements and Value Sets Used to Carry Error and Response Information ##

<table style="width:100%;max-width: 100%;">
<tr>
<th>Resource</th>
<th>Element</th>
<th>Value Set</th>
</tr>
<tr>
<td>MessageHeader</td>
<td>response.code</td>
<td><a href="http://hl7.org/fhir/STU3/valueset-response-code.html" target="_blank">ResponseType</a></td>   
</tr>
<tr>
<td>OperationOutcome</td>
<td>issue.severity.code</td>
<td><a href="http://hl7.org/fhir/STU3/valueset-issue-severity.html" target="_blank">IssueSeverity</a></td>
</tr>
<tr>
<td>OperationOutcome</td>
<td>issue.code</td>
<td><a href="http://hl7.org/fhir/STU3/valueset-issue-type.html" target="_blank">IssueType</a></td>
</tr>
<tr>
<td>OperationOutcome</td>
<td>issue.details.coding.code</td>
<td>
<a href="https://fhir.nhs.uk/STU3/ValueSet/ITK-ResponseCodes-1" target="_blank">ITK3 Response Codes</a>
</td>
</tr>
</table>

The MessageHeader carries a code to indicate success or failure. The ITK3 response codes must be mapped to the high-level element codes carried in the severity, code and details elements of the OperationOutcome. The mapping Table below shows how the three levels of codes should be utilised. 

**Note: When a bundle is incorrectly constructed or received so that the value of the acknowledgement flags cannot be determined, receiving systems must default to always return a response wherever possible.** 

## Mapping FHIR Error or Warning Codes to ITK3 Response Codes ##

The following sections show how the ITK3 response codes are used with the FHIR required codes within the ITK3 MessageHeader and OperationOutcome.

## Infrastructure (Technical) Level Response Codes ##

These responses will be returned using the ITK3 Response message if requested by sender, using the appropriate handling key.

**Minimum requirements that MUST be supported by receiving systems.**

<table width="100%">
<tr>
<th>Element</th>
<th>CodeSystem</th>	
<th>Value</th>
<th>Display</th>	
<th>Definition</th>
</tr>
<tr>
<th colspan="5" align="left">MessageHeader</th>
</tr>
<tr>
<td>response.code</td>	
<td>ResponseType</td>
<td>fatal-error</td>
<td>Fatal Error</td>
<td>The message was rejected because of a problem with the content. There is no point in re-sending without change.</td>
</tr>
<tr>
<th colspan="5" align="left">OperationOutcome elements</th>
</tr>
<tr>
<td>issue.severity</td>	
<td>IssueSeverity</td>
<td>fatal</td>
<td>Fatal</td>
<td>The issue caused the action to fail, and no further checking could be performed.</td>
</tr>
<tr>
<td>issue.code</td>	
<td>IssueType</td>
<td>processing</td>
<td>Processing Failure</td>
<td>Processing issues. These are expected to be final e.g. there is no point resubmitting the same content unchanged.</td>
</tr>	
<tr>
<td>issue.details.code</td>	
<td>ITK-Response-Codes</td>
<td>10001</td>
<td>Handling Specification Error</td>
<td>A generic error code which gives a minimum level 
of assurance that systems can share the minimum information 
relating to Handling Specification faults.</td>
</tr>		
</table>


**Requirement that SHOULD be supported by receiving systems.**

<table width="100%">
<tr>
<th>Element</th>
<th>CodeSystem</th>	
<th>Value</th>	
<th>Display</th>
<th>Definition</th>
</tr>
<tr>
<th colspan="5" align="left">MessageHeader</th>
</tr>
<tr>
<td>response.code</td>	
<td>ResponseType</td>
<td>fatal-error</td>
<td>Fatal Error</td>
<td>The message was rejected because of a problem with the content. There is no point in re-sending without change.</td>
</tr>
<tr>
<th colspan="5" align="left">OperationOutcome elements</th>
</tr>
<tr>
<td>issue.severity.code</td>	
<td>IssueSeverity</td>
<td>fatal</td>
<td>Fatal</td>
<td>The issue caused the action to fail, and no further checking could be performed.</td>
</tr>
<tr>
<td>issue.code</td>	
<td>IssueType</td>
<td>processing</td>
<td>Processing Failure</td>
<td>Processing issues. These are expected to be final e.g. there is no point resubmitting the same content unchanged.</td>
</tr>
<tr>
<td colspan="5"><b>A code from the list below which is applicable for the handling specification which has an error. Example usage is for incorrect or unreadable values.</b>
</td>
</tr>	
<tr>
<td>issue.details.code</td>	
<td>ITK-Response-Codes</td>
<td>10002</td>
<td>Infrastructure Level Response Value - Processing Error</td>
<td>The handling specification flag for infrastructure level response is present but cannot be processed. For example may be unreadable or contain an incorrect value</td>
</tr>
<tr>
<td>issue.details.code</td>	
<td>ITK-Response-Codes</td>
<td>10003</td>
<td>Business Level Response Value - Processing Error</td>
<td>The handling specification flag for business level response is present but cannot be processed. For example may be unreadable or contain an incorrect value</td>
</tr>
<tr>
<td>issue.details.code</td>	
<td>ITK-Response-Codes</td>
<td>10004</td>
<td>Message Definition Value – Processing Error</td>
<td>The handling specification value for Message Definition is present but cannot be processed. For example may be unreadable or contain an incorrect value. The handling specification for Message Definition is present but cannot be processed. For example, may be unreadable or contain an incorrect value. This may also be returned when the message type is not supported (known) by the receiving system.</td>
</tr>
<tr>
<td>issue.details.code</td>	
<td>ITK-Response-Codes</td>
<td>10005</td>
<td>Message Definition Version Value – Processing Error</td>
<td>The handling specification for Message Definition is present but the version is not supported by the receiving system.</td>
</tr>

<tr>
<td>issue.details.code</td>	
<td>ITK-Response-Codes</td>
<td>10007</td>
<td>Sender Reference Value - Processing Error</td>
<td>The handling specification string for Sender Reference is present but cannot be processed. For example may be unreadable, contain an incorrect value or the use of Sender Reference is not supported by receiving system</td>
</tr>
<tr>
<td>issue.details.code</td>	
<td>ITK-Response-Codes</td>
<td>10008</td>
<td>Handling Specification Business Rule Error</td>
<td>The Handling Specification usage does not match business rules for included Payload. For example an acknowledgement flag defined as mandatory by the Payload specification is missing.</td>
</tr>
<tr>
<td>issue.details.code</td>	
<td>ITK-Response-Codes</td>
<td>10009</td>
<td>Unreadable message received</td>
<td>A message has been received that is either corrupted or malformed and cannot be read by the receiving system.</td>
</tr>
<tr>
<td>issue.details.code</td>	
<td>ITK-Response-Codes</td>
<td>10010</td>
<td>Recipient Type - Processing Error</td>
<td>The handling specification for Recipient Type is present but cannot be processed. For example, may be unreadable or contain an incorrect value.</td>
</tr>		
</table>

These responses will be returned using the ITK3 Response message if requested by sender, using the appropriate handling key.

**The system SHOULD support the extension values as below**

<table width="100%">
<tr>
<th>Element</th>	
<th>CodeSystem</th>	
<th>Value</th>
<th>Display</th>	
<th>Definition</th>
</tr>
<tr>
<th colspan="5" align="left">MessageHeader</th>
</tr>
<tr>
<td>response.code</td>	
<td>ResponseType</td>	
<td>ok</td>
<td>OK</td>
<td>The message was accepted and processed without error.</td>
</tr>
<tr>	
<th colspan="5" align="left">OperationOutcome</th>
</tr>
<tr>
<td>issue.severity.code</td> 	
<td>IssueSeverity</td>	
<td>information</td>
<td>Information</td>
<td>The issue has no relation to the degree of success of the action.</td>
</tr>
<tr>
<td>issue.code</td>	
<td>IssueType</td>	
<td>informational</td>
<td>Informational Note</td>
<td>A message unrelated to the processing success of the completed operation</td>
</tr>
<tr>	
<td>issue.details.code</td>
<td>ITK-Response-Codes</td>	
<td>20013</td> 
<td>Success</td>
<td>The Message has been processed successfully. An response will be returned stating the fact. However, the message may still fail after further processing and result in another response if the business level response request flag has been sent to “true”.</td>
</tr>
</table>

<table width="100%">
<tr>
<th>Element</th>	
<th>CodeSystem</th>	
<th>Value</th>
<th>Display</th>	
<th>Definition</th>
</tr>
<tr>	
<th colspan="5" align="left">MessageHeader</th>
</tr>
<tr>
<td>response.code</td>	
<td>ResponseType</td>	
<td>fatal-error</td>
<td>Fatal Error</td>
<td>The message was rejected because of a problem with the content. There is no point in re-sending without change.</td>
</tr>	
<tr>	
<th colspan="5" align="left">OperationOutcome</th>
</tr>
<tr>
<td>issue.severity.code</td> 	
<td>IssueSeverity</td>	
<td>fatal</td>
<td>Fatal</td>
<td>The issue caused the action to fail, and no further checking could be performed.</td>
</tr>
<tr>	
<td>issue.code</td>	
<td>IssueType</td>
<td>not-found</td>
<td>Not Found</td>
<td>The reference provided was not found. In a pure RESTful environment, this would be an HTTP 404 error, but this code may be used where the content is not found further into the application architecture.</td>
</tr>
<tr>
<td>issue.details.code</td>
<td>ITK-Response-Codes</td>
<td>200001</td>
<td>Unrecognised Recipient Person</td>
<td>The person referred to as the recipient in the ITK3 MessageHeader is not recognised.</td>
</tr>
</table>

<table width="100%">
<tr>
<th>Element</th>	
<th>CodeSystem</th>	
<th>Value</th>
<th>Display</th>	
<th>Definition</th>
</tr>
<tr>
<th colspan="5" align="left">MessageHeader</th>
</tr>
<tr>
<td>response.code</td>	
<td>ResponseType</td>	
<td>fatal-error</td>
<td>Fatal Error</td>
<td>The message was rejected because of a problem with the content. There is no point in re-sending without change.</td>
</tr>		
<tr>	
<th colspan="5" align="left">OperationOutcome</th>
</tr>
<tr>
<td>issue.severity.code</td> 	
<td>IssueSeverity</td>	
<td>fatal</td>
<td>Fatal</td>
<td>The issue caused the action to fail, and no further checking could be performed.</td>
</tr>
<tr>
<td>issue.code</td>
<td>IssueType</td>	
<td>not-found</td>
<td>Not Found</td>
<td>The reference provided was not found. In a pure RESTful environment, this would be an HTTP 404 error, but this code may be used where the content is not found further into the application architecture.</td>
</tr>
<tr>	
<td>issue.details.code</td>
<td>ITK-Response-Codes</td>		
<td>20002</td>
<td>Unrecognised Recipient Organisation</td>
<td>The organization referred to as the recipient in the ITK3 MessageHeader is not recognised.</td>
</tr>
</table>

<table width="100%">
<tr>
<th>Element</th>	
<th>CodeSystem</th>	
<th>Value</th>
<th>Display</th>	
<th>Definition</th>
</tr>
<tr>
<th colspan="5" align="left">MessageHeader</th>
</tr>
<tr>
<td>response.code</td>	
<td>ResponseType</td>	
<td>fatal-error</td>
<td>Fatal Error</td>
<td>The message was rejected because of a problem with the content. There is no point in re-sending without change.</td>
</tr>		
<tr>	
<th colspan="5" align="left">OperationOutcome</th>
</tr>
<tr>
<td>issue.severity.code</td> 	
<td>IssueSeverity</td>	
<td>fatal</td>
<td>Fatal</td>
<td>The issue caused the action to fail, and no further checking could be performed.</td>
</tr>
<tr>
<td>issue.code</td>
<td>IssueType</td>	
<td>not-found</td>
<td>Not Found</td>
<td>The reference provided was not found. In a pure RESTful environment, this would be an HTTP 404 error, but this code may be used where the content is not found further into the application architecture.</td>
</tr>
<tr>	
<td>issue.details.code</td>
<td>ITK-Response-Codes</td>		
<td>20003</td>
<td>Unrecognised Sender</td>
<td>The organization or person referred to as the sender in the ITK3 MessageHeader is not recognised. Note: This code should not be used where the domain makes use of the “GP look-up” functionality in MESH.</td>
</tr>
</table>


<table width="100%">
<tr>
<th>Element</th>	
<th>CodeSystem</th>	
<th>Value</th>
<th>Display</th>	
<th>Definition</th>
</tr>
<tr>
<th colspan="5" align="left">MessageHeader</th>
</tr>
<tr>
<td>response.code</td>	
<td>ResponseType</td>	
<td>fatal-error</td>
<td>Fatal Error</td>
<td>The message was rejected because of a problem with the content. There is no point in re-sending without change.</td>
</tr>	
<tr>	
<th colspan="5" align="left">OperationOutcome</th>
</tr>
<tr>
<td>issue.severity.code</td> 	
<td>IssueSeverity</td>	
<td>fatal</td>
<td>Fatal</td>
<td>The issue caused the action to fail, and no further checking could be performed.</td>
</tr>
<tr>
<td>issue.code</td>
<td>IssueType</td>	
<td>security</td>
<td>Security</td>
<td>An authentication/authorization/permissions issue of some kind.</td>
</tr>
<tr>	
<td>issue.details.code</td>
<td>ITK-Response-Codes</td>		 
<td>20004</td>
<td>Non Approved file type received as an attachment</td>
<td>The Receiving system has received an attached file whose file type is not approved for the business domain.</td>
</tr>
</table>

<table width="100%">
<tr>
<th>Element</th>	
<th>CodeSystem</th>	
<th>Value</th>
<th>Display</th>	
<th>Definition</th>
</tr>
<tr>
<th colspan="5" align="left">MessageHeader</th>
</tr>
<tr>
<td>response.code</td>	
<td>ResponseType</td>	
<td>fatal-error</td>
<td>Fatal Error</td>
<td>The message was rejected because of a problem with the content. There is no point in re-sending without change.</td>
</tr>	
<tr>	
<th colspan="5" align="left">OperationOutcome</th>
</tr>
<tr>
<td>issue.severity.code</td> 	
<td>IssueSeverity</td>	
<td>fatal</td>
<td>Fatal</td>
<td>The issue caused the action to fail, and no further checking could be performed.</td>
</tr>
<tr>
<td>issue.code</td>
<td>IssueType</td>	
<td>security</td>
<td>Security</td>
<td>An authentication/authorization/permissions issue of some kind.</td>
</tr>
<tr>	
<td>issue.details.code</td>
<td>ITK-Response-Codes</td>		 
<td>20005</td>
<td>Unsupported file type received as an attachment</td>
<td>The Receiving system has received an attached file which it does not support.</td>
</tr>
</table>

<table width="100%">
<tr>
<th>Element</th>	
<th>CodeSystem</th>	
<th>Value</th>
<th>Display</th>	
<th>Definition</th>
</tr>
<tr> 
<th colspan="5" align="left">MessageHeader</th>
</tr>
<tr>
<td>response.code</td>	
<td>ResponseType</td>	
<td>fatal-error</td>
<td>Fatal Error</td>
<td>The message was rejected because of a problem with the content. There is no point in re-sending without change.</td>
</tr>	
<tr>
<th colspan="5" align="left">OperationOutcome</th>
</tr>
<tr>
<td>issue.severity.code</td> 	
<td>IssueSeverity</td>	
<td>fatal</td>
<td>Fatal</td>
<td>The issue caused the action to fail, and no further checking could be performed.</td>
</tr>
<tr>	
<td>issue.code</td>
<td>IssueType</td>
<td>
<ul>
<li><b>invalid</b></li>
<li>structure</li>
<li>required</li>
<li>value</li>
<li>processing</li>
<li>code-invalid</li>
<li>extension</li>
</ul>
</td>
<td></td>
<td>Dependent of the type of content error. invalid is the high level code, lower level codes should be used to further identify the type of content validation error wherever possible. See <a href="http://hl7.org/fhir/codesystem-issue-type.html">IssueType</a> for further information.
</td>
</tr>
<tr>
<td>issue.details.code</td>
<td>ITK-Response-Codes</td>
<td>20006</td> 
<td>ITK3 header validation failure</td>
<td>The ITK3 header resources or elements are not correct or understandable. For example, the ITK3 Bundle or ITK3 MessageHeader.</td>
</tr>
</table>


<table width="100%">
<tr>
<th>Element</th>	
<th>CodeSystem</th>	
<th>Value</th>
<th>Display</th>	
<th>Definition</th>
</tr>
<tr>
<th colspan="5" align="left">MessageHeader</th>
</tr>
<tr>
<td>response.code</td>	
<td>ResponseType</td>	
<td>fatal-error</td>
<td>Fatal Error</td>
<td>The message was rejected because of a problem with the content. There is no point in re-sending without change.</td>
</tr>	
<tr>	
<th colspan="5" align="left">OperationOutcome</th>
</tr>
<tr>
<td>issue.severity.code</td> 	
<td>IssueSeverity</td>	
<td>fatal</td>
<td>Fatal</td>
<td>The issue caused the action to fail, and no further checking could be performed.</td>
</tr>
<tr>
<td>issue.code</td>
<td>IssueType</td>	
<td>duplicate</td>
<td>Duplicate</td>
<td>An attempt was made to create a duplicate record.</td>
</tr>
<tr>
<td>issue.details.code</td>
<td>ITK-Response-Codes</td>		 
<td>20007</td>
<td>Duplicate Message received</td>
<td>Bundle with this message identifier has already been processed.	A Payload with this message identifier has already been received and processed by this recipient.</td>
</tr>
</table>

<table width="100%">
<tr>
<th>Element</th>	
<th>CodeSystem</th>	
<th>Value</th>
<th>Display</th>	
<th>Definition</th>
</tr>
<tr>
<th colspan="5" align="left">MessageHeader</th>
</tr>
<tr>
<td>response.code</td>	
<td>ResponseType</td>	
<td>fatal-error</td>
<td>Fatal Error</td>
<td>The message was rejected because of a problem with the content. There is no point in re-sending without change.</td>
</tr>	
<tr>	
<th colspan="5" align="left">OperationOutcome</th>
</tr>
<tr>
<td>issue.severity.code</td> 	
<td>IssueSeverity</td>	
<td>fatal</td>
<td>Fatal</td>
<td>The issue caused the action to fail, and no further checking could be performed.</td>
</tr>
<tr>
<td>issue.code</td>
<td>IssueType</td>	
<td>duplicate</td>
<td>Duplicate</td>
<td>An attempt was made to create a duplicate record.</td>
</tr>
<tr>
<td>issue.details.code</td>
<td>ITK-Response-Codes</td>		 
<td>20008</td>
<td>Duplicate Document received</td>
<td>Bundle with this document identifier has already been processed. A Payload with this document identifier has already been received and processed by this recipient.</td>
</tr>
</table>

<table width="100%">
<tr>
<th>Element</th>	
<th>CodeSystem</th>	
<th>Value</th>
<th>Display</th>	
<th>Definition</th>
</tr>
<tr> 
<th colspan="5" align="left">MessageHeader</th>
</tr>
<tr>
<td>response.code</td>	
<td>ResponseType</td>	
<td>fatal-error</td>
<td>Fatal Error</td>
<td>The message was rejected because of a problem with the content. There is no point in re-sending without change.</td>
</tr>	
<tr>
<th colspan="5" align="left">OperationOutcome</th>
</tr>
<tr>
<td>issue.severity.code</td> 	
<td>IssueSeverity</td>	
<td>fatal</td>
<td>Fatal</td>
<td>The issue caused the action to fail, and no further checking could be performed.</td>
</tr>
<tr>	
<td>issue.code</td>
<td>IssueType</td>
<td>
<ul>
<li><b>invalid</b></li>
<li>structure</li>
<li>required</li>
<li>value</li>
<li>invariant</li>
<li>processing</li>
<li>not-supported</li>
<li>code-invalid</li>
<li>extension</li>
<li>business-rule</li>
</ul>
</td>
<td></td>
<td>Dependent of the type of content error. invalid is the high level code, lower level codes should be used to further identify the type of content validation error wherever possible. See <a href="http://hl7.org/fhir/codesystem-issue-type.html">IssueType</a> for further information.
</td>
</tr>
<tr>
<td>issue.details.code</td>
<td>ITK-Response-Codes</td>
<td>20009</td> 
<td>Payload validation failure</td>
<td>Content validation has failed</td>
</tr>
</table>


<table width="100%">
<tr>
<th>Element</th>	
<th>CodeSystem</th>	
<th>Value</th>
<th>Display</th>	
<th>Definition</th>
</tr>
<tr>
<th colspan="5" align="left">MessageHeader</th>
</tr>
<tr>
<td>response.code</td>	
<td>ResponseType</td>	
<td>fatal-error</td>
<td>Fatal Error</td>
<td>The message was rejected because of a problem with the content. There is no point in re-sending without change.</td>
</tr>	
<tr>	
<th colspan="5" align="left">OperationOutcome</th>
</tr>
<tr>
<td>issue.severity.code</td> 	
<td>IssueSeverity</td>	
<td>fatal</td>
<td>Fatal</td>
<td>The issue caused the action to fail, and no further checking could be performed.</td>
</tr>
<tr>	
<td>issue.code</td>
<td>IssueType</td>
<td>not-found</td>
<td>Not Found</td>
<td>The reference provided was not found. In a pure RESTful environment, this would be an HTTP 404 error, but this code may be used where the content is not found further into the application architecture.</td>
</tr>
<tr>	
<td>issue.details.code</td>
<td>ITK-Response-Codes</td>		 
<td>20010</td>
<td>Unrecognised Payload Recipient Organisation</td>
<td>The Recipient Organisation identified in the Payload, is not supported by this End Point (Receiving System).</td>
</tr>
</table>

<table width="100%">
<tr>
<th>Element</th>	
<th>CodeSystem</th>	
<th>Value</th>
<th>Display</th>	
<th>Definition</th>
</tr>
<tr>
<th colspan="5" align="left">MessageHeader</th>
</tr>
<tr>
<td>response.code</td>	
<td>ResponseType</td>	
<td>fatal-error</td>
<td>Fatal Error</td>
<td>The message was rejected because of a problem with the content. There is no point in re-sending without change.</td>
</tr>	
<tr>	
<th colspan="5" align="left">OperationOutcome</th>
</tr>
<tr>
<td>issue.severity.code</td> 	
<td>IssueSeverity</td>	
<td>fatal</td>
<td>Fatal</td>
<td>The issue caused the action to fail, and no further checking could be performed.</td>
</tr>
<tr>	
<td>issue.code</td>
<td>IssueType</td>
<td>not-found</td>
<td>Not Found</td>
<td>The reference provided was not found. In a pure RESTful environment, this would be an HTTP 404 error, but this code may be used where the content is not found further into the application architecture.</td>
</tr>
<tr>	
<td>issue.details.code</td>
<td>ITK-Response-Codes</td>		 
<td>20011</td>
<td>Unrecognised Payload Recipient Person</td>
<td>The Recipient person identified in the Payload, is not supported by this End Point (Receiving System).</td>
</tr>
</table>

<table width="100%">
<tr>
<th>Element</th>	
<th>CodeSystem</th>	
<th>Value</th>
<th>Display</th>	
<th>Definition</th>
</tr>
<tr>
<th colspan="5" align="left">MessageHeader</th>
</tr>
<tr>
<td>response.code</td>	
<td>ResponseType</td>	
<td>fatal-error</td>
<td>Fatal Error</td>
<td>The message was rejected because of a problem with the content. There is no point in re-sending without change.</td>
</tr>	
<tr>	
<th colspan="5" align="left">OperationOutcome</th>
</tr>
<tr>
<td>issue.severity.code</td> 	
<td>IssueSeverity</td>	
<td>fatal</td>
<td>Fatal</td>
<td>The issue caused the action to fail, and no further checking could be performed.</td>
</tr>
<tr>
<td>issue.code</td>
<td>IssueType</td>	
<td>security</td>
<td>Security Problem</td>
<td>An authentication/authorization/permissions issue of some kind.</td>
</tr>
<tr>	
<td>issue.details.code</td>
<td>ITK-Response-Codes</td>		 
<td>20012</td> 
<td>Unauthorised Sender</td>
<td>The Receiving system identified in the Payload is configured to reject messages from unauthorised senders. This code should not be used where the domain makes use of the “GP look-up” functionality in MESH.</td>
</tr>
</table>			


## ITK3 Business Level Response Codes ##

These responses will be returned using the ITK3 Response message if requested by sender, using the appropriate handling key.

**Minimum requirements that MUST be supported.**

<table>
<tr>
<th>Element</th>	
<th>CodeSystem</th>	
<th>Value</th>
<th>Display</th>	
<th>Definition</th>
</tr>
<tr>
<th colspan="5" align="left">MessageHeader</th>
</tr>
<tr>
<td>response.code</td>
<td>ResponseType</td>	
<td>ok</td>
<td>OK</td>
<td>The message was accepted and processed without error.</td>
</tr>
<tr>	
<th colspan="5" align="left">OperationOutcome</th> 
</tr>
<tr>
<td>issue.severity.code</td> 	
<td>IssueSeverity</td>
<td>information</td>
<td>Information</td>
<td>The issue has no relation to the degree of success of the action.</td>
</tr>
<tr>	
<td>issue.code</td>	
<td>IssueType</td>	
<td>informational</td>
<td>Informational Note</td>
<td>A message unrelated to the processing success of the completed operation.</td>
</tr>
<tr>	
<td>issue.details.code</td>
<td>ITK-Response-Codes</td>		
<td>30001</td>
<td>Patient known here. (e.g. Patient is registered here)</td>
<td></td>	
</tr>
</table>

<table>
<tr>
<th>Element</th>	
<th>CodeSystem</th>	
<th>Value</th>
<th>Display</th>	
<th>Definition</th>
</tr>
<tr>
<th colspan="5" align="left">MessageHeader</th>
</tr>
<tr>
<td>response.code</td>	
<td>ResponseType</td>	
<td>fatal-error</td>
<td>Fatal Error</td>
<td>The message was rejected because of a problem with the content. There is no point in re-sending without change.</td>
</tr>
<tr>
<th colspan="5" align="left">OperationOutcome</th>
</tr>
<tr>
<td>issue.severity.code</td> 	
<td>IssueSeverity</td>
<td>fatal</td>
<td>Fatal</td>
<td>The issue caused the action to fail, and no further checking could be performed.</td>
</tr>
<tr>	
<td>issue.code</td>	
<td>IssueType</td>	
<td>not-found</td>
<td>Not Found</td>
<td>The reference provided was not found. In a pure RESTful environment, this would be an HTTP 404 error, but this code may be used where the content is not found further into the application architecture.</td>
</tr>
<tr>	
<td>issue.details.code</td>
<td>ITK-Response-Codes</td>
<td>30002</td>	
<td>Patient not known here. (aka ‘patient record not present in system’)</td>
<td></td>
</tr>
</table>

<table>
<tr>
<th>Element</th>	
<th>CodeSystem</th>	
<th>Value</th>
<th>Display</th>	
<th>Definition</th>
</tr>
<tr>
<th colspan="5" align="left">MessageHeader</th>
</tr>
<tr>
<td>response.code</td>	
<td>ResponseType</td>	
<td>fatal-error</td>
<td>Fatal Error</td>
<td>The message was rejected because of a problem with the content. There is no point in re-sending without change.</td>
</tr>
<tr>	
<th colspan="5" align="left">OperationOutcome</th>
</tr>
<tr>
<td>issue.severity.code</td>
<td>IssueSeverity</td>	
<td>fatal</td>
<td>Fatal</td>
<td>The issue caused the action to fail, and no further checking could be performed.</td>
</tr>
<tr>	
<td>issue.code</td>
<td>IssueType</td>
<td>business-rule</td>
<td>Business Rule Violation</td>
<td>The content/operation failed to pass some business rule, and so could not proceed.</td>
</tr>
<tr>	
<td>issue.details.code</td>
<td>ITK-Response-Codes</td>		
<td>30003</td>
<td>Patient no longer at this clinical setting</td>	
<td></td>
</tr>
</table>

