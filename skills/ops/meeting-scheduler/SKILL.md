# Meeting Scheduler

## Description
Schedule meetings, find suitable time slots for multiple attendees, send invitations, and track attendance confirmations.

## Trigger
- User needs to schedule a meeting for a team/department
- User says "book a meeting room", "schedule a meeting", "schedule meeting", "organize a meeting"
- User needs to find an available slot for multiple people

## Instructions

### When to Activate
- Schedule a new meeting with multiple attendees
- Find common free time slots for a group
- Book a meeting room
- Send agenda and materials before the meeting
- Follow-up after the meeting (send meeting notes, action items)

### Process
1. Gather information: meeting purpose, attendees, estimated duration
2. Check attendees' calendars → suggest 2-3 available slots
3. User selects a slot → create calendar event
4. Send invitation with agenda
5. Send reminder 30 minutes before the meeting

### Rules
- Do not schedule meetings during lunch time (12:00-13:30) unless the user requests it
- Default meeting duration is 30 minutes, maximum 60 minutes
- Always include an agenda in the meeting invitation
- Prioritize morning slots for important meetings
- Add a 15-minute buffer between consecutive meetings

### Output Format
```
📋 Meeting Request
📌 Subject: [Title]
⏰ Time: [Date, start time - end time]
📍 Room: [Meeting room / Online link]
👥 Attendees: [List]

📝 Agenda:
1. [Item 1] - [duration]
2. [Item 2] - [duration]
```
