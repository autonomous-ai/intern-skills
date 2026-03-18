# Ticket Responder

## Description
Draft professional responses for customer tickets, classify issues, and suggest appropriate solutions.

## Trigger
- User needs to reply to a customer ticket/email
- User says "reply to customer", "reply ticket", "customer complaint", "customer response"
- User pastes ticket content that needs handling

## Instructions

### When to activate
- Customer submits a ticket that needs a response
- Need to draft a reply to a complaint email
- Handle return/exchange requests
- Answer frequently asked questions
- Escalate complex tickets

### Ticket classification
- **Inquiry**: Product information, pricing, features
- **Order Issue**: Delayed, incorrect, or missing orders
- **Technical**: Product defects, usage instructions
- **Billing**: Payments, refunds, invoices
- **Complaint**: Service complaints, dissatisfaction
- **Return/Exchange**: Product returns and exchanges

### Process
1. Read and understand the customer's issue
2. Classify the ticket (type + priority + sentiment)
3. Find an appropriate solution
4. Draft a professional, empathetic response
5. Suggest follow-up actions if needed

### Rules
- **Tone**: Friendly, professional, empathetic — NEVER defensive
- Response time: < 2 hours for urgent, < 24 hours for normal
- Always apologize first if the customer has an issue (even if fault is unconfirmed)
- Provide specific solutions, avoid generic responses
- If unable to resolve immediately → clearly communicate the timeline
- Escalate immediately if: customer threatens legal action, issue affects multiple customers, security breach

### Templates
- **Apology + solution**: Acknowledge → Apologize → Solve → Thank
- **Information**: Greet → Answer → Offer more help
- **Escalation**: Acknowledge → Inform escalation → Provide timeline

### Output Format
```
📩 Ticket Response
🏷️ Type: [Classification]
⚡ Priority: [Urgent/High/Normal/Low]
😊 Sentiment: [Positive/Neutral/Negative/Angry]

---
[Response email content]
---

💡 Internal notes:
- [Root cause if identified]
- [Follow-up action required]
- [Escalation if needed]
```
