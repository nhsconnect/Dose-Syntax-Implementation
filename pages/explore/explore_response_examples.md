---
title: ITK3 Response Examples
keywords: explore Reference
tags: [explore,fhir,error codes]
sidebar: overview_sidebar
permalink: explore_response_examples.html
summary: "Response code examples."
---



## Error Scenario Examples ##

## Infrastructure Level Response 10001: Fatal-Error - Handling Specification Error ##

<script src="https://gist.github.com/IOPS-DEV/ae61ef54e2827502cf382e3a6e19a986.js"></script>

## Infrastructure Level Response 10002: Fatal-Error - Infrastructure Response Value Processing Error ##

<script src="https://gist.github.com/IOPS-DEV/313aeb38232f92aacdbabf235f24b0af.js"></script>

## Infrastructure Level Response 10003: Fatal-Error - Business Level Response Value Processing Error ##

<script src="https://gist.github.com/IOPS-DEV/66b215872b5c4b9f125904b86add2a13.js"></script>

## Infrastructure Level Response 10004: Fatal-Error - Message Definition Value Processing Error ##

<script src="https://gist.github.com/IOPS-DEV/65c1971379ca58788d57caecccb64ab4.js"></script>

## Infrastructure Level Response 10005: Fatal-Error - Message Definition Version Value – Processing Error ##

<script src="https://gist.github.com/IOPS-DEV/1af0659abda0358f2fc1da5e48c32aaa.js"></script>

## Infrastructure Level Response 10007: Sender Reference Value - Processing Error ##

<script src="https://gist.github.com/IOPS-DEV/442295632e65283c9bc93277f724f4ba.js"></script>

## Infrastructure Level Response 10008: Handling Specification Business Rule Error ##

<script src="https://gist.github.com/IOPS-DEV/92be67019cff622998091ea3510e1987.js"></script>

## Infrastructure Level Response 10009: Fatal-Error - Unreadable Message Received ##

When a system receives a message which is totally unreadable due to it being corrupted or malformed, there is a default behaviour defined which systems should support. This behaviour for information unobtainable from the handling keys and header elements is listed below:

----------

**Issue** - Unable to ascertain if a response has been requested.

**Default Behaviour** - A response must always be returned to the sender.

----------

**Issue** - Unable to ascertain sender person or organisation.

**Default Behaviour** - Return a response to MESH mailbox original message was sent from and original sending system will have to deal with response the best it can. 

----------

**Issue** - Unable to ascertain whether original message was for action or only for information.

**Default Behaviour** - Assume for action and return response.

----------

**Issue** - Unable to ascertain any other information

**Default Behaviour** - Return response as soon as possible once error is detected. 

----------

**Issue** - Unable to ascertain the identifier of the original message.

**Default Behaviour** - return the fixed string of "UNREADABLE-IN-ORIGINAL-MESSAGE"

Note: If only certain elements are missing or unreadable then the error codes associated with that key or element should be returned instead wherever possible.

<script src="https://gist.github.com/IOPS-DEV/88e98b35e38e00d6f9f4f2ed0f898137.js"></script>


## Infrastructure Level Response 20001: Fatal-Error - Unrecognised Recipient Person ##

<script src="https://gist.github.com/IOPS-DEV/a50afeaaa7cfeb3e14bf91ae20821590.js"></script>

## Infrastructure Level Response 20002: Fatal-Error - Unrecognised Recipient Organisation ##

<script src="https://gist.github.com/IOPS-DEV/be0aff85266ea704133490609f3d72c4.js"></script>

## Infrastructure Level Response 20003: Fatal-Error - Unrecognised Sender ##

<script src="https://gist.github.com/IOPS-DEV/ff8cab7b593fba2f668724b5106bf984.js"></script>

## Infrastructure Level Response 20004: Fatal-Error - Non Approved File Type Received as an Attachment ##

<script src="https://gist.github.com/IOPS-DEV/4a85440beba40460110e1ad6511e79ea.js"></script>

## Infrastructure Level Response 20005: Fatal-Error - Unsupported file type received as an attachment ##

<script src="https://gist.github.com/IOPS-DEV/a8333d0f1891db50b636a0eed744aedf.js"></script>

## Infrastructure Level Response 20006: Fatal-Error - ITK3 Header Validation Failure ##

<script src="https://gist.github.com/IOPS-DEV/c9d8f3c6604bd9fb930726a3678c8b15.js"></script>

## Infrastructure Level Response 20007: Fatal-Error - Duplicate Message Received ##

<script src="https://gist.github.com/IOPS-DEV/30971d3a9dc414caea8db1b0dd339f7d.js"></script>

## Infrastructure Level Response 20008: Fatal-Error - Duplicate Document Received ##

<script src="https://gist.github.com/IOPS-DEV/c87f2fc1d4aa11f4c9edf69e7873ece5.js"></script>

## Infrastructure Level Response 20009: Fatal-Error - Payload Validation Failure ##

<script src="https://gist.github.com/IOPS-DEV/e383f75a43e258adfc2bd20b93ef4bc1.js"></script>

## Infrastructure Level Response 20010: Fatal-Error - Unrecognised Payload Recipient Organisation ##

<script src="https://gist.github.com/IOPS-DEV/035cd398b95719b3f133f5bd4bf7186e.js"></script>

## Infrastructure Level Response 20011: Fatal-Error - Unrecognised Payload Recipient Person ##

<script src="https://gist.github.com/IOPS-DEV/7773b458b80a1a9ff2c649e84ddd23fb.js"></script>

## Infrastructure Level Response 20012: Fatal-Error - Unauthorised Sender ##

<script src="https://gist.github.com/IOPS-DEV/8a0090e678251e23b5ecfb78d851149f.js"></script>

## Infrastructure Level Response 20013: OK ##

<script src="https://gist.github.com/IOPS-DEV/56fdf8105c60efa5811342a924ffe0fc.js"></script>

----------

## Business Level Response 30001:  - Patient Known Here ##

<script src="https://gist.github.com/IOPS-DEV/402cb8cfa1c134efb7f8b2cbd24f83af.js"></script>

## Business Level Response 30002: Fatal-Error - Patient not Known Here ##

<script src="https://gist.github.com/IOPS-DEV/bb187a8ff421bfb5b39a9d3abf1811fa.js"></script>

## Business Level Response 30003: Fatal-Error - Patient no Longer at this Clinical Setting Error ##

<script src="https://gist.github.com/IOPS-DEV/cf7eed45cfcf6523b3c40d7cb21f1612.js"></script>
