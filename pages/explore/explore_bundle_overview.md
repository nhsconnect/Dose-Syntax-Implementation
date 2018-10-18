---
title: Overview
keywords:  messaging, bundles
tags: [fhir,messaging]
sidebar: foundations_sidebar
permalink: explore_bundle_overview.html
summary: "Overview of ITK3 bundles"
---



## Background ##
To enable a standardised structure to carry information regarding common end-to-end distribution requirements, two Profiles have been defined, the ITK3 Message Bundle and the ITK3 MessageHeader that combine to make up the ITK3 Messaging Distribution Bundle. Two further ITK3 bundle Profiles are provided for possible use as the second bundle for a Payload: a bundle for use with document Payloads and a bundle for all other Payload types. 

The ITK3 Messaging Distribution Bundle may be used to wrap any Payload. This provides a lightweight structure to carry information relating to the end-to-end technical distribution of Payloads.
The ITK3 Messaging Distribution Bundle is an autonomous and transport agnostic design, whilst enabling audit, access control and authentication as required by both sender and receivers. Some extensions have been added to the ITK3 MessageHeader Profile to allow a similar functionality to the previous versions of ITK. 



