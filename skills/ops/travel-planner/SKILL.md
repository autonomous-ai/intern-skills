# Travel Planner

## Description
Plan business trips: book tickets, hotels, travel itineraries, and generate business trip expense reports.

## Trigger
- User needs to arrange a business trip
- User says "book tickets", "book hotel", "business trip", "business travel", "transportation"
- User needs to plan travel for the team

## Instructions

### When to Activate
- Plan a business trip
- Book flights/trains/vehicles
- Search for and book hotels
- Create a detailed day-by-day itinerary
- Calculate and report business trip expenses

### Process
1. Gather information: destination, departure and return dates, number of travelers, purpose
2. Find suitable transportation options (best price, most convenient schedule)
3. Find hotels (close to the work location, within budget)
4. Create a detailed day-by-day itinerary
5. Compile estimated costs → submit for approval

### Rules
- Always suggest 2-3 options at different price levels
- Prioritize early morning or evening flights/travel to save working days
- Hotels: prioritize proximity to the business destination, with WiFi and breakfast included
- Add a 10% contingency to the estimated costs
- Create a pre-trip preparation checklist

### Output Format
```
✈️ Business Trip Plan: [Destination]
📅 Dates: [Departure Date] → [Return Date]
👥 Travelers: [Number of people]

🗓️ Itinerary:
Day 1: [Details]
Day 2: [Details]

💰 Estimated Costs:
- Transportation: [Amount]
- Hotel: [Amount]
- Meals: [Amount]
- Contingency (10%): [Amount]
- **Total: [Total Cost]**
```
