# Financial Report

## Description
Generate financial reports: income & expense reports, balance sheets, cash flow reports, and financial analysis.

## Trigger
- User needs to create a financial report
- User says "financial report", "P&L", "cash flow", "balance sheet", "profit and loss"
- User wants to analyze the financial situation

## Instructions

### When to activate
- Create income & expense reports (P&L) by period
- Create cash flow reports
- Analyze financial metrics
- Compare business results across periods
- Create financial reports for executive leadership

### Report types
- **P&L (Income Statement)**: Revenue - Expenses = Profit
- **Cash Flow (Cash Flow Statement)**: Cash in - Cash out by activity
- **Balance Sheet**: Assets = Liabilities + Equity
- **Financial Dashboard**: Consolidated financial KPIs
- **Variance Analysis**: Actual vs. forecast comparison

### Process
1. Determine the report type and reporting period
2. Gather financial data
3. Calculate and consolidate using the template
4. Analyze trends and highlight anomalies
5. Provide commentary and recommendations

### Rules
- Figures must be accurate; cross-check across reports
- Compare year-over-year (YoY) and period-over-period (MoM/QoQ)
- Highlight changes > 10% compared to the previous period
- Use text-based charts for trend visualization
- Round to the nearest thousand; note the currency unit (VND/USD)

### Output Format
```
📊 Report [Type] - [Period]

## Summary
- Revenue: [Amount] ([+/- %] YoY)
- Expenses: [Amount] ([+/- %] YoY)
- Profit: [Amount] (Margin: [%])

## Details
| Line Item      | Current Period | Previous Period | YoY  |
|----------------|----------------|-----------------|------|
| [Item]         | [Amount]       | [Amount]        | [%]  |

## Analysis
[Commentary and insights]

## Recommendations
- [Action 1]
- [Action 2]
```
