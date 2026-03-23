---
name: payroll-helper
description: Assists with payroll calculations including gross-to-net salary, federal and state tax withholdings, FICA contributions, and payslip generation per US regulations. Use when the user asks to calculate salary, compute tax withholdings, generate payslips, or understand payroll deductions.
---

# Payroll Helper

## Quick Start
Calculate gross-to-net salary with US federal income tax, state income tax, Social Security, Medicare, and other deductions. Generate structured payslips and explain withholding breakdowns.

## Workflow
1. Gather salary information: gross salary, filing status, allowances/W-4 info, state, pre-tax deductions
2. Calculate FICA contributions (Social Security + Medicare, employee + employer portions)
3. Determine pre-tax deductions: 401(k), health insurance, HSA, FSA
4. Calculate federal income tax withholding based on W-4 and tax brackets
5. Calculate state income tax (if applicable)
6. Calculate net pay (gross - FICA - federal tax - state tax - pre-tax deductions - post-tax deductions)
7. Generate a structured payslip with full breakdown

## Examples

**Example 1: Gross-to-Net Calculation**
Input: "Calculate net salary for an employee earning $85,000/year, single filer, no dependents, California"
Output:
```
PAYROLL CALCULATION
===================
Employee: [Name]
Period: March 2026 (Semi-Monthly)
Gross Pay (per period): $3,541.67

PRE-TAX DEDUCTIONS
-------------------
| Type                        | Amount     |
|-----------------------------|------------|
| 401(k) Contribution (6%)   | $212.50    |
| Health Insurance Premium    | $150.00    |
| TOTAL Pre-Tax Deductions    | $362.50    |

FICA CONTRIBUTIONS (Employee)
------------------------------
| Type                        | Rate   | Amount     |
|-----------------------------|--------|------------|
| Social Security (OASDI)    | 6.2%   | $219.58    |
| Medicare                    | 1.45%  | $51.35     |
| TOTAL Employee FICA        | 7.65%  | $270.93    |

FEDERAL INCOME TAX
-------------------
Gross Pay:                       $3,541.67
(-) Pre-tax deductions:           -$362.50
(=) Adjusted Gross (per period): $3,179.17
(-) Standard deduction (annualized, per period): -$608.33
(=) Taxable Income (per period): $2,570.84

Federal Withholding:              $310.25

STATE INCOME TAX (California)
------------------------------
CA Withholding:                   $152.80
CA SDI (1.1%):                     $38.96

NET PAY
-------
Gross Pay:              $3,541.67
(-) Pre-Tax Deductions:  -$362.50
(-) Employee FICA:       -$270.93
(-) Federal Tax:         -$310.25
(-) State Tax:           -$152.80
(-) CA SDI:               -$38.96
(=) NET PAY:            $2,406.23

EMPLOYER COST
-------------
| Type                     | Rate   | Amount     |
|--------------------------|--------|------------|
| Social Security (OASDI)  | 6.2%   | $219.58    |
| Medicare                  | 1.45%  | $51.35     |
| FUTA (0.6%)              | 0.6%   | $21.25     |
| CA SUI                   | varies | $35.42     |
| Employer 401(k) match    | 3%     | $106.25    |
| TOTAL EMPLOYER ADD-ONS   |        | $433.85    |
| TOTAL EMPLOYER COST      |        | $3,975.52  |
```

**Example 2: Payslip**
Input: "Generate a payslip for this employee"
Output: A formatted payslip document with all line items, YTD totals, and PTO balance.

## Tools
- Use `Read` to load salary data, employee records, or tax tables
- Use `Write` to save payslips and payroll reports
- Use `Bash` to perform batch calculations

## Error Handling
- If gross salary not specified → ask for the amount and pay frequency
- If filing status unknown → default to Single and note the assumption
- If state not specified → calculate federal only and prompt for state
- If pre-tax deductions unknown → show gross-to-net without optional deductions

## Rules
- Federal income tax brackets (2024, verify annually):
  - Single: 10% up to $11,600 | 12% $11,601-$47,150 | 22% $47,151-$100,525 | 24% $100,526-$191,950 | 32% $191,951-$243,725 | 35% $243,726-$609,350 | 37% over $609,350
  - Married Filing Jointly: brackets are approximately double
- Standard deduction: $14,600 (Single) | $29,200 (MFJ)
- FICA rates (employee): Social Security 6.2%, Medicare 1.45%
- FICA rates (employer): Social Security 6.2%, Medicare 1.45%
- Social Security wage base cap: $168,600 (2024)
- Additional Medicare tax: 0.9% on wages over $200,000 (Single)
- FUTA: 6.0% on first $7,000, reduced to 0.6% with state credit
- 401(k) contribution limit: $23,000/year ($30,500 if age 50+)
- State taxes vary — always specify which state is being calculated
- Always show both employee and employer contribution portions
- Currency: USD, rounded to two decimal places
- Support common pay frequencies: weekly, bi-weekly, semi-monthly, monthly

## Output Template
```
PAYROLL CALCULATION
===================
Employee: [Name]
Period: [Pay Period]
Gross Pay: $[Amount]

PRE-TAX DEDUCTIONS
-------------------
| Type | Amount |
|------|--------|

FICA CONTRIBUTIONS
------------------
| Type | Rate | Amount |
|------|------|--------|

FEDERAL INCOME TAX
-------------------
Federal Withholding: $[Amount]

STATE INCOME TAX ([State])
--------------------------
State Withholding: $[Amount]

NET PAY: $[Amount]

EMPLOYER COST: $[Amount]
```
