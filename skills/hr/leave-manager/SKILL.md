---
name: leave-manager
description: Manages employee leave requests, tracks balances, calculates entitlements, and maintains leave calendars. Use when the user asks to process a leave request, check leave balance, plan team coverage, or calculate leave entitlements per Vietnamese labor law.
---

# Leave Manager

## Quick Start
Process leave requests, track balances, and ensure compliance with Vietnamese labor law leave entitlements. Maintain team coverage visibility and flag potential conflicts.

## Workflow
1. Identify action: submit request, check balance, approve/reject, plan coverage, calculate entitlements
2. Verify leave type: annual, sick, maternity/paternity, personal, unpaid, public holiday
3. Check employee's remaining balance for the leave type
4. Validate against team calendar for coverage conflicts
5. Process the request with proper documentation
6. Update balance and notify relevant parties

## Examples

**Example 1: Leave Request Processing**
Input: "Employee John Smith requests 3 days of annual leave from 25-27/03/2026"
Output:
```
LEAVE REQUEST
=============
Employee:    John Smith
Employee ID: [ID]
Department:  [Department]
Request Date: 23/03/2026

REQUEST DETAILS
---------------
Leave Type:   Annual Leave
Period:       25/03/2026 — 27/03/2026 (3 working days)
Days Requested: 3

BALANCE CHECK
-------------
| Leave Type    | Entitlement | Used | Pending | Remaining |
|---------------|-------------|------|---------|-----------|
| Annual Leave  | 12 days     | 4    | 3       | 5         |
| Sick Leave    | —           | 1    | 0       | Per policy|
| Personal Leave| 3 days      | 0    | 0       | 3         |

Status: ✅ Sufficient balance (5 days remaining after this request)

COVERAGE CHECK
--------------
Team members on leave 25-27/03:
- Jane Doe: 25/03 (1 day)
- No other conflicts

Coverage: ✅ Adequate — 80% team available

APPROVAL WORKFLOW
-----------------
1. [ ] Direct Manager approval
2. [ ] HR confirmation
3. [ ] Calendar updated

RECOMMENDATION: Approve — sufficient balance and no coverage issues.
```

**Example 2: Entitlement Calculation**
Input: "Calculate annual leave for an employee with 8 years of seniority"
Output:
```
LEAVE ENTITLEMENT
=================
Per Vietnamese Labor Code 2019:

Base annual leave: 12 days/year
Seniority bonus: +1 day per 5 years of service
Employee seniority: 8 years → +1 bonus day

Total Annual Leave: 13 days/year
Public Holidays: 11 days/year (per government decree)
```

## Tools
- Use `Read` to load leave records, team calendars, and policy files
- Use `Write` to save leave requests and updated balances
- Use `Grep` to search for employee records or overlapping leave dates
- Use `Bash` to calculate business days and entitlements

## Error Handling
- If leave balance is insufficient → reject with balance details and suggest alternatives
- If team coverage drops below 50% → flag as risk and suggest alternative dates
- If leave type not specified → ask employee to classify the leave type
- If dates include public holidays → exclude them from the working day count

## Rules
- Vietnamese Labor Code 2019 base entitlements: 12 days annual leave, +1 day per 5 years seniority
- Public holidays per government decree (currently 11 days/year)
- Sick leave requires medical certificate for absences >2 consecutive days
- Maternity leave: 6 months (female employees per labor law)
- Paternity leave: 5-7 days depending on circumstances
- Leave requests must be submitted at least 3 working days in advance (except emergencies)
- Always check team coverage before recommending approval
- Weekend days (Sat/Sun) are excluded from working day calculations
- Carry-over policy: per company rules (note if not specified)

## Output Template
```
LEAVE REQUEST
=============
Employee: [Name]
Department: [Department]

REQUEST DETAILS
---------------
Leave Type: [Type]
Period: [Start] — [End] ([N] working days)

BALANCE CHECK
-------------
| Leave Type | Entitlement | Used | Pending | Remaining |
|------------|-------------|------|---------|-----------|

COVERAGE CHECK
--------------
[Team availability during requested period]

RECOMMENDATION: [Approve / Reject / Pending — with rationale]
```
