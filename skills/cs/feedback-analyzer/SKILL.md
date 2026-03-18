# Feedback Analyzer

## Description
Analyze customer feedback: sentiment analysis, topic classification, trend detection, and insight report generation.

## Trigger
- User has customer feedback that needs analysis
- User says "analyze feedback", "customer reviews", "sentiment", "what are customers saying"
- User needs a Voice of Customer (VoC) report

## Instructions

### When to activate
- Analyze batch feedback (surveys, reviews, NPS comments)
- Analyze a specific feedback to understand pain points
- Create periodic feedback trend reports
- Detect early warning signs from negative feedback
- Compile insights for the product/service team

### Analysis dimensions
- **Sentiment**: Positive / Neutral / Negative (score -1 to +1)
- **Topic**: Product, Delivery, Customer Service, Pricing, UX, etc.
- **Intent**: Praise, Complaint, Suggestion, Question
- **Urgency**: Needs immediate action / Monitor / Info only
- **Impact**: Affects 1 customer / Multiple customers / Entire system

### Process
1. Collect and clean feedback data
2. Classify by sentiment, topic, intent
3. Group similar feedback (clustering)
4. Identify top themes and trends
5. Create insight report with actionable recommendations

### Rules
- Analyze objectively, do not cherry-pick positive feedback
- Highlight anomalies: negative feedback spikes, new complaint topics
- Quantify: "65% of delivery feedback is negative" (not just "many customers complain")
- Link feedback → action: every insight must include a recommendation
- Protect customer personal information in reports

### Output Format
```
📊 Feedback Analysis Report
📅 Period: [From] → [To]
📈 Total feedback: [N]

## Sentiment Overview
😊 Positive: [N] ([%])
😐 Neutral: [N] ([%])
😞 Negative: [N] ([%])
📉 NPS Score: [Score]

## Top Themes
| # | Theme | Count | Sentiment | Trend |
|---|-------|-------|-----------|-------|
| 1 | [Topic] | [N] | [😊/😐/😞] | [↑/↓/→] |

## Key Insights
1. 💡 [Insight + data support]
2. 💡 [Insight + data support]

## Recommendations
- [Action 1] → Impact: [High/Medium/Low]
- [Action 2] → Impact: [High/Medium/Low]
```
