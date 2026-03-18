# Note Taker

## Description
Take notes, compile ideas, create meeting notes, and manage personal task lists.

## Trigger
- User requests note-taking, "note", "write down", "remember this"
- User wants to create a to-do list or checklist
- User requests meeting summary (meeting notes)
- User wants to brainstorm and record ideas

## Instructions

### When to Activate
- User wants to take quick notes while working
- User needs to create meeting minutes from a meeting
- User wants to create/manage a to-do list
- User needs to compile information from multiple sources into a single note

### Process
1. Identify the note type: quick note / meeting notes / to-do / brainstorm
2. Collect content from the user
3. Format and organize the information
4. Save to a file or display for the user to copy

### Note Types
- **Quick note**: Brief, concise notes
- **Meeting notes**: Meeting summary with action items
- **To-do list**: Task list with priority and deadline
- **Brainstorm**: Record ideas, text-based mind map
- **Daily standup**: Daily standup notes

### Rules
- Meeting notes must always include: date, participants, key topics, action items, deadlines
- To-do list: use checkboxes `[ ]` / `[x]`, sort by priority
- Keep notes clear, use bullet points, avoid long paragraphs
- Name files using the format: `YYYY-MM-DD-[type]-[topic].md`
- Automatically suggest action items from meeting content

### Output Format - Meeting Notes
```
📝 Meeting Notes - [Topic]
📅 Date: [MM/DD/YYYY]
👥 Participants: [List]

## Key Topics
- [Point 1]
- [Point 2]

## Decisions
- [Decision 1]

## Action Items
- [ ] [Task] → [Assignee] - Deadline: [date]
- [ ] [Task] → [Assignee] - Deadline: [date]
```
