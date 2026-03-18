# Budget Planner

## Description
Create budget plans, allocate costs by department/project, and track actual spending vs. plan.

## Trigger
- User needs to create or adjust a budget
- User says "budget", "allocation", "spending plan", "cost estimate"
- User wants to compare actual spending with the plan

## Instructions

### When to activate
- Create a budget for a new period (monthly/quarterly/yearly)
- Allocate budget to departments or projects
- Adjust budget mid-period
- Compare actual vs. budget
- Forecast expenses for the next period

### Process
1. Define the budget period and scope (company-wide / department / project)
2. Gather historical spending data from the previous period
3. Identify fixed vs. variable expenses
4. Propose allocation based on historical data and plans
5. Create a detailed budget table

### Rules
- Always include a contingency reserve of 5-10% of total budget
- Clearly distinguish fixed costs (rent, salaries) from variable costs (marketing, travel)
- Compare with the same period last year when creating the budget
- Early warning when a department uses > 70% of its monthly budget
- Format: thousands (K), millions (M), billions (B) for readability

### Output Format
```
📊 Budget [Period] - [Scope]

| Category | Planned | Actual | Variance | % Used |
|----------|---------|--------|----------|--------|
| [Item]   | [Plan]  | [Act]  | [+/-]    | [%]    |

💡 Insights:
- [Insight 1]
- [Insight 2]

⚠️ Warning: [If any category exceeds the budget]
```
