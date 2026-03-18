---
name: tax-helper
description: Calculates Vietnamese taxes (VAT, PIT, CIT, FCT, import tax), performs gross-to-net salary conversions, and provides filing checklists with legal citations. Use when the user asks about tax rates, tax calculations, gross-to-net conversion, tax deadlines, or Vietnamese tax regulations.
---

# Tax Helper

## Quick Start
Calculate Vietnamese taxes step by step with legal citations. Supports VAT, Personal Income Tax (PIT), Corporate Income Tax (CIT), Foreign Contractor Tax (FCT), and import tax. All results include a disclaimer recommending confirmation with a certified accountant.

## Workflow
1. Identify the tax type: VAT, PIT, CIT, FCT, or Import Tax
2. Determine the task: calculation, regulation lookup, filing checklist, deadline reminder, or gross/net conversion
3. Extract inputs: income amount, revenue, number of dependents, goods category, period
4. Load applicable tax rates and legal references
5. For PIT: apply personal deduction (11,000,000 VND/month) and dependent deduction (4,400,000 VND/person/month)
6. Perform step-by-step calculation showing all intermediate results
7. Cross-verify arithmetic accuracy
8. Cite legal basis for every rate and deduction
9. Include disclaimer and relevant deadline reminders

## Examples

**Example 1: Gross-to-net salary**
Input: "Convert 30,000,000 VND gross salary to net, 1 dependent"
Output:
```
TAX CALCULATION: PIT - Gross to Net
====================================

INPUT
-----
- Gross salary: 30,000,000 VND/month
- Dependents: 1

CALCULATION
-----------
Step 1: Social insurance (8%)
       30,000,000 x 8% = 2,400,000 VND

Step 2: Health insurance (1.5%)
       30,000,000 x 1.5% = 450,000 VND

Step 3: Unemployment insurance (1%)
       30,000,000 x 1% = 300,000 VND

Step 4: Total insurance deductions
       2,400,000 + 450,000 + 300,000 = 3,150,000 VND

Step 5: Personal deduction
       11,000,000 VND

Step 6: Dependent deduction
       4,400,000 x 1 = 4,400,000 VND

Step 7: Taxable income
       30,000,000 - 3,150,000 - 11,000,000 - 4,400,000 = 11,450,000 VND

Step 8: PIT (progressive brackets)
       5,000,000 x 5% = 250,000
       5,000,000 x 10% = 500,000
       1,450,000 x 15% = 217,500
       Total PIT = 967,500 VND

RESULT
------
Net salary:      25,882,500 VND
Total deductions: 4,117,500 VND
Effective rate:   3.2%

LEGAL BASIS
-----------
- Circular 111/2013/TT-BTC on PIT guidelines
- Law on Social Insurance 58/2014/QH13

DISCLAIMER
----------
These results are for reference purposes only. Please confirm with a
qualified accountant or tax advisor before making filing decisions.
```

**Example 2: VAT calculation**
Input: "Calculate 10% VAT on a 50,000,000 VND consulting service"
Output:
```
TAX CALCULATION: VAT
====================

INPUT
-----
- Service: Consulting
- Amount before VAT: 50,000,000 VND
- VAT rate: 10%

CALCULATION
-----------
Step 1: VAT amount
       50,000,000 x 10% = 5,000,000 VND

Step 2: Total amount including VAT
       50,000,000 + 5,000,000 = 55,000,000 VND

RESULT
------
VAT payable:     5,000,000 VND
Total with VAT:  55,000,000 VND

LEGAL BASIS
-----------
- Law on VAT 13/2008/QH12 (amended)
- Decree 209/2013/ND-CP

DISCLAIMER
----------
These results are for reference purposes only. Please confirm with a
qualified accountant or tax advisor before making filing decisions.
```

## Tools
- Use `Read` to load tax rate tables, regulation references, and filing checklists
- Use `Grep` to search for specific tax regulations, HS codes, or industry-specific rates
- Use `Bash` to perform multi-step tax calculations and bracket computations
- Use `Write` to save tax computation worksheets or filing checklists

## Error Handling
- If tax type cannot be determined -> present supported tax types and ask user to specify
- If required inputs are missing (income, dependents, goods category) -> ask user to provide them
- If user references an outdated regulation -> apply the current regulation and cite the update
- If calculation produces an unexpected result (negative tax, invalid rate) -> recheck inputs and flag the anomaly

## Rules
- Always apply the latest Vietnamese tax regulations in force
- Cite legal basis (circular, decree number) for every rate and deduction
- Include disclaimer on every output: results are for reference only
- PIT deductions: personal 11,000,000 VND/month, dependent 4,400,000 VND/person/month
- VAT supported rates: 0%, 5%, 8%, 10%
- CIT standard rate: 20%
- Show all intermediate calculation steps
- Default currency is VND; support USD conversions when requested
- Remind about filing deadlines when relevant (5 days before due date)

## Output Template
```
TAX CALCULATION: [Tax Type]
============================

INPUT
-----
- [Input field]: [Value]

CALCULATION
-----------
Step 1: [Description]
       [Formula] = [Result]

Step 2: [Description]
       [Formula] = [Result]

RESULT
------
Tax payable:     [Final tax amount]
Effective rate:  [Effective tax percentage]%

LEGAL BASIS
-----------
- [Circular/Decree number and description]

DEADLINES
---------
- [Relevant filing deadline, if applicable]

DISCLAIMER
----------
These results are for reference purposes only. Please confirm with a
qualified accountant or tax advisor before making filing decisions.
```
