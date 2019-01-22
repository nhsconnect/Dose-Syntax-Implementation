---
title: Worked Examples
keywords:  messaging
tags: [overview]
sidebar: foundations_sidebar
permalink: dosage-examples-overview.html
summary: "Worked Examples"
---


{% include important.html content="Examples are not complete with respect to all mandatory or required data for a CareConnect implementation but instead highlight the variety of use of the FHIR Dosage structure" %}

For simplicity, all examples are modelled with medication information within a referenced contained resource, opposed to referencing a medication resource defined elsewhere within a Bundle.


## Oxytetracycline 250mg tablets - 1 tablet - oral - 4 times a day ##

<script src="https://gist.github.com/RobertGoochUK/2b88fe64156c2d3c788328463d7a4a5d.js"></script>

## Ramipril 5mg capsules - 1 - twice a day ##

<script src="https://gist.github.com/RobertGoochUK/91cff732c159dabb452c52a0a92f688a.js"></script>

## Omeprazole 10mg gastro-resistant tablets - 1 tablet - oral - once a day ##

<script src="https://gist.github.com/RobertGoochUK/b80afd58861658643c8265d3cb622979.js"></script>

## Trimethoprim 100mg tablets (Crescent Pharma Ltd), 2 tablets, TWICE a DAY, oral ##

<script src="https://gist.github.com/RobertGoochUK/55593efcf8d81d681bed1a3dc4f9d1c4.js"></script>

## Micralax Micro-enema 5ml (RPH Pharmaceuticals AB), once a day ##

<script src="https://gist.github.com/RobertGoochUK/15231b8269739c11bf86fe4948f7090f.js"></script>

## Aciclovir 200mg tablets, one tablet five times daily ##

<script src="https://gist.github.com/RobertGoochUK/9dadfd13bf632cad40883383a30c35b1.js"></script>

## Amoxil 250mg capsules (GlaxoSmithKline UK Ltd), 1 capsule, every 8 hours, oral ##

<script src="https://gist.github.com/RobertGoochUK/3ef048f8fb97d26bac1c0d4e13c4a6fb.js"></script>

## Diprobase ointment (Bayer Plc), 1 application, THREE times a DAY, topical ##

<script src="https://gist.github.com/RobertGoochUK/8c72ae276972c87272056eb2e984a956.js"></script>

## Microgynon 30 tablets (Bayer Plc), 63 tablet, as directed ##

<script src="https://gist.github.com/RobertGoochUK/2d5b5a1261bb9a785618fbf5380e9e20.js"></script>

## Beclometasone 0.025% cream, apply twice daily to thigh ##

<script src="https://gist.github.com/RobertGoochUK/5efddc06de5180593a38cd907de63443.js"></script>

## Flucloxacillin, 500mg orally three times a day for 7 days ##

<script src="https://gist.github.com/RobertGoochUK/17e0acb88b76bbcb82b3b6f6c34d7f31.js"></script>

## Simvastatin 20mg tablets, 2 tablets, ONCE a DAY, oral to continue ##

<script src="https://gist.github.com/RobertGoochUK/76d1dc65f3021f5c4e50409fde924a1c.js"></script>


## NovoRapid Penfill 100units/ml solution for injection 3ml cartridges (Novo Nordisk Ltd), inject according to insulin requirements ##

<script src="https://gist.github.com/RobertGoochUK/029d9e231bc54fb3b0ac6386f9e0b501.js"></script>

## Zopiclone 3.75mg tablets, 1 tablet, at BEDTIME, PRN, oral ##

<script src="https://gist.github.com/RobertGoochUK/355dcf9b4e71f740e5b197b77f80818d.js"></script>

## Salbutamol, 100-200mcg to be inhaled when required up to 4 times daily, using the metered dose device ##

<script src="https://gist.github.com/RobertGoochUK/3058adde9517ffb68a62f55112e036f0.js"></script>

## Salbutamol, 5mg to be given via a nebuliser. Repeat every 20-30 minutes as required ##

<script src="https://gist.github.com/RobertGoochUK/ddf9ad03106e7203180b91436bd38689.js"></script>

## Ondansetron 4mg tablets, 1 tablet, THREE times a DAY, oral, for 2 days ##

<script src="https://gist.github.com/RobertGoochUK/61fc58eb264eb84d9b1411cbb4e3c2bc.js"></script>

## Ibuprofen 400mg capsules, 1 capsule, TWICE a DAY, with or after food, oral, for 7 days ##

<script src="https://gist.github.com/RobertGoochUK/58c53f158c5453308e082f25d782a94f.js"></script>

## Timolol 0.1% gel eye drops, 1 drop in the left eye once daily ##

<script src="https://gist.github.com/RobertGoochUK/184f6e053a1714347739c827a3de8773.js"></script>

## Epoetin alfa, 4500units, ONCE a DAY, subcutaneous injection ##

<script src="https://gist.github.com/RobertGoochUK/adaed4fbce1276ae287178417b2985c5.js"></script>

## Prednisolone 5mg tablets, have 8 tablets a day after food for 7 days then stop ##

<script src="https://gist.github.com/RobertGoochUK/abd7ce473f5fe38ed1865134a9cfa1b5.js"></script>

## Hydrocortisone 0.1% cream, apply 2-3 times daily to area around lips ##

<script src="https://gist.github.com/RobertGoochUK/340ff8c4c169f972532b62a1b3f32a37.js"></script>

## Morphine, 30mg, intravenously, injection, four times a day over 24 hours ##

<script src="https://gist.github.com/RobertGoochUK/5b987bcdafe267b597c9c432a9a11c11.js"></script>

## Glucose 5% infusion 500ml bags, 500ml, intravenous, continuous infusion, over 8 hours ##

<script src="https://gist.github.com/RobertGoochUK/6a992f5415ef2ba7ddfab2d4e69337a7.js"></script>


## Microgynon 30 tablets (Bayer Plc), 1 tablet, ONCE a DAY, oral, for 21 days, subsequent courses repeated after 7-day tablet-free interval ##

Complex because the 7 day period where no medication should be taken has to be conveyed as text within **additionalInstruction**.

<script src="https://gist.github.com/RobertGoochUK/67a2e1bf88c100ff62aba8467f5f743e.js"></script>

## Loperamide 2mg capsules, take two capsules (4 mg) immediately followed by one capsule (2 mg) after each episode of diarrhoea. Daily dose should not exceed eight capsules (16 mg) ##

Complex because has a maximum daily dose and requires administration of medication following a coded clinical event.

<script src="https://gist.github.com/RobertGoochUK/c42500071f3a22af8d8b268f9aec7e3c.js"></script>

## Phenoxymethylpenicillin 250mg tablets, 2 tablets every 6 hours an hour before food or on an empty stomach, oral ##

Complex because "on an empty stomach" is not a coded SNOMED-CT code nor in a FHIR value-set. To avoid confusion with a coded "before food", the complete instruction "an hour before food or on an empty stomach" is conveyed as free-text within **additionalInstruction**.

<script src="https://gist.github.com/RobertGoochUK/85954bf963f7d98dfd1c382a36fc689c.js"></script>

## Co-codamol 8mg/500mg tablets, 2 tablets when required when first symptoms of migraine appear. Dose may be repeated after 4 hours if migraine recurs. Oral. Maximum dose 6 tablets every 24 hours ##

Complex because could be modelled in two ways and both have been provided in this example.

<script src="https://gist.github.com/RobertGoochUK/fe839c3b0dc68be679346192d67569bc.js"></script>

## Prednisolone, 7.5-30 mg once daily, adjusted according to response ##

Complex because the instruction to "adjusted according to response" cannot be coded information so is conveyed as free-text within **additionalInstruction**.

<script src="https://gist.github.com/RobertGoochUK/a5d896f2dba7119f98bbdd69be8e3a7f.js"></script>

## Avloclor 250mg tablets (Alliance Pharmaceuticals Ltd), one to be taken once a week, start one week before travel and continue until 4 weeks after return ##

Complex because the instruction to "start one week before travel and continue until 4 weeks after return" cannot be a coded instruction so is conveyed as free-text within **patientlInstruction**.

<script src="https://gist.github.com/RobertGoochUK/4fd01ea1de85d61fb63d8b352b35221e.js"></script>

## Migraleve tablets (McNeil Products Ltd), initially 2 pink tablets to be taken at onset of attack followed by 2 yellow tablets every 4 hours if required. maximum 2 pink and 6 yellow tablets in 24 hours ##

Complex because specific instructions related to combination products is not currently supported within the STU3 Dosage structure.

<script src="https://gist.github.com/RobertGoochUK/ed35e1f7cfb0eea8df8acad2aced3369.js"></script>

## Zoladex 3.6mg implant SafeSystem pre-filled syringes (AstraZeneca UK Ltd), one to be given by IM injection into the anterior abdominal wall on 1st November 2019 ##

Complex because has a specific timing instruction for the administration.

<script src="https://gist.github.com/RobertGoochUK/53c52eb0dd8a7ca7e0535e62e7ce74e0.js"></script>

## Eprex 2,000units/0.5ml solution for injection pre-filled syringes (Janssen-Cilag Ltd), to be given by s.c. injection on Mondays and Thursdays with dialysis ##

Complex because has specific timing instructions based on days of the week.

<script src="https://gist.github.com/RobertGoochUK/f480c7dda3c50f651ffbbcdb7694b272.js"></script>

## Furosemide 40mg tablets, take two in the morning and one at midday for one week ##

Complex because requires a parallel/concurrent dosage instructions. 

<script src="https://gist.github.com/RobertGoochUK/bc29af1df30e9f0b86da1d2224a76b39.js"></script>

## Metformin 500mg tablets, initially 500 mg once daily for 1 week, dose to be taken with breakfast, then 500 mg twice daily for week, dose to be taken with breakfast and evening meal, then 500 mg 3 times a day, dose to be taken with breakfast, lunch and evening meal; maximum 2 g per day ##

Complex because of a specific differences in dosing over a period of time.

<script src="https://gist.github.com/RobertGoochUK/c24aa67aa4e10dfefb95e0623ae989b4.js"></script>

## Hyoscine 1mg/72hours transdermal patches, one patch to be applied once every 3 days ##

Complex because required a **method**. 

<script src="https://gist.github.com/RobertGoochUK/1b9c0c0481221e93f294f1ba9a8bacac.js"></script>

## Aspirin 300mg dispersible tablets, two tablets to be taken four times daily well diluted in water. To be taken with or after food. ##

Complex because has a specific dosing instruction that is luckily also a SNOMED-CT coded term. 

<script src="https://gist.github.com/RobertGoochUK/472df255d63ccd7b0f6116e600248071.js"></script>

## Permitabs 400mg tablets. Add 500ml of warm water to one tablet and dissolve. Make the resulting solution up to 8 litres and use to soak feet. ##

Complex because contains a detailed preparation instruction which has to be conveyed as free-text within **patientlInstruction**.

<script src="https://gist.github.com/RobertGoochUK/397909d95f2f97ba391c13c5820f36ee.js"></script>

## Co-trimoxazole 80mg/400mg tablets (Actavis UK Ltd), one tablet to be taken twice daily on Mondays, Wednesdays and Fridays ##

Complex because has specific timing instructions based on days of the week.

<script src="https://gist.github.com/RobertGoochUK/36e517d24a23bd5b617fcb9ca13f16f8.js"></script>

## Metoclopramide, orally 10mg to be taken when required for nausea up to three times daily ##

Complex because is medication required following a coded clinical event.

<script src="https://gist.github.com/RobertGoochUK/8a3bd9f5bbd25a7cf9ffd23975dbeedf.js"></script>

## Aspirin suppository, 600mg rectally every 4 hours. Maximum 3.6gm per 24 hours ##

Complex because is a dose-based instruction but with a specific form and contains a maximum dose per period instruction.

<script src="https://gist.github.com/RobertGoochUK/12facda56854c648a1c678101c34c965.js"></script>

## Morphine modified release capsule, 20mg orally every 12 hours ##

Complex because is a dose-based instruction but with a specific form.

<script src="https://gist.github.com/RobertGoochUK/0b373b241f7044f937f801232863ee8b.js"></script>

## Voluven 10% infusion 500ml Freeflex bags (Fresenius Kabi Ltd), infuse intravenously at a rate of 30ml/kg for 10 hours ##

Complex because requires a rate-based dosing instruction.

<script src="https://gist.github.com/RobertGoochUK/9be3ce815d05950fd5e87822f2450776.js"></script>

## Oxygen by inhalation 2litres/minute via nasal route

Complex because requires a rate-based dosing instruction.

<script src="https://gist.github.com/RobertGoochUK/71a1192a10e7cd31fe339260aeb2d317.js"></script>

## Insulin lispro (Humalog) 16units to be given by subcutaneous injection at meal times ##

Complex because requires the use of a specific bfand (within SNOMED-CT known as a Trade Family).

<script src="https://gist.github.com/RobertGoochUK/9d73d7c9e6bcba03d0703dd2fb590dea.js"></script>
