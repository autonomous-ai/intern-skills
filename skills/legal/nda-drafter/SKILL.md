---
name: nda-drafter
description: Drafts and reviews Non-Disclosure Agreements (NDAs) with appropriate confidentiality terms, exclusions, and duration. Use when the user asks to create an NDA, draft a confidentiality agreement, or review NDA terms.
---

# NDA Drafter

## Quick Start
Draft or review NDAs by determining the type (mutual/unilateral), scope of confidential information, duration, and exclusions. Provide balanced, standard terms and flag any unusual provisions.

## Workflow
1. Determine NDA type: mutual (two-way) or unilateral (one-way)
2. Gather parties' information: names, roles, jurisdictions
3. Define scope: what constitutes confidential information
4. Set terms: duration, return/destruction of materials, exclusions
5. Include standard protective clauses: remedies, jurisdiction, severability
6. Generate the draft with clear section numbering
7. Highlight any areas requiring customization or legal review

## Examples

**Example 1: Mutual NDA**
Input: "Draft a mutual NDA between our company and a potential partner for a technology collaboration"
Output:
```
NDA DRAFT
=========
Type: Mutual (Two-Way)
Parties: [Company A] and [Company B]
Purpose: Technology collaboration discussions

---

MUTUAL NON-DISCLOSURE AGREEMENT

1. DEFINITION OF CONFIDENTIAL INFORMATION
   Confidential Information includes all technical, business, financial, and
   operational information disclosed by either party, whether in writing,
   orally, or by inspection, including but not limited to:
   - Source code, algorithms, and technical specifications
   - Business plans, strategies, and financial projections
   - Customer lists, pricing, and marketing plans
   - Trade secrets and proprietary processes

2. EXCLUSIONS
   Confidential Information does not include information that:
   a. Is or becomes publicly available through no fault of the receiving party
   b. Was known to the receiving party prior to disclosure
   c. Is independently developed without use of confidential information
   d. Is rightfully received from a third party without restriction

3. OBLIGATIONS
   Each party agrees to:
   a. Use confidential information solely for the stated purpose
   b. Restrict access to employees/agents with a need to know
   c. Apply the same degree of care as for its own confidential information
      (but no less than reasonable care)

4. DURATION
   - Confidentiality obligations: [3] years from date of disclosure
   - Agreement term: [2] years, renewable by mutual written consent

5. RETURN OF MATERIALS
   Upon termination or request, each party shall return or destroy all
   confidential materials and certify destruction in writing.

6. REMEDIES
   The parties acknowledge that breach may cause irreparable harm and that
   injunctive relief may be sought in addition to other remedies.

7. GOVERNING LAW
   This Agreement shall be governed by the laws of [Jurisdiction].

8. SEVERABILITY
   If any provision is found unenforceable, the remaining provisions shall
   continue in full force and effect.

---
⚠️ CUSTOMIZATION NEEDED:
- [ ] Insert company names and addresses
- [ ] Confirm confidentiality duration (standard: 2-5 years)
- [ ] Specify governing law jurisdiction
- [ ] Review with legal counsel before execution
```

**Example 2: Review Existing NDA**
Input: "Review this NDA a vendor sent us — is it fair?"
Output: A clause-by-clause analysis with fairness assessment and suggested modifications.

## Tools
- Use `Read` to load existing NDA documents for review
- Use `Write` to save drafted NDAs to files
- Use `Grep` to search for specific clauses or terms

## Error Handling
- If NDA type not specified → ask if mutual or unilateral
- If scope is too broad or too narrow → flag and suggest adjustments
- If duration seems unusual (>5 years or perpetual) → warn the user
- If user requests legally binding document → remind that legal review is required

## Rules
- NEVER claim the output is a legally binding document — always recommend legal review
- Default to mutual NDA unless specified otherwise
- Always include the standard exclusions (public domain, prior knowledge, independent development)
- Duration should be reasonable: 2-5 years for most business contexts
- Flag any non-standard or aggressive terms (perpetual obligations, broad definitions, one-sided remedies)
- Use clear, plain language — avoid unnecessary legal jargon
- Include a checklist of items requiring customization

## Output Template
```
NDA DRAFT
=========
Type: [Mutual / Unilateral]
Parties: [Party A] and [Party B]
Purpose: [Reason for NDA]

---

[Numbered sections with clear headings]

---
⚠️ CUSTOMIZATION NEEDED:
- [ ] [Items requiring user input]

⚠️ Recommend legal counsel review before execution.
```
