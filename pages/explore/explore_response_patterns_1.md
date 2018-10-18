---
title: ITK3 Full Acknowledgement Response Pattern
keywords: explore Reference
tags: [explore,fhir,error codes]
sidebar: overview_sidebar
permalink: explore_response_patterns_1.html
summary: "Full Acknowledgement response pattern used in ITK3."
---



## Full Acknowledgement ## 

This requires both acknowledgement flags in the handling specification extension to be set to "true". This is the most rigorous response framework supported by ITK3. The sender will receive up to two responses and will response to the business level response when two responses are received. There are 3 possible information flows which are defined below.

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

<a href="images/explore/Typical_sequence_without_mesh_3.pdf" target="_blank" style="width: 100%;max-width: 100%;"><b>Click to open in new window</b></a>

<img src="images/explore/Typical_sequence_without_mesh_3.png" style="width: 100%;max-width: 100%;"/>

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
<td>1..1</td>
<td>Infrastructure Level Response</td>
<td><img src="images/explore/arrow.png" style="width: 50%;max-width: 50%;"/></td>
</tr>
<tr>
<td></td>
<td></td>
<td><b>END</b></td>
</tr>
</tbody>
</table>	

**The diagram below shows the response flows and MESH response flows when an issue is detected at the business level.**

<a href="images/explore/Typical_sequence_3.pdf" target="_blank" style="width: 100%;max-width: 100%;"><b>Click to open in new window</b></a>

<img src="images/explore/Typical_sequence_3.png" style="width: 100%;max-width: 100%;"/>


----------


## No Issues Detected ## 


**The diagram below shows the response flows when no issues are detected.**

<a href="images/explore/Typical_sequence_without_mesh_2.pdf" target="_blank" style="width: 100%;max-width: 100%;"><b>Click to open in new window</b></a>

<img src="images/explore/Typical_sequence_without_mesh_2.png" style="width: 100%;max-width: 100%;"/>


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
<td>1..1</td>
<td>Infrastructure Level Response</td>
<td><img src="images/explore/arrow.png" style="width: 50%;max-width: 50%;"/></td>
</tr>
<tr>
<td></td>
<td></td>
<td><b>END</b></td>
</tr>
</tbody>
</table>	

**The diagram below shows the response flows and MESH response flows when no issues are detected.**

<a href="images/explore/Typical_sequence_2.pdf" taret="_blank" style="width: 100%;max-width: 100%;"><b>Click to open in new window</b></a>

<img src="images/explore/Typical_sequence_2.png" style="width: 100%;max-width: 100%;"/>


----------

