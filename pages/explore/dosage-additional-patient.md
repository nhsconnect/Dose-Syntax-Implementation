---
title: Dosage additionalInstruction, patientInstruction and text
keywords:  messaging
tags: [fhir,messaging]
sidebar: foundations_sidebar
permalink: dosage-additional-patient.html
summary: "Additional clinical instructions and patient instructions"
---


 
Use the **additionalInstruction, patientInstruction** and/or **text** structure for dosage instructions, relevant to the patient, prescriber and administering or other clinician, that cannot be conveyed elsewhere within the Dosage structure. 

## additionalInstruction ##

Supplemental instructions to the patient on how to take the medication (e.g. "with meals" or "take half to one hour before food") or warnings for the patient about the medication (e.g. "may cause drowsiness" or "avoid exposure of skin to direct sunlight or sunlamps").  

Additional instructions SHOULD be SNOMED-CT coded and can be repeated allowing for multiple SNOMED-CT coded instructions to be conveyed.
Where no code exists, additionalInstructions COULD be conveyed as free-text.

An example [FHIR valueset binding](http://hl7.org/fhir/stu3/valueset-additional-instruction-codes.html) is provided to the SNOMED-CT hierarchy descendants of [419492006 Additional dosage instructions (qualifier value)](https://termbrowser.nhs.uk/?perspective=full&conceptId1=419492006&edition=uk-edition).

## patientInstruction ##

Text only instructions in terms that are understood by the patient or consumer.
Patient instructions can only be defined once per dosage instruction.

<script src="https://gist.github.com/IOPS-DEV/46ab707ee642105bc77ab6dc0beded2e.js"></script>

## text ##

Free text dosage instructions.

Information to clinicians about administration or preparation of the medication (e.g. "infuse as rapidly as possibly via intraperitoneal port" or "immediately following drug x") should be populated in dosage.text. It may also be be used (rarely) for cases where the instructions to patient are too complex to code.

The use of the **Dosage.text** element is discouraged to maximise dosage instructions defined using the coded structures. This position may be subject to change as a result of initial clinical and implementation experience or feedback from the FHIR community.

The **Dosage.text** element would also be populated in an implementation which does not support the coded structures.

In some cases, where the same instruction is relevant to both a clinician and patient, then the instructions may be repeated using several dosage structures - additionalInstruction or patientInstruction toward patient, text toward the clinician. This will ensure the receiving system makes the information available to the appropriate person.


## additionalInstruction / when overlap ##

**Note.** The value-sets for **Timing.when** and **Dosage.additionalInstruction** do contain some overlapping values. For example, they can both describe "with or after food". In such cases, use **Timing.when** instead of a coded **Dosage.additionalInstruction**.

## continue / stop instructions ##

There may be the need for a clinician to give explicit instructions to either stop or continue taking medication. This could be applicable for discharge medication where one medicine may be for short term pain relief and should be stopped after the prescribed quantity has been taken, while another medicine must be continued until further notice. The patient's GP would be informed of this as part of the discharge letter but having these instructions explicitly coded provides a more robust solution.

Three SNOMED-CT codes exist that can be used for this purpose. 
  * "Then stop" (SNOMED concept identifier = [422327006](https://termbrowser.nhs.uk/?perspective=full&conceptId1=422327006&edition=uk-edition))
  * "Then discontinue" (SNOMED concept identifier = [421484000](https://termbrowser.nhs.uk/?perspective=full&conceptId1=421484000&edition=uk-edition))
  * "Do not stop taking this medicine except on your doctor's advice" (SNOMED concept identifier = [419444006](https://termbrowser.nhs.uk/?perspective=full&conceptId1=419444006&edition=uk-edition))

**Note.** It is recognised that such coded terms are akin to timing instructions so may be more logically containing within the various Dosage.timing structures. These do not currently support coded concept terms. Implementation experience will provide evidence to support any future change to the underlying FHIR specification.

## as directed ##
  
The use of a dosage instruction akin to "as directed" should be avoided wherever possible. However if required then this can be SNOMED coded using [421769005 Follow directions (qualifier value)](https://termbrowser.nhs.uk/?perspective=full&conceptId1=421769005&edition=uk-edition) or conveyed as text as a patient instruction.
 
