---
name: legal-summarizer
description: Summarizes legal documents, regulations, and policies into plain-language overviews with key obligations and deadlines. Use when the user asks to summarize a law, regulation, legal document, policy, or explain legal terms in simple language.
---

# Legal Summarizer

## Quick Start
Convert complex legal documents into clear, structured plain-language summaries. Extract key obligations, rights, deadlines, and penalties. Always note that summaries are for informational purposes, not legal advice.

## Workflow
1. Identify document type: law/regulation, contract, court ruling, policy, terms of service, legal memo
2. Read the full document or specified sections
3. Extract: purpose, scope, key definitions, obligations, rights, penalties, deadlines, exemptions
4. Organize into a structured plain-language summary
5. Highlight critical dates, monetary thresholds, and compliance requirements
6. Note areas of ambiguity or sections requiring legal interpretation

## Examples

**Example 1: Regulation Summary**
Input: "Summarize Decree 13/2023 on personal data protection"
Output:
```
LEGAL SUMMARY
=============
Document: Decree 13/2023/ND-CP — Personal Data Protection
Issued: 17/04/2023 | Effective: 01/07/2023
Issuer: Government of Vietnam

PURPOSE:
Establishes the legal framework for personal data protection in Vietnam,
covering collection, processing, storage, and transfer of personal data.

KEY DEFINITIONS:
- Personal Data: Information that identifies or can identify an individual
- Sensitive Data: political views, health, finances, biometrics, location, etc.
- Data Controller: Entity that decides purpose and means of processing
- Data Processor: Entity that processes data on behalf of a controller

KEY OBLIGATIONS:
1. Consent: Must obtain consent before collecting/processing personal data
2. Impact Assessment: Required for processing sensitive data
3. Registration: Data controllers/processors of sensitive data must register
   with the Ministry of Public Security
4. Breach Notification: Must notify within 72 hours of discovering a breach
5. Cross-border Transfer: Requires impact assessment and filing with authorities

PENALTIES:
- Administrative fines per related decrees on administrative violations
- Criminal liability for serious violations under the Penal Code

IMPORTANT DEADLINES:
- Compliance required from 01/07/2023
- Existing data processing activities must be brought into compliance

WHO THIS AFFECTS:
All organizations and individuals in Vietnam processing personal data,
and foreign entities processing data of Vietnamese citizens.

---
⚠️ This is a plain-language summary for informational purposes only.
Consult legal counsel for specific compliance guidance.
```

**Example 2: Terms of Service Summary**
Input: "Summarize this SaaS terms of service — what should I watch out for?"
Output: A summary highlighting user obligations, liability limitations, data handling, and cancellation terms.

## Tools
- Use `Read` to load legal documents and policy files
- Use `WebSearch` to find the latest version of laws or regulations
- Use `Write` to save summaries to files
- Use `Grep` to search for specific terms or sections within documents

## Error Handling
- If document is in legal language that is ambiguous → flag specific ambiguities
- If document references other laws → note the references and summarize if accessible
- If only partial document provided → summarize available content and note what is missing
- If user asks for legal interpretation → clarify this is a summary, not legal advice

## Rules
- NEVER provide legal advice or legal interpretation — summaries are informational only
- Use plain language — replace legal jargon with everyday terms (add original term in parentheses)
- Always include: purpose, key obligations, penalties, and important deadlines
- Note the effective date and any transition periods
- Flag sections that are ambiguous or require professional interpretation
- Preserve accuracy — do not oversimplify to the point of losing meaning
- Include original legal references (article numbers, section numbers) for verification

## Output Template
```
LEGAL SUMMARY
=============
Document: [Full title and reference number]
Issued: [Date] | Effective: [Date]
Issuer: [Issuing authority]

PURPOSE:
[1-2 sentence plain-language explanation of what this document is about]

KEY DEFINITIONS:
- [Term]: [Plain-language definition]

KEY OBLIGATIONS:
1. [Obligation with plain-language explanation]

PENALTIES:
- [Consequences for non-compliance]

IMPORTANT DEADLINES:
- [Date]: [What must be done by this date]

WHO THIS AFFECTS:
[Who needs to comply with this document]

---
⚠️ This is a plain-language summary for informational purposes only.
Consult legal counsel for specific guidance.
```
