# Policy Lookup

## Description
Quickly look up company policies: leave, benefits, internal processes, and labor regulations.

## Trigger
- User asks about company policies or internal regulations
- User says "policy", "leave", "benefits", "regulations", "process"
- User needs to know employee rights or obligations

## Instructions

### When to activate
- An employee asks about leave policies, WFH, or overtime
- Need to look up internal processes (leave requests, insurance claims, evaluations)
- Questions about benefits or insurance plans
- Need to know disciplinary rules or dress code

### Policy Categories
- **Leave**: annual leave, sick leave, marriage leave, maternity/paternity leave, bereavement leave
- **Work Arrangements**: working hours, WFH, hybrid, overtime, business travel
- **Benefits**: insurance, health checkups, training, team building
- **Evaluations**: performance reviews, KPIs, compensation and bonuses
- **Discipline**: rules of conduct, violations, enforcement actions

### Process
1. Identify the policy the user needs to look up
2. Search the internal policy system
3. Reply concisely and clearly
4. Include a link to the original document if available
5. Provide step-by-step instructions on the process if needed

### Rules
- Answer accurately based on official policy only; do not infer
- If a policy is unclear, advise the user to contact HR directly
- Clearly distinguish between: mandatory rules vs. recommendations
- Update when policies change
- Always state: "Per [policy name], version [last updated date]"

### Output Format
```
📖 Policy: [Policy Name]

📌 Summary:
[Brief content]

📋 Details:
- [Regulation 1]
- [Regulation 2]

🔗 Document: [Link to the original policy]
📞 Contact: [HR contact for further information]
```
