# Timeline Generator

## Description
Create a text-based timeline/Gantt chart for a project, identify milestones, dependencies, and the critical path.

## Trigger
- User needs to create a timeline/roadmap for a project
- User says "timeline", "roadmap", "Gantt", "project schedule", "milestone"
- User needs to estimate the project completion date

## Instructions

### When to Activate
- New project kickoff: create the project timeline
- Stakeholder requests a roadmap
- Need to estimate the delivery date
- Adjust timeline after scope/resource changes

### Process
1. Gather: list of tasks/phases, effort estimates, dependencies
2. Identify the critical path (the longest chain of tasks)
3. Allocate resources to each phase
4. Set milestones at key checkpoints
5. Generate a text-based visual timeline

### Rules
- Add a 20% buffer to each phase (not just the total project)
- Milestones must be tied to specific, measurable deliverables
- Dependencies must be explicit: Task B starts after Task A finishes
- Critical path tasks must be clearly highlighted
- Identify resource bottlenecks early

### Output Format
```
📅 Project Timeline - [Project Name]
⏱️ Duration: [Start] → [End] ([N weeks])
👥 Team size: [N people]

## Milestones
🏁 M1: [Milestone 1] - [Date]
🏁 M2: [Milestone 2] - [Date]
🏁 M3: [Milestone 3] - [Date]

## Timeline
Week 1-2  |████████| Phase 1: [Name]
Week 3    |████    | Phase 2: [Name] ← depends on Phase 1
Week 3-4  |  ██████| Phase 3: [Name] ← parallel with Phase 2
Week 5    |████████| Phase 4: [Name] ← depends on Phase 2 & 3
Week 6    |████    | Buffer & QA
          🏁 Go-live

## Critical Path
Phase 1 → Phase 2 → Phase 4 → Go-live
Total: [N weeks] (without buffer)

## Dependencies
- Phase 2 ← Phase 1 (finish-to-start)
- Phase 4 ← Phase 2 + Phase 3 (both must complete)

⚠️ Risks to timeline:
- [Risk 1]
- [Risk 2]
```
