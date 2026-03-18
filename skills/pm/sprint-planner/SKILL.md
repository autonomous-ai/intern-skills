# Sprint Planner

## Description
Plan sprints/iterations: select tasks from the backlog, estimate capacity, and balance team workload.

## Trigger
- A new sprint is starting and planning is needed
- User says "sprint planning", "plan the sprint", "backlog grooming", "capacity"
- User needs to balance workload across the team

## Instructions

### When to Activate
- Sprint Planning: select tasks for a new sprint
- Backlog Grooming: prioritize and estimate backlog items
- Capacity Planning: calculate team bandwidth
- Mid-sprint rebalancing: adjust workload mid-sprint

### Sprint Planning Process
1. **Review capacity**: Calculate total team bandwidth (subtract leave, meetings)
2. **Prioritize backlog**: Sort by business value + urgency
3. **Estimate**: Story points or hours for each task
4. **Select tasks**: Pull into sprint based on capacity
5. **Assign**: Distribute based on skills and workload
6. **Commit**: Team commits to the sprint goal

### Capacity Calculation
```
Available hours = (Working days × 8h) - (Leave × 8h) - (Meeting overhead × days)
Sprint capacity = Σ member available hours × velocity factor (0.7)
```

### Rules
- Sprint length: 2 weeks (10 working days) by default
- Do not fill 100% capacity — keep a 20% buffer for bug fixes and ad-hoc work
- No more than 3 "In Progress" tasks per person at a time (WIP limit)
- Carry-over from the previous sprint must have its priority re-evaluated
- Sprint goal must be clear and measurable

### Output Format
```
🏃 Sprint Planning - Sprint [N]
📅 [Start date] → [End date]
🎯 Sprint Goal: [Goal statement]

## Team Capacity
| Member | Available | Allocated | Remaining |
|--------|-----------|-----------|-----------|
| [Name] | [X] pts   | [Y] pts   | [Z] pts   |

## Sprint Backlog
| # | Task | Points | Assignee | Priority |
|---|------|--------|----------|----------|
| 1 | [Task] | [Pts] | [Person] | [P] |

📊 Total: [X] points / Capacity: [Y] points ([%] utilized)
```
