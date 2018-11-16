---
title: Dosage additionalInstruction and patientInstruction
keywords:  messaging
tags: [fhir,messaging]
sidebar: foundations_sidebar
permalink: dosage-additional-patient.html
summary: "Additional clinical instructions and patient instructions"
---


 
Use the **additionalInstruction** and/or **patientInstruction** structure for dosage instructions relevant to the clinician or patient that cannot be conveyed elsewhere within the Dosage structure.

Additional instructions can be either SNOMED-CT coded or free-text and can be repeated allowing for multiple SNOMED-CT coded instructions to be conveyed. Patient instructions can only be free-text and can only be defined once per dosage instruction.

Any coded additional instruction may be used from either the FHIR [value-set for method](http://hl7.org/fhir/stu3/valueset-additional-instruction-codes.html) or any SNOMED-CT coded value. The most commonly used coded values are defined with the SNOMED-CT hierarchy as a descendant of [419492006 Additional dosage instructions (qualifier value)](https://termbrowser.nhs.uk/?perspective=full&conceptId1=419492006&edition=uk-edition).

**Note.** The value-sets for Timing.when and Dosage.additionalInstruction do contain some overlapping values. For example, they can both describe "with or after food". In such cases, use Timing.when instead of a coded Dosage.additionalInstruction.

There is often the need for a clinician to give explicit instructions to either stop or continue taking medication. This could be applicable for discharge medication where one medicine may be for short term pain relief and should be stopped after the prescribed quantity has been taken, while another medicine may be continued until further notice. The patient's GP would be informed of this as part of the discharge letter but having these instructions explicitly coded provides a more robust solution.

Two SNOMED-CT codes exist that can be used for this purpose. 
  * "Then stop" (SNOMED concept identifier = 422327006)
  * "Do not stop taking this medicine except on your doctor's advice" (SNOMED concept identifier = 419444006)

The use of a dosage instruction akin to "as directed" should be avoided wherever possible. However if required then this can be SNOMED coded using [421769005 Follow directions (qualifier value)](https://termbrowser.nhs.uk/?perspective=full&conceptId1=421769005&edition=uk-edition) or conveyed as text as a patient instruction.
 
In some cases, where the same instruction is relevant to both a clinician and patient, then the instructions may be repeated using both structures. This will ensure the receiving system makes the information available to the appropriate person.
 
 <script src="https://gist.github.com/RobertGoochUK/bdfe6b4e1aec96c27e3a17c325c14033.js"></script>