---
name: travel-planner
description: Plans and organizes business trips including transportation, accommodation, itineraries, cost estimates, and pre-departure checklists. Use when the user asks to plan a business trip, book flights or hotels, create a travel itinerary, estimate travel expenses, or mentions per diem and travel budgets.
---

# Travel Planner

## Quick Start
Plan complete business trips with multi-tier options for transport and accommodation, day-by-day itineraries, cost breakdowns, and pre-departure checklists. Always present 2-3 options at different price levels and include a 10% contingency buffer.

## Workflow
1. Identify trip scope: destination(s), travel dates, number of travelers, business purpose
2. Gather constraints: budget limits, travel policy (class of service, hotel rating), preferred airlines, special requirements (visa, accessibility)
3. Research 2-3 transport options and 2-3 hotel options at budget, mid-range, and premium tiers
4. Build a day-by-day itinerary with travel time, work sessions, meals, and buffer periods
5. Calculate the total cost estimate with a 10% contingency buffer
6. Generate a pre-departure checklist and expense report template

## Examples

**Example 1: Domestic Trip**
Input: "Plan a 2-day business trip to Da Nang for 2 people, March 25-26. Budget around 10 million VND."
Output:
```
Business Trip Plan: Da Nang
---------------------------------------
Dates:      25/03/2026 - 26/03/2026
Travelers:  2
Purpose:    [To be confirmed]

Transportation Options:
| Option | Type   | Departure       | Arrival         | Price/person | Notes          |
|--------|--------|-----------------|-----------------|-------------|----------------|
| A      | Flight | 25/03 06:00 HCM | 25/03 07:20 DAD | 1,200,000   | VietJet early  |
| B      | Flight | 25/03 08:00 HCM | 25/03 09:20 DAD | 1,800,000   | VNA morning    |
| C      | Flight | 25/03 18:30 HCM | 25/03 19:50 DAD | 1,500,000   | VNA evening    |

Accommodation Options:
| Option | Hotel           | Location | Per Night | Rating | Includes         |
|--------|-----------------|----------|-----------|--------|------------------|
| A      | Fivitel Hotel   | 1.2 km   | 800,000   | 3*     | WiFi, breakfast  |
| B      | Sala Danang     | 0.5 km   | 1,500,000 | 4*     | WiFi, breakfast  |

Cost Estimate (2 travelers):
  Transportation:      4,800,000
  Accommodation:       1,600,000
  Meals:               1,200,000
  Local Transport:       400,000
  Contingency (10%):     800,000
  -------------------------
  TOTAL:               8,800,000

Pre-Trip Checklist:
  [ ] Travel approval obtained
  [ ] Tickets booked
  [ ] Hotel confirmed
  [ ] Itinerary shared with team
---------------------------------------
Status: Draft
```

**Example 2: International Trip**
Input: "I need to attend a conference in Singapore next month, April 10-13. Solo trip."
Output:
```
Business Trip Plan: Singapore
---------------------------------------
Dates:      10/04/2026 - 13/04/2026
Travelers:  1
Purpose:    Conference attendance

Note: Visa requirement check - Vietnam passport holders need a visa for Singapore.
      Added to pre-departure checklist.

[Transportation options, accommodation options, itinerary, cost estimate, and checklist follow same format]
---------------------------------------
Status: Draft
```

## Tools
- Use `Read` to load company travel policies, existing itineraries, or budget documents
- Use `Write` to save the finalized itinerary, cost estimate, or expense report
- Use `Grep` to search for prior trip records, vendor contacts, or policy details
- Use `Glob` to locate related travel documents, templates, or receipts

## Error Handling
- If travel dates are not specified → ask for at least an approximate date range
- If budget is not stated → ask for a budget range or apply default travel policy limits
- If destination requires a visa and user hasn't mentioned it → flag the visa requirement and add to checklist
- If no transport options fit the budget → present closest options and suggest alternatives (different dates, nearby airports, different class)
- If number of travelers is unclear → confirm headcount before calculating costs

## Rules
- Always present 2-3 options at different price levels for both transport and accommodation
- Prioritize early morning or evening departures to minimize lost working hours
- Hotels must prioritize proximity to the business destination, with WiFi and breakfast
- Add a 10% contingency to all cost estimates
- Every trip plan must include a pre-departure checklist
- Break down expenses by category: transport, hotel, meals, local transport, miscellaneous
- Never book or confirm anything without explicit user approval

## Output Template
```
Business Trip Plan: [Destination]
---------------------------------------
Dates:      [Departure Date] - [Return Date]
Travelers:  [Number] ([Names])
Purpose:    [Business purpose]

Transportation Options:
| Option | Type      | Departure  | Arrival    | Price      | Notes       |
|--------|-----------|------------|------------|------------|-------------|
| A      | [Flight]  | [DateTime] | [DateTime] | [Amount]   | [Details]   |
| B      | [Train]   | [DateTime] | [DateTime] | [Amount]   | [Details]   |

Accommodation Options:
| Option | Hotel         | Location     | Per Night | Rating | Includes     |
|--------|---------------|--------------|-----------|--------|--------------|
| A      | [Name]        | [Distance]   | [Amount]  | [Star] | [Amenities]  |
| B      | [Name]        | [Distance]   | [Amount]  | [Star] | [Amenities]  |

Day-by-Day Itinerary:
  Day 1 - [Date]: [Details with times]
  Day 2 - [Date]: [Details with times]

Cost Estimate:
  Transportation:      [Amount]
  Accommodation:       [Amount]
  Meals:               [Amount]
  Local Transport:     [Amount]
  Miscellaneous:       [Amount]
  Contingency (10%):   [Amount]
  -------------------------
  TOTAL:               [Amount]

Pre-Trip Checklist:
  [ ] Travel approval obtained
  [ ] Tickets booked
  [ ] Hotel confirmed
  [ ] Visa/documents ready (if applicable)
  [ ] Travel insurance arranged
  [ ] Itinerary shared with team
  [ ] Emergency contacts noted
---------------------------------------
Status: [Draft / Pending Approval / Confirmed]
```
