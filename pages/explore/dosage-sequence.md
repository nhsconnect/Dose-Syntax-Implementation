---
title: Dosage sequence
keywords:  messaging
tags: [fhir,messaging]
sidebar: foundations_sidebar
permalink: dosage-sequence.html
summary: "Multi-sequence instructions"
---



A multi-sequence would be required where a dosage instruction changes over a given time schedule, where a dosage instruction includes optional follow-up doses or where a concurrent dosage instruction is required for the same medication at a different dose.

Examples below include Prednisolone to treat Bell's palsy where a dose starts at 60 mg per day for a period of time then reduces by 10 mg per day. This would be described as a sequential dosage instruction. A concurrent dosage example is provided to describe a different dose in the morning to that at midday.

## Sequential Instructions ##

Where the value of sequence is an incremental integer it defines a sequential instruction.

<script src="https://gist.github.com/RobertGoochUK/94b057717c3ade14ae6d6227bd52c213.js"></script>

## Concurrent Instructions ##

Where the same integer value of sequence is defines it means a concurrent instruction.

<script src="https://gist.github.com/RobertGoochUK/bc29af1df30e9f0b86da1d2224a76b39.js"></script>