---
name: payroll-helper
description: Assists with payroll calculations including gross-to-net salary, social insurance contributions, personal income tax, and payslip generation per Vietnamese regulations. Use when the user asks to calculate salary, compute tax, generate payslips, or understand payroll deductions.
---

# Payroll Helper

## Quick Start
Calculate gross-to-net salary with Vietnamese social insurance, health insurance, unemployment insurance, and personal income tax (PIT). Generate structured payslips and explain deduction breakdowns.

## Workflow
1. Gather salary information: gross salary, allowances, dependents, insurance base
2. Calculate mandatory insurance contributions (employee + employer portions)
3. Calculate taxable income after deductions and personal allowances
4. Apply progressive PIT rates to determine tax amount
5. Calculate net salary (gross - insurance - PIT)
6. Generate a structured payslip with full breakdown

## Examples

**Example 1: Gross-to-Net Calculation**
Input: "Calculate net salary for an employee with gross 25,000,000 VND, 1 dependent"
Output:
```
PAYROLL CALCULATION
===================
Employee: [Name]
Period: March 2026
Gross Salary: 25,000,000 VND

INSURANCE CONTRIBUTIONS (Employee)
-----------------------------------
Insurance base: 25,000,000 VND (capped at 46,800,000 VND)

| Type                        | Rate | Amount        |
|-----------------------------|------|---------------|
| Social Insurance (BHXH)     | 8%   | 2,000,000 VND |
| Health Insurance (BHYT)     | 1.5% | 375,000 VND   |
| Unemployment Insurance (BHTN)| 1%  | 250,000 VND   |
| TOTAL Employee Insurance    | 10.5%| 2,625,000 VND |

PERSONAL INCOME TAX (PIT)
--------------------------
Gross Salary:                   25,000,000 VND
(-) Insurance contributions:    -2,625,000 VND
(-) Personal deduction:        -11,000,000 VND
(-) Dependent deduction (×1):   -4,400,000 VND
(=) Taxable Income:              6,975,000 VND

PIT Calculation (Progressive rates):
| Bracket            | Rate | Taxable Amount | Tax       |
|--------------------|------|----------------|-----------|
| 0 - 5,000,000      | 5%   | 5,000,000      | 250,000   |
| 5,000,001 - 10,000,000 | 10%  | 1,975,000  | 197,500   |
| TOTAL PIT          |      |                | 447,500   |

NET SALARY
----------
Gross Salary:          25,000,000 VND
(-) Insurance:         -2,625,000 VND
(-) PIT:                 -447,500 VND
(=) NET SALARY:        21,927,500 VND

EMPLOYER COST
-------------
| Type                | Rate  | Amount        |
|---------------------|-------|---------------|
| Social Insurance    | 17.5% | 4,375,000 VND |
| Health Insurance    | 3%    | 750,000 VND   |
| Unemployment Ins.   | 1%    | 250,000 VND   |
| Total Employer Ins. | 21.5% | 5,375,000 VND |
| TOTAL EMPLOYER COST |       | 30,375,000 VND|
```

**Example 2: Payslip**
Input: "Generate a payslip for this employee"
Output: A formatted payslip document with all line items ready for distribution.

## Tools
- Use `Read` to load salary data, employee records, or tax tables
- Use `Write` to save payslips and payroll reports
- Use `Bash` to perform batch calculations

## Error Handling
- If gross salary not specified → ask for the amount
- If number of dependents unknown → calculate with 0 and note the assumption
- If insurance base exceeds cap → apply the current cap (20× base salary)
- If allowances have special tax treatment → note which are taxable vs non-taxable

## Rules
- Vietnamese PIT progressive rates (2024 rates, verify annually):
  - Up to 5M: 5% | 5-10M: 10% | 10-18M: 15% | 18-32M: 20% | 32-52M: 25% | 52-80M: 30% | >80M: 35%
- Personal deduction: 11,000,000 VND/month
- Dependent deduction: 4,400,000 VND/month per registered dependent
- Insurance rates (employee): BHXH 8%, BHYT 1.5%, BHTN 1%
- Insurance rates (employer): BHXH 17.5%, BHYT 3%, BHTN 1%
- Insurance base capped at 20× base salary (currently 46,800,000 VND)
- Non-taxable allowances: transportation (limited), phone, uniform per policy
- Always show both employee and employer contribution portions
- Currency: VND, rounded to nearest whole number

## Output Template
```
PAYROLL CALCULATION
===================
Employee: [Name]
Period: [Month Year]
Gross Salary: [Amount] VND

INSURANCE CONTRIBUTIONS
-----------------------
| Type | Rate | Amount |
|------|------|--------|

PIT CALCULATION
---------------
Taxable Income: [Amount] VND
PIT Amount: [Amount] VND

NET SALARY: [Amount] VND

EMPLOYER COST: [Amount] VND
```
