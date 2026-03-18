# CRM Helper

## Description
Assist with CRM management: update the pipeline, log activities, track deals, and create sales forecasts.

## Trigger
- User needs to update or look up CRM data
- User says "CRM", "pipeline", "deal", "opportunity", "sales forecast", "contact"
- User wants to view the sales pipeline status

## Instructions

### When to Activate
- Add/update a contact or deal in CRM
- View pipeline overview
- Log a sales activity (call, email, meeting)
- Create a sales forecast
- Analyze win/loss rate

### Sales Pipeline Stages
1. **Prospecting**: New lead, not yet qualified
2. **Qualified**: Already qualified (BANT passed)
3. **Proposal Sent**: Proposal/quotation has been sent
4. **Negotiation**: Currently negotiating price/terms
5. **Closed Won**: Deal won ✅
6. **Closed Lost**: Deal lost ❌

### Process
1. Log every interaction with the client (call, email, meeting)
2. Update the stage when the deal progresses
3. Record notes after each touchpoint
4. Forecast: probability × deal value = weighted pipeline
5. Review the pipeline weekly

### Activity Logging
```
📞 Call log:
- Contact: [Name]
- Duration: [Minutes]
- Outcome: [Connected / Voicemail / No answer]
- Notes: [Key takeaways]
- Next step: [Action + date]
```

### Rules
- Log the activity IMMEDIATELY after it happens (do not wait until end of day)
- Every deal must have a next step and date — do not let deals go stale
- Stale deals (> 30 days without activity) → review and decide
- Be honest with forecasts: do not inflate probability
- CRM is the single source of truth — all sales information lives here

### Output Format
```
📊 Sales Pipeline Overview

## Summary
- Total deals: [N]
- Pipeline value: [Total $]
- Weighted value: [Weighted $]
- Avg deal size: [$]
- Win rate: [%]

## Pipeline by Stage
| Stage | Deals | Value | Avg Age |
|-------|-------|-------|---------|
| Prospecting | [N] | [$] | [N days] |
| Qualified | [N] | [$] | [N days] |
| Proposal | [N] | [$] | [N days] |
| Negotiation | [N] | [$] | [N days] |

## 🔥 Hot Deals (Closing this month)
| Deal | Client | Value | Stage | Close Date |
|------|--------|-------|-------|------------|
| [Deal] | [Client] | [$] | [Stage] | [Date] |

## ⚠️ At Risk
- [Deal]: [Reason + recommended action]
```
