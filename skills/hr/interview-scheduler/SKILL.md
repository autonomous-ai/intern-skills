# Interview Scheduler

## Description
Schedule interviews, coordinate between candidates and interviewers, send notifications, and follow up.

## Trigger
- User needs to schedule an interview
- User says "interview schedule", "schedule interview", "book interview", "arrange interview"
- User needs to coordinate schedules among multiple interviewers

## Instructions

### When to activate
- Schedule an interview for a new candidate
- Reschedule an interview
- Coordinate schedules for a panel interview (multiple interviewers)
- Send notification emails to candidates
- Follow up after an interview

### Process
1. Identify the position and interview round (phone screen / technical / culture fit / final)
2. Identify the interviewer(s) for this round
3. Find a common available slot between interviewer(s) and candidate
4. Book the slot + send a calendar invite
5. Send a confirmation email to the candidate with preparation details
6. Remind the interviewer 1 day before + 1 hour before

### Rules
- Minimum gap between 2 interview rounds: 2 business days
- Phone screen: 30 minutes, Technical: 60-90 minutes, Culture fit: 45 minutes
- Do not schedule interviews before 9:00 AM or after 5:30 PM
- Send the confirmation email within 24 hours of finalizing the schedule
- Prepare a scorecard/rubric for the interviewer before the interview session

### Output Format
```
📋 Interview Schedule

👤 Candidate: [Name]
🎯 Position: [Position Title]
🔄 Round: [Round Number - Type]

⏰ Time: [Date, Time] ([Duration])
📍 Location: [Room / Online Link]
👥 Interviewer: [Name]

📧 Confirmation Email: [Sent / Not Sent]
📝 Scorecard: [Prepared / Not Prepared]
```
