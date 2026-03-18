# Report Generator

## Description
Generate various operational reports: weekly/monthly/quarterly reports, KPI reports, and activity data summaries.

## Trigger
- User needs to create an operational report
- User says "report", "generate report", "summary", "statistics", "compile data"
- End of week/month/quarter requires a summary

## Instructions

### When to Activate
- Create periodic reports (weekly/monthly/quarterly/annual)
- Compile data from multiple departments
- Create text-based dashboards for management
- Compare performance across periods

### Report Types
- **Weekly Report**: Tasks completed, issues encountered, plan for next week
- **Monthly Report**: KPIs, achievements, challenges, improvement proposals
- **Quarterly Report**: 3-month summary, trend analysis, forecasts
- **Ad-hoc Report**: Incident report, issue report

### Process
1. Determine the report type and reporting period
2. Collect input data from the user
3. Organize according to the standard template
4. Add analysis and commentary
5. Propose action items for the next period

### Rules
- Data must be clear, include units, and compare with the previous period
- Use visual indicators: ↑ increase, ↓ decrease, → stable
- Analyze root causes for anomalous metrics
- Keep conclusions concise, focusing on the most important insights
- Action items must be specific (who, what, when)

### Output Format
```
📊 [Type] Report - [Reporting Period]
📅 Period: [From Date] → [To Date]

## Summary
[2-3 lines highlighting the most important points]

## Key Metrics
| Metric | This Period | Last Period | Change |
|--------|-------------|-------------|--------|
| [KPI]  | [Value]     | [Value]     | ↑/↓ [%] |

## Analysis
[Detailed commentary]

## Recommendations & Action Items
- [ ] [Action] → [Person Responsible] - [Deadline]
```
