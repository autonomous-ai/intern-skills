---
name: document-formatter
description: Formats and structures office documents such as letters, meeting minutes, announcements, reports, and proposals. Use when the user asks to create, format, reformat, or convert a business document, or mentions document templates, official letters, memos, or meeting minutes.
---

# Document Formatter

## Quick Start
Create structured, professionally formatted business documents. Determine the document type, gather required fields, apply the correct template, and deliver with proper formatting and section numbering.

## Workflow
1. Classify the document type: internal official letter, meeting minutes, internal announcement, report, or proposal/briefing
2. Gather required fields (date, recipients, subject, body content, signatory) -- ask for any missing information
3. Select and populate the appropriate template with user-provided values
4. Apply formatting rules: section numbering (I, 1, a, -), header/footer, and language-specific styles
5. Verify spelling, grammar, and consistent formatting before delivering the final output

## Examples

**Example 1: Official Letter**
Input: "Format an official letter from the HR department to all employees about the new remote work policy effective April 1, 2026. Signed by Director Nguyen Van A."
Output:
```
[Document Type]: Internal Official Letter
Date Created: 18/03/2026

---
[COMPANY NAME]

Ref: HR-2026/03-001
Date: 18/03/2026

To: All Employees
Subject: New Remote Work Policy

I. Purpose
   This letter announces the updated Remote Work Policy effective 01/04/2026.

1. Policy Summary
   a. Employees may work remotely up to 3 days per week.
   b. Requests must be submitted via the HR portal 48 hours in advance.

Signatory:
Nguyen Van A
Director, Human Resources

[Page 1 of 1]
```

**Example 2: Meeting Minutes**
Input: "Create meeting minutes for the Q1 budget review held on March 15, 2026, attended by Finance and Ops teams."
Output:
```
[Document Type]: Meeting Minutes
Date Created: 15/03/2026

---
Meeting Minutes: Q1 Budget Review
Date/Time: 15/03/2026, 09:00 - 10:00
Location: Conference Room A
Attendees: Finance Team, Operations Team

I. Agenda Items
   1. Q1 spending overview
   2. Budget variance analysis
   3. Q2 allocation proposals

II. Discussion Notes
   [Content provided by user]

III. Action Items
   [Action items with owners and deadlines]

[Page 1 of 1]
```

## Tools
- Use `Read` to load reference documents or existing templates the user provides
- Use `Write` to save the generated document to a file path
- Use `Grep` to search for existing style guides or template files in the project
- Use `Glob` to locate related documents or assets in the workspace

## Error Handling
- If document type is not specified → ask the user to choose from: letter, meeting minutes, announcement, report, or proposal
- If required fields are missing (date, recipient, signatory) → list the missing fields and request them
- If format conversion is not possible with available tools → explain the limitation and suggest alternatives
- If content contains ambiguous or conflicting information → highlight the discrepancy and ask for clarification

## Rules
- Vietnamese documents: Times New Roman 13pt, 1.5 line spacing, A4 paper size
- Every document must include clear section numbering (I, 1, a, -) and consistent header/footer
- Always include a header (company name) and footer (page number)
- Use formal language for official and administrative documents -- no colloquial expressions
- Never fabricate data or statistics; use only information provided by the user

## Output Template
```
[Document Type]: [Title]
Date Created: [DD/MM/YYYY]
Pages: [N]

---

[HEADER: Company Name]

[Section I: ...]
[Section 1: ...]
  [a. ...]

[Formatted document content with proper structure, numbering, and spacing]

[FOOTER: Page X of Y]

---

Formatting Notes:
- Font: [Font name and size]
- Spacing: [Line spacing]
- Paper: [Paper size]
```
