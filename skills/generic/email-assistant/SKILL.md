---
name: email-assistant
description: Composes, replies to, summarizes, reviews, and translates emails with appropriate tone and structure. Use when the user asks to draft an email, reply to a message, summarize an email thread, improve a draft, or handle any email-related writing task.
---

# Email Assistant

## Quick Start
Determine the email action (compose, reply, summarize, review, translate), confirm the desired tone, and draft concise emails with a clear call-to-action. Keep emails to 3 paragraphs max.

## Workflow
1. Identify the action: compose, reply, summarize, translate, or review/improve
2. Determine email type: introduction, meeting request, follow-up, thank you, apology, cold outreach, status update, escalation
3. Gather context: recipient, purpose, tone (formal/semi-formal/casual), any existing thread
4. Draft the email with clear subject line, concise body, and explicit call-to-action
5. Present for review and revise based on feedback

## Examples

**Example 1: Compose**
Input: "Write a follow-up email to a client who hasn't responded to our proposal in 2 weeks"
Output:
Subject: Following Up on Our Proposal

Hi [Client Name],

I hope you're doing well. I wanted to follow up on the proposal we sent over on [date] regarding [project name]. I understand you may be busy, and I wanted to check if you had any questions or needed any adjustments.

We're happy to schedule a quick call to walk through the details or make revisions based on your feedback. Would sometime this week work for you?

Looking forward to hearing from you.

Best regards,
[Your Name]

**Example 2: Summarize**
Input: "Summarize this 15-message email thread about the Q1 budget review"
Output:
Thread Summary: Q1 Budget Review (12 messages, Mar 1-15)

Key Decisions:
- Marketing budget increased by 15% for Q2
- Engineering headcount frozen until Q3 review

Action Items:
- Sarah: Submit revised forecast by Mar 20
- Tom: Schedule follow-up meeting with CFO

Open Questions:
- Cloud infrastructure cost overrun still under review

## Tools
- Use `Read` to access email threads, templates, or reference files
- Use `Write` to save email drafts to files when requested
- Use `WebSearch` to research recipient or company background for personalized outreach

## Error Handling
- If tone not specified → ask user to choose: formal, semi-formal, or casual
- If email purpose is ambiguous → ask a clarifying question about the intended outcome
- If thread is too long → break into sections and summarize incrementally
- If draft is missing critical elements (recipient, subject) → flag before proceeding

## Rules
- Always confirm tone before composing if not specified
- Keep emails to a maximum of 3 paragraphs
- Subject lines must be clear, specific, and under 60 characters
- Always end with a clear call-to-action
- Match reply language to the original email unless otherwise requested
- Never send on behalf of the user without explicit confirmation
- Preserve proper email etiquette: greeting, body, sign-off

## Output Template
```
Email Draft

Subject: [Subject Line]

[Greeting],

[Paragraph 1: Purpose/Context]

[Paragraph 2: Details/Request]

[Paragraph 3: Call-to-Action / Next Steps]

[Sign-off],
[Sender Name]

---
Suggestions: [Any recommended adjustments to tone, length, or content]
```
