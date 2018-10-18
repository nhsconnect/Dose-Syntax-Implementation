---
title: Sender and Receiver Requirements Overview
keywords: explore Reference
tags: [explore,fhir]
sidebar: overview_sidebar
permalink: explore_s_and_r.html
summary: "Overview of sender and receiver requirements for ITK3 payloads."
---



These sections describe the sender and receiver requirements for ITK3 FHIR payloads.

For the purpose of this specification: 

- An ITK3 FHIR Document payload is defined as below:

FHIR Resources can be used to build documents that represent a Composition: a set of coherent information that is a statement of healthcare information, particularly including clinical observations and services. A document is an immutable set of Resources with a fixed presentation that is authored and/or attested by humans, organizations and devices.

All documents have the same structure: A Bundle of Resources of type "document" that has a Composition Resource as the first Resource in the bundle, followed by a series of other Resources, referenced from the Composition Resource that provide supporting evidence for the document. The Bundle gathers all the content of the document into a single XML document which may be managed as required. The Resources include both human readable and computer processable portions.

There are two key identifiers on the document:

- The Document identifier (mandatory). This is found in Bundle.id and is unique for this instance of the document, and is never re-used.
- The Composition identifier (mandatory). This is found in Composition.identifier, and is the same for all documents that are derived from this Composition.

The document has two dates in it:

- The Document date (mandatory). This is found in Bundle.meta.lastUpdated and identifies when the document bundle was assembled from the underlying Resources.
- The Composition date (mandatory). This is found in Composition.date, which is when the author wrote the document.

Once assembled into a bundle, the document is immutable - its content can never be changed, and the document id can never be reused. Any additional documents derived from the same Composition SHALL have a different document id.

 
  




