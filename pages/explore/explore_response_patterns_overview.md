---
title: ITK3 Response Patterns Overview
keywords: explore Reference
tags: [explore,fhir,error codes]
sidebar: overview_sidebar
permalink: explore_response_patterns_overview.html
summary: "Response Patterns used in ITK3."
---



## Overview ##

The following sections detail the response patterns supported by ITK3. The pattern used is dependent on the specification for the Payload and the response types requested.
The actual flow between the systems will be dependent on factors such as:

- What responses have been requested (handling specification extension values sent)
- If an issue is detected, the type of issue and when it is reported
- How the MESH Workflow ID has been configured
- Whether MESH transfer reports have been requested in MESH client configuration

There are four patterns supported.

- [Full Acknowledgement](explore_response_patterns_1.html)
- [Business and Technical](explore_response_patterns_2.html)
- [Technical only](explore_response_patterns_3.html)
- [Fire and Forget](explore_response_patterns_4.html)
 

