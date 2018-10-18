---
title: ITK3 Technical and Business Response Pattern
keywords: explore Reference
tags: [explore,fhir,error codes]
sidebar: overview_sidebar
permalink: explore_response_patterns_2.html
summary: "Technical and Business response pattern used in ITK3."
---




## Technical and Business Response Pattern ## 

This requires both acknowledgement flags in the handling specification extension to be set to "true". This is similar to the Full Acknowledgement Response but original sender does not respond to any received responses. The sender will receive up to two responses and NOT response to any.

**Note: The diagrams assume that all response messages are valid and can be processed by receiving system.**

## Issue is Detected at Technical Level ##

**The diagram below shows the response flows when an issue is detected at the technical level.**

<a href="images/explore/Typical_sequence_without_mesh_1.pdf" target="_blank" style="width: 100%;max-width: 100%;"><b>Click to open in new window</b></a>

<img src="images/explore/Typical_sequence_without_mesh_1.png" style="width: 100%;max-width: 100%;"/>

<table style="width:100%;max-width: 100%;">
	<thead>
		<tr>
			<th width="15%">Sender</th>
			<th width="35%">Flow</th>
			<th width="5%">Receiver</th>
		</tr>
	</thead>
	<tbody>
<tr>
<td><b>START</b></td>
<td></td>
<td></td>
</tr>
<tr>
<td>1..1</td>
<td>Send Payload</td>
<td><img src="images/explore/arrow.png" style="width: 50%;max-width: 50%;"/></td>
</tr>
<tr>
<td><img src="images/explore/arrow1.png" style="width: 25%;max-width: 50%;"/></td>
<td>Infrastructure Level Response</td>
<td>1..1</td>
</tr>
<tr>
<td></td>
<td></td>
<td><b>END</b></td>
</tr>
</tbody>
</table>		

**The diagram below shows the response flows and MESH response flows when an issue is detected at the technical level.**

<a href="images/explore/Typical_sequence_1.pdf" target="_blank" style="width: 100%;max-width: 100%;"><b>Click to open in new window</b></a>

<img src="images/explore/Typical_sequence_1.png" style="width: 100%;max-width: 100%;"/>


----------


## Issue is Detected at Business Level ##

**The diagram below shows the response flows when an issue is detected at the business level.**

<a href="images/explore/Typical_sequence_without_mesh_4.pdf" target="_blank" style="width: 100%;max-width: 100%;"><b>Click to open in new window</b></a>

<img src="images/explore/Typical_sequence_without_mesh_4.png" style="width: 100%;max-width: 100%;"/>

<table style="width:100%;max-width: 100%;">
	<thead>
		<tr>
			<th width="15%">Sender</th>
			<th width="35%">Flow</th>
			<th width="5%">Receiver</th>
		</tr>
	</thead>
	<tbody>
<tr>
<td><b>START</b></td>
<td></td>
<td></td>
</tr>
<tr>
<td>1..1</td>
<td>Send Payload</td>
<td><img src="images/explore/arrow.png" style="width: 50%;max-width: 50%;"/></td>
</tr>
<tr>
<td><img src="images/explore/arrow1.png" style="width: 25%;max-width: 50%;"/></td>
<td>Infrastructure Level Response</td>
<td>1..1</td>
</tr>
<tr>
<td><img src="images/explore/arrow1.png" style="width: 25%;max-width: 50%;"/></td>
<td>Business Level Response</td>
<td>1..1</td>
</tr>
<tr>
<td></td>
<td></td>
<td><b>END</b></td>
</tr>
</tbody>
</table>	

**The diagram below shows the response flows and MESH response flows when an issue is detected at the business level.**

<a href="images/explore/Typical_sequence_4.pdf" target="_blank" style="width: 100%;max-width: 100%;"><b>Click to open in new window</b></a>

<img src="images/explore/Typical_sequence_4.png" style="width: 100%;max-width: 100%;"/>


----------


## No Issues Detected ## 


**The diagram below shows the response flows when no issues are detected.**

<a href="images/explore/Typical_sequence_without_mesh_5.pdf" target="_blank" style="width: 100%;max-width: 100%;"><b>Click to open in new window</b></a>

<img src="images/explore/Typical_sequence_without_mesh_5.png" style="width: 100%;max-width: 100%;"/>


<table style="width:100%;max-width: 100%;">
	<thead>
		<tr>
			<th width="15%">Sender</th>
			<th width="35%">Flow</th>
			<th width="5%">Receiver</th>
		</tr>
	</thead>
	<tbody>
<tr>
<td><b>START</b></td>
<td></td>
<td></td>
</tr>
<tr>
<td>1..1</td>
<td>Send Payload</td>
<td><img src="images/explore/arrow.png" style="width: 50%;max-width: 50%;"/></td>
</tr>
<tr>
<td><img src="images/explore/arrow1.png" style="width: 25%;max-width: 50%;"/></td>
<td>Infrastructure Level Response</td>
<td>1..1</td>
</tr>
<tr>
<td><img src="images/explore/arrow1.png" style="width: 25%;max-width: 50%;"/></td>
<td>Business Level Response</td>
<td>1..1</td>
</tr>
<tr>
<td></td>
<td></td>
<td><b>END</b></td>
</tr>
</tbody>
</table>	

**The diagram below shows the response flows and MESH response flows when no issues are detected.**

<a href="images/explore/Typical_sequence_5.pdf" taret="_blank" style="width: 100%;max-width: 100%;"><b>Click to open in new window</b></a>

<img src="images/explore/Typical_sequence_5.png" style="width: 100%;max-width: 100%;"/>


----------

