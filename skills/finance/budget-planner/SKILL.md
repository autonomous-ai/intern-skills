---
name: budget-planner
description: Creates, adjusts, and analyzes budget plans with variance analysis, trend detection, and contingency reserves. Use when the user asks to build a budget, review spending vs. plan, forecast future costs, or allocate funds across departments or projects.
---

# Budget Planner

## Quick Start
Build and analyze budget plans for any scope (company, department, project) and period (monthly, quarterly, yearly). Separates fixed from variable costs, applies contingency reserves, and flags categories approaching their limits.

## Workflow
1. Determine budget scope: company-wide, department, or project
2. Identify budget period: monthly, quarterly, or yearly
3. Classify request: new budget, mid-period adjustment, variance analysis, or forecast
4. Gather baseline data: historical spending, known commitments, planned initiatives
5. Separate fixed costs (rent, salaries) from variable costs (marketing, travel)
6. Calculate allocations per category based on historical trends and stated priorities
7. Apply 5-10% contingency reserve
8. For variance analysis: compute actual vs. planned with absolute and percentage differences
9. Flag any category exceeding 70% of monthly allocation
10. Output budget document with summary, detail, insights, and recommendations

## Examples

**Example 1: Quarterly department budget**
Input: "Create a Q2 2026 budget for the Marketing department, total 200M VND"
Output:
```
BUDGET PLAN: Q2/2026 - Marketing Department
============================================

SUMMARY
-------
Total Budget:        200,000K VND
Contingency (10%):   20,000K VND
Allocable Budget:    180,000K VND

DETAIL BY CATEGORY
------------------
| Category          | Type     | Planned    |
|-------------------|----------|------------|
| Digital Ads       | Variable | 70,000K    |
| Events            | Variable | 40,000K    |
| Content Creation  | Variable | 30,000K    |
| Staff Salaries    | Fixed    | 25,000K    |
| Software/Tools    | Fixed    | 10,000K    |
| Print Materials   | Variable | 5,000K     |
| TOTAL             |          | 180,000K   |

RECOMMENDATIONS
---------------
- Prioritize digital ads with measurable ROI tracking
- Reserve event budget for Q2 product launch
- Review tool subscriptions for cost optimization
```

**Example 2: Variance analysis**
Input: "Compare January actual spending vs budget for IT department"
Output:
```
BUDGET PLAN: Jan/2026 - IT Department (Variance Analysis)
==========================================================

DETAIL BY CATEGORY
------------------
| Category        | Type     | Planned  | Actual   | Variance  | % Used |
|-----------------|----------|----------|----------|-----------|--------|
| Cloud Services  | Variable | 15,000K  | 18,200K  | +3,200K   | 121%   |
| Staff Salaries  | Fixed    | 40,000K  | 40,000K  | 0         | 100%   |
| Equipment       | Variable | 10,000K  | 6,500K   | -3,500K   | 65%    |
| Software        | Fixed    | 8,000K   | 8,000K   | 0         | 100%   |
| TOTAL           |          | 73,000K  | 72,700K  | -300K     | 99.6%  |

WARNINGS
--------
- Cloud Services: 21% over budget - investigate usage spike

RECOMMENDATIONS
---------------
- Review cloud resource provisioning to reduce overspend
- Reallocate unused equipment budget to cover cloud costs
```

## Tools
- Use `Read` to load historical budget files and prior-period actuals
- Use `Grep` to search for department or category spending patterns
- Use `Write` to save new or updated budget plans
- Use `Bash` to run aggregation, variance, and trend calculations

## Error Handling
- If period or scope is not specified -> ask user to define period and scope
- If historical data is unavailable -> create budget from scratch using estimates, noting the absence of baseline
- If actual data is incomplete for variance analysis -> analyze available data and note gaps
- If category totals exceed stated budget -> highlight overage and suggest rebalancing

## Rules
- Always include a 5-10% contingency reserve
- Clearly distinguish fixed costs from variable costs
- Compare with the same prior-year period when data is available
- Trigger early warning when any category exceeds 70% of monthly budget
- Use abbreviated formats: thousands (K), millions (M), billions (B)
- Category totals must sum to the overall budget total
- Round to nearest thousand for VND; two decimal places for USD

## Output Template
```
BUDGET PLAN: [Period] - [Scope]
================================

SUMMARY
-------
Total Budget:        [Total amount]
Contingency Reserve: [Reserve amount] ([Reserve %]%)
Allocable Budget:    [Total minus reserve]

DETAIL BY CATEGORY
------------------
| Category         | Type     | Planned    | Actual     | Variance   | % Used |
|------------------|----------|------------|------------|------------|--------|
| [Category name]  | [Fixed/Variable] | [Amount] | [Amount] | [+/- diff] | [%] |
| TOTAL            |          | [Sum]      | [Sum]      | [Sum]      | [%]    |

INSIGHTS
--------
- [Key spending trends or patterns]

WARNINGS
--------
- [Categories approaching or exceeding budget threshold]

RECOMMENDATIONS
---------------
- [Actionable recommendation]
```
