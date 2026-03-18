# Escalation Helper

## Description
Guide the escalation process when a ticket exceeds handling capacity, route to the correct team, and track resolution.

## Trigger
- Complex ticket that needs to be escalated to a higher level
- User says "escalate", "need to escalate", "cannot handle", "need manager"
- Customer is angry, threatening, or issue is critical

## Instructions

### When to activate
- Issue exceeds the CS agent's authority
- Customer requests to speak with a manager
- System error affecting multiple customers
- Legal or security issues
- Ticket has exceeded SLA

### Escalation levels
- **L1 → L2**: Agent → Senior Agent (complex technical issues)
- **L2 → L3**: Senior → Team Lead (requires special approval: large refunds, exceptions)
- **L3 → L4**: Team Lead → Manager (serious complaints, PR risk)
- **Emergency**: → C-level (data breach, legal issues, media coverage)

### Escalation process
1. **Document**: Record full context, communication history, what has been tried
2. **Classify**: Determine the appropriate escalation level
3. **Route**: Transfer to the correct team/person
4. **Communicate**: Inform the customer about the escalation + timeline
5. **Track**: Monitor until resolved
6. **Close loop**: Notify the customer when resolved

### Rules
- NEVER make the customer explain everything again → transfer full context
- Communicate realistic timelines: "I will forward this to the responsible team, expect a response within 4 hours"
- Every escalation must include: reason, severity, expected resolution time
- Follow up every 2 hours for urgent, every 24 hours for normal
- Post-mortem for all L3+ escalations

### Output Format
```
🔺 Escalation Request

📋 Ticket: #[ID]
👤 Customer: [Name]
⚡ Severity: [L1/L2/L3/L4/Emergency]
🏷️ Category: [Issue type]

## Context
[Summary of the issue and handling history]

## Already tried
- [Action 1 → Result]
- [Action 2 → Result]

## Needed
- [Specific request from higher level]

## Route to
- Team: [Specific team/person]
- Expected response: [Timeline]
```
