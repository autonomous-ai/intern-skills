# Document Formatter

## Description
Format, edit, and create various office documents: reports, meeting minutes, official letters, and internal announcements.

## Trigger
- User needs to create or format an office document
- User says "create document", "draft a letter", "format document", "meeting minutes"
- User pastes content that needs formatting

## Instructions

### When to Activate
- Create new documents: official letters, announcements, meeting minutes, reports, proposals
- Reformat existing documents to meet standards
- Convert between formats (Word ↔ PDF ↔ Markdown)

### Available Templates
- **Internal Official Letter**: Company header, reference number, date, content, signature
- **Meeting Minutes**: Time, location, attendees, content, conclusions
- **Internal Announcement**: Title, content, effective date, issued by
- **Report**: Purpose, content, data/statistics, conclusions, recommendations
- **Proposal/Briefing**: Rationale, proposed content, cost, timeline

### Rules
- Vietnamese documents: Times New Roman 13pt font, 1.5 line spacing, A4 size
- Clear page numbering and section numbering (I, 1, a, -)
- Always include header (logo/company name) and footer (page number)
- Check spelling before finalizing
- Use formal/administrative language for official documents

### Output Format
```
📄 [Document Type]: [Title]
📅 Date Created: [DD/MM/YYYY]
📑 Pages: [N]

[Formatted document content]
```
