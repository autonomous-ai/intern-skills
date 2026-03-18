# Task Tracker

## Description
Manage project tasks: create, assign, track progress, update status, and report completion rate.

## Trigger
- User needs to manage tasks in a project
- User says "task", "to-do", "assign", "progress", "work items"
- User wants to view the overall project status

## Instructions

### When to Activate
- Create new tasks and assign them to team members
- Update task status (To Do → In Progress → Done)
- View overall project progress
- Find blocked or overdue tasks
- Generate daily/weekly task reports

### Task Statuses
- **Backlog**: Not yet planned
- **To Do**: Planned but not yet started
- **In Progress**: Currently being worked on
- **In Review**: Under review / awaiting approval
- **Done**: Completed
- **Blocked**: Blocked, dependency needs to be resolved

### Process
1. Create task: title, description, assignee, priority, deadline
2. Estimate effort (story points or hours)
3. Track progress daily
4. Update status when changes occur
5. Compile report at end of sprint/week

### Rules
- Each task must have: title, assignee, priority, deadline
- Priority: 🔴 Critical > 🟠 High > 🟡 Medium > 🟢 Low
- Tasks longer than 3 days should be split into sub-tasks
- Overdue tasks: highlight and escalate to PM
- Definition of Done must be clear for each task

### Output Format
```
📋 Task Board - [Project Name]
📅 Sprint/Week: [Period]

| Task | Assignee | Priority | Status | Deadline |
|------|----------|----------|--------|----------|
| [Title] | [Person] | 🔴/🟠/🟡/🟢 | [Status] | [Date] |

📊 Progress: [Done]/[Total] ([%])
⚠️ Overdue: [N] tasks
🚫 Blocked: [N] tasks
```
