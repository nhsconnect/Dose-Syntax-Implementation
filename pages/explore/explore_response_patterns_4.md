---
title: ITK3 Fire and Forget Response Pattern
keywords: explore Reference
tags: [explore,fhir,error codes]
sidebar: overview_sidebar
permalink: explore_response_patterns_4.html
summary: "Fire and forget response pattern used in ITK3."
---



## Fire and Forget Pattern ##
 
This requires that both the acknowledgement flags in the handling specification extension are set to "false" or not to be present. This would normally never return any response, however in some error circumstances where the acknowledgement flags cannot be read a response will be returned as illustrated.  

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
<td>0..1</td>
</tr>
<tr>
<td></td>
<td></td>
<td><b>END</b></td>
</tr>
</tbody>
</table>		

<a href="images/explore/Typical_sequence_1.pdf" target="_blank" style="width: 100%;max-width: 100%;"><b>Click to open in new window</b></a>

<img src="images/explore/Typical_sequence_1.png" style="width: 100%;max-width: 100%;"/>