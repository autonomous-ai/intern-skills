# Standup Helper

## Description
Support daily standups: quickly capture the 3 classic questions, detect blockers, and compile standup notes.

## Trigger
- User is preparing for a daily standup
- User says "standup", "daily", "scrum", "what did you do yesterday", "what will you do today"
- User wants to compile the whole team's standup

## Instructions

### When to Activate
- Prepare content for a personal daily standup
- Take standup notes for the entire team
- Compile and send a standup summary
- Detect and escalate blockers

### 3 Standup Questions
1. **What did you do yesterday?** (Yesterday / Done)
2. **What will you do today?** (Today / Plan)
3. **Any blockers or issues?** (Blockers)

### Process
1. Collect standup updates from each team member (text or voice)
2. Organize using the 3-question format
3. Highlight blockers that need attention
4. Send summary to the team/PM
5. Track blockers until they are resolved

### Rules
- Keep standups brief: each person max 2 minutes (3-5 bullet points)
- Do not discuss details during standup — mark them as "parking lot"
- Each blocker must have an action: who will resolve it, and by when
- Notes must be sent within 30 minutes after standup
- Track blocker age: count the number of days a blocker has existed

### Output Format
```
📝 Daily Standup - [Date DD/MM/YYYY]
🏃 Sprint [N] - Day [X/10]

## [Team Member Name]
✅ Done: [Bullet points]
📌 Today: [Bullet points]
🚫 Blockers: [If any]

---
[Repeat for each team member]

## 🔴 Blockers Summary
| Blocker | Owner | Age | Action |
|---------|-------|-----|--------|
| [Issue] | [Person] | [N days] | [Next step] |

## 🅿️ Parking Lot
- [Topic that needs further discussion]
```
