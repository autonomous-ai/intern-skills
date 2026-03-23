---
name: compliance-checker
description: Checks business processes, documents, and policies against regulatory requirements and internal standards. Use when the user asks about compliance requirements, regulatory checks, policy adherence, audit preparation, or whether a process meets specific standards (GDPR, PDPA, ISO, labor law).
---

# Compliance Checker

## Quick Start
Evaluate business processes and documents against regulatory frameworks and internal policies. Identify gaps, flag non-compliance risks, and suggest remediation steps. Always specify which regulation or standard is being checked against.

## Workflow
1. Identify the compliance framework: GDPR, PDPA, labor law, ISO 27001, SOC 2, industry-specific regulations
2. Determine what is being evaluated: a document, process, policy, or system
3. Map requirements from the framework to the subject being evaluated
4. Check each requirement: compliant, partially compliant, non-compliant, or not applicable
5. Assign risk levels to non-compliant items
6. Provide remediation recommendations with priority ranking

## Examples

**Example 1: Data Privacy Check**
Input: "Check if our customer data collection process complies with PDPA"
Output:
```
COMPLIANCE CHECK
================
Framework: PDPA (Personal Data Protection Act)
Subject: Customer data collection process
Date: 23/03/2026

ASSESSMENT
----------
| # | Requirement                    | Status         | Risk   |
|---|--------------------------------|----------------|--------|
| 1 | Consent collection             | ✅ Compliant    | —      |
| 2 | Purpose specification          | ⚠️ Partial     | Medium |
| 3 | Data minimization              | ❌ Non-compliant| HIGH   |
| 4 | Storage limitation             | ⚠️ Partial     | Medium |
| 5 | Data subject access rights     | ❌ Non-compliant| HIGH   |
| 6 | Data breach notification       | ✅ Compliant    | —      |
| 7 | Cross-border transfer controls | ❌ Non-compliant| HIGH   |
| 8 | Data protection officer (DPO)  | ✅ Compliant    | —      |

Score: 3/8 fully compliant (37.5%)

HIGH RISK ITEMS:
1. Data minimization: Collecting 12 fields when only 5 are needed for stated purpose
2. Access rights: No self-service portal for data subjects to view/delete their data
3. Cross-border transfers: Customer data stored on US servers without adequate safeguards

REMEDIATION PLAN:
| Priority | Action                                  | Deadline   |
|----------|-----------------------------------------|------------|
| P0       | Reduce data fields to minimum necessary | Immediate  |
| P0       | Implement data subject request process  | 30 days    |
| P1       | Add cross-border transfer safeguards    | 60 days    |
| P2       | Update privacy policy with specific purposes | 30 days |
| P2       | Define data retention schedule          | 45 days    |
```

**Example 2: Labor Law Check**
Input: "Check if our employee handbook complies with Vietnamese labor law"
Output: A section-by-section review of the handbook against Vietnam Labor Code 2019 requirements.

## Tools
- Use `Read` to load policy documents, handbooks, or process descriptions
- Use `WebSearch` to verify current regulatory requirements and recent updates
- Use `Write` to save compliance reports to files
- Use `Grep` to search for specific terms or clauses in documents

## Error Handling
- If compliance framework not specified → ask which regulations or standards to check against
- If document is incomplete → note gaps and assess only available content
- If regulation has recently changed → flag that requirements may need re-verification
- If assessment requires domain expertise beyond scope → recommend specialist consultation

## Rules
- Always specify which version/date of the regulation is being referenced
- Never claim a process is "fully compliant" — use "appears compliant based on available information"
- Flag items requiring specialist legal or regulatory review
- Prioritize remediation actions by risk level (P0 = immediate, P1 = 30 days, P2 = 60 days)
- Include both the requirement and the evidence (or lack of) for each assessment
- Note that compliance is a point-in-time assessment and requires ongoing monitoring
- Keep assessment objective — note assumptions clearly

## Output Template
```
COMPLIANCE CHECK
================
Framework: [Regulation/Standard name and version]
Subject: [What is being evaluated]
Date: [Assessment date]

ASSESSMENT
----------
| # | Requirement | Status | Risk |
|---|-------------|--------|------|
| [N] | [Requirement] | [✅/⚠️/❌] | [High/Medium/Low/—] |

Score: [X/Y] fully compliant ([Z]%)

HIGH RISK ITEMS:
1. [Non-compliant item with specific evidence]

REMEDIATION PLAN:
| Priority | Action | Deadline |
|----------|--------|----------|
| [P0/P1/P2] | [Specific action] | [Timeline] |

---
Note: This assessment is based on available information and does not constitute legal advice.
Recommend specialist review for high-risk items.
```
