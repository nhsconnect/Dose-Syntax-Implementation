---
title: Worked Examples
keywords:  messaging
tags: [overview]
sidebar: foundations_sidebar
permalink: dosage-examples-overview.html
summary: "Worked Examples"
---


{% include important.html content="Examples are not complete with respect to all mandatory or required data for a CareConnect implementation but instead highlight the variety of use of the FHIR Dosage structure" %}

Examples are split into three categories;
  * Simple
  * Intermediate
  * Complex
  
For simplicity, all examples are modelled with medication information within a referenced contained resource, opposed to referencing a medication resource defined elsewhere within a Bundle.

<style>
th.rotate {
  /* Something you can count on */
  height: 160px;
  white-space: nowrap;
}
th.rotate > div {
  transform: 
    /* Magic Numbers */
    translate(25px, 51px)
    /* 45 is really 360 - 45 */
    rotate(315deg);
  width: 30px;
}
th.rotate > div > span {
  border-bottom: 1px solid #ccc;
  padding: 5px 0px;
}
th.normal {
	vertical-align:bottom;
	text-align:center;
	border-bottom: 1px solid #ccc; 
	padding: 5px 5px;
}
td.tick {
	border-radius: 100%;
	background-color: #AAF;
}
tr.examples {
	text-align:right;
	vertical-align:bottom;
	bbackground-color: #eee;
}
</style>
<table class="examplesTable">
<th class="normal"><div><span>Example</span></div></th>
<th class="rotate"><div><span>sequence</span></div></th>
<th class="rotate"><div><span>method</span></div></th>
<th class="rotate"><div><span>doseQuantity</span></div></th>
<th class="rotate"><div><span>doseRange</span></div></th>
<th class="rotate"><div><span>rateRatio</span></div></th>
<th class="rotate"><div><span>rateRange</span></div></th>
<th class="rotate"><div><span>rateQuantity</span></div></th>
<th class="rotate"><div><span>duration</span></div></th>
<th class="rotate"><div><span>durationMax</span></div></th>
<th class="rotate"><div><span>frequency</span></div></th>
<th class="rotate"><div><span>frequencyMax</span></div></th>
<th class="rotate"><div><span>period</span></div></th>
<th class="rotate"><div><span>periodMax</span></div></th>
<th class="rotate"><div><span>offset</span></div></th>
<th class="rotate"><div><span>when</span></div></th>
<th class="rotate"><div><span>dayOfWeek</span></div></th>
<th class="rotate"><div><span>timeOfDay</span></div></th>
<th class="rotate"><div><span>route</span></div></th>
<th class="rotate"><div><span>site</span></div></th>
<th class="rotate"><div><span>asNeededCodeableConcept</span></div></th>
<th class="rotate"><div><span>asNeeded</span></div></th>
<th class="rotate"><div><span>boundsDuration</span></div></th>
<th class="rotate"><div><span>boundsRange</span></div></th>
<th class="rotate"><div><span>count</span></div></th>
<th class="rotate"><div><span>countMax</span></div></th>
<th class="rotate"><div><span>event</span></div></th>
<th class="rotate"><div><span>maxDosePerPeriod</span></div></th>
<th class="rotate"><div><span>maxDosePerAdministration</span></div></th>
<th class="rotate"><div><span>maxDosePerLifetime</span></div></th>
<th class="rotate"><div><span>additionalInstruction</span></div></th>
<th class="rotate"><div><span>patientInstruction</span></div></th>

<tr class="examples">
<td><a href="">Oxytetracycline</a></td><td> </td><td> </td><td class="tick"/><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td class="tick"/><td> </td><td class="tick"/><td> </td><td> </td><td> </td><td> </td><td> </td><td class="tick"/><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td/>
</tr>

<tr class="examples">
<td><a href="">Flucloxacillin</a></td><td> </td><td> </td><td class="tick"/><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td class="tick"/><td> </td><td class="tick"/><td> </td><td> </td><td> </td><td/><td> </td><td class="tick"/><td> </td><td> </td><td> </td><td class="tick"/><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td/>
</tr>

<tr class="examples">
<td><a href="">Simvastatin</a></td><td> </td><td> </td><td class="tick"/><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td class="tick"/><td> </td><td class="tick"/><td> </td><td> </td><td> </td><td> </td><td> </td><td class="tick"/><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td class="tick"/><td/>
</tr>

<tr class="examples">
<td><a href="">Salbutamol</a></td><td/><td/><td/><td class="tick"/><td/><td/><td/><td/><td/><td/><td/><td/><td/><td/><td/><td/><td/><td class="tick"/><td/><td/><td class="tick"/><td/><td/><td/><td/><td/><td class="tick"/><td/><td/><td class="tick"/><td/>
</tr>


</table>
