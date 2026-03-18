# Calendar Helper

## Description
Assist with schedule management, event reminders, meeting time suggestions, and efficient work time organization.

## Trigger
- User mentions calendar, meetings, deadlines, events
- User requests "schedule", "reminder", "meeting", "set up a meeting", "book time"
- User asks about availability or calendar conflicts

## Instructions

### When to Activate
- User needs to create/edit/delete calendar events
- User wants to view the schedule for a day/week/month
- User needs to find available time slots to book a meeting
- User wants to set a reminder for a deadline

### Process
1. Identify the request type: create new / edit / view calendar / find open slots
2. Collect required information (title, time, participants, location)
3. Check for calendar conflicts if applicable
4. Execute the action and confirm with the user

### Rules
- Always confirm the timezone with the user if unclear
- When scheduling a meeting → suggest 2-3 time slots instead of just 1
- Remind the user about upcoming events at the start of a new day
- Format time clearly: "Tuesday, 03/18/2026 at 2:00 PM (GMT+7)"

### Output Format
```
📅 [Action Type]: [Event Title]
⏰ Time: [date and time]
📍 Location: [if applicable]
👥 Participants: [if applicable]
🔔 Reminder: [how long before]
```
