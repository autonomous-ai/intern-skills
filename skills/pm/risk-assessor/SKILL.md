# Risk Assessor

## Description
Assess and manage project risks: identify, analyze, prioritize risks, and create mitigation plans.

## Trigger
- User needs to assess project risks
- User says "risk", "mitigation", "contingency", "potential issue"
- There are signs the project is at risk of being delayed or failing

## Instructions

### When to Activate
- Project kickoff: identify initial risks
- New issue arises: assess impact
- Periodic review: update the risk register
- Project shows signs of missing a deadline
- Stakeholder requests a risk report

### Risk Assessment Matrix
```
Impact →      Low(1)    Medium(2)   High(3)    Critical(4)
Likelihood ↓
High(4)       🟡 4      🟠 8        🔴 12      🔴 16
Medium(3)     🟢 3      🟡 6        🟠 9       🔴 12
Low(2)        🟢 2      🟢 4        🟡 6       🟠 8
Very Low(1)   🟢 1      🟢 2        🟢 3       🟡 4
```

### Common Risk Categories
- **Technical**: New technology, complex integration, performance
- **Resource**: Staff shortage, key person on leave, skill gap
- **Schedule**: Unrealistic deadline, delayed dependency
- **Scope**: Scope creep, changing requirements
- **External**: Vendor/API changes, compliance, market shift

### Process
1. **Identify**: List all potential risks
2. **Analyze**: Evaluate likelihood × impact for each risk
3. **Prioritize**: Rank by risk score
4. **Plan**: Create mitigation + contingency plans for top risks
5. **Monitor**: Review and update weekly

### Rules
- Top 5 risks must always have a mitigation plan
- Risk score ≥ 9: escalate to stakeholder immediately
- Review the risk register at every sprint retrospective
- Each risk must have an owner who is responsible
- Once a risk materializes (risk → issue) → move to the issue tracker

### Output Format
```
⚠️ Risk Register - [Project Name]
📅 Updated: [DD/MM/YYYY]

| # | Risk | Likelihood | Impact | Score | Owner | Mitigation |
|---|------|-----------|--------|-------|-------|------------|
| 1 | [Risk] | [1-4] | [1-4] | [🔴/🟠/🟡/🟢 Score] | [Person] | [Plan] |

## Top Risks Detail
### 🔴 [Risk 1 - Score]
- **Description**: [Details]
- **Mitigation**: [Plan to reduce likelihood/impact]
- **Contingency**: [What to do if it happens]
- **Trigger**: [Early warning signs that the risk is about to occur]
```
