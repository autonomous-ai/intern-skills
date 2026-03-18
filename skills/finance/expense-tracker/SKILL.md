---
name: expense-tracker
description: Tracks and categorizes business expenses, calculates budget impact, and flags overspending. Use when the user asks to record an expense, check reimbursement status, review spending by category, or reconcile costs against a department budget.
---

# Expense Tracker

## Quick Start
Record, categorize, and monitor business expenses against budgets. Validate documentation, detect duplicates, and alert when spending approaches category limits.

## Workflow
1. Parse expense details from user input: item, amount, date, category, department, project
2. Classify into a category: Operations, HR, Marketing, IT, Travel, or Other
3. Ask for any missing required fields (amount, date, category)
4. Check for duplicate entries in existing records
5. Calculate budget impact: cumulative spend, remaining budget, percentage used
6. Flag expenses over 5,000,000 VND for manager approval
7. Generate alerts if spending reaches 80%+ of category budget
8. Output structured expense record with budget status

## Examples

**Example 1: Recording an office expense**
Input: "Log 12,500,000 VND for new office chairs, Operations department, March 15"
Output:
```
EXPENSE RECORD
==============
Date:          15/03/2026
Category:      Operations
Department:    Operations
Amount:        12,500,000 VND
Description:   New office chairs
Documentation: Not yet available
Approval:      Required (>5,000,000 VND)

BUDGET STATUS (Operations)
==========================
Spent this period:   45,200,000 VND
Total budget:        100,000,000 VND
Remaining:           54,800,000 VND
Usage:               45.2%
Alert:               None
```

**Example 2: Near-budget warning**
Input: "Record 8,000,000 VND for Google Ads campaign, Marketing dept"
Output:
```
EXPENSE RECORD
==============
Date:          18/03/2026
Category:      Marketing
Department:    Marketing
Amount:        8,000,000 VND
Description:   Google Ads campaign
Documentation: Not yet available
Approval:      Required (>5,000,000 VND)

BUDGET STATUS (Marketing)
==========================
Spent this period:   42,000,000 VND
Total budget:        50,000,000 VND
Remaining:           8,000,000 VND
Usage:               84.0%
Alert:               Warning: approaching limit (>80%)
```

## Tools
- Use `Read` to load budget files and historical expense data
- Use `Grep` to search for duplicate or related expense entries
- Use `Write` to persist new expense records and update running totals
- Use `Bash` to run calculations on aggregated expense data

## Error Handling
- If required fields are missing (amount, date, category) -> ask user to provide them
- If expense category is unclear -> present the category list and ask user to choose
- If budget data is unavailable -> record the expense but note budget comparison is not possible
- If duplicate entry is detected -> warn user and ask for confirmation before recording

## Rules
- All expenses must reference supporting documents (invoices, receipts)
- Alert when spending reaches 80% of category budget
- Default currency is VND; support USD when specified
- Expenses over 5,000,000 VND require manager approval notation
- Every expense must be tied to a category, department, and date
- Round to nearest whole number for VND; two decimal places for USD

## Output Template
```
EXPENSE RECORD
==============
Date:          [DD/MM/YYYY]
Category:      [Expense category]
Department:    [Department name]
Amount:        [Amount in VND or USD]
Description:   [Detailed description]
Documentation: [Available / Not yet available]
Approval:      [Required / Not required]

BUDGET STATUS ([Category])
==========================
Spent this period:   [Cumulative amount]
Total budget:        [Allocated budget]
Remaining:           [Remaining amount]
Usage:               [Percentage used]%
Alert:               [None / Warning: approaching limit / Over budget]

NOTES
=====
- [Any additional observations, warnings, or required actions]
```
