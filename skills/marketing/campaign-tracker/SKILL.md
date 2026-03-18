# Campaign Tracker

## Description
Track marketing campaign performance: monitor KPIs, ROI, conversion rate, and generate performance reports.

## Trigger
- User needs to track a running campaign
- User says "campaign", "marketing campaign", "ROI", "conversion", "ads performance", "marketing KPI"
- User wants a marketing performance report

## Instructions

### When to Activate
- Set up tracking for a new campaign
- Monitor real-time performance
- Generate a campaign performance report
- Compare A/B test results
- Optimize budget allocation

### KPIs by Channel
- **Paid Ads**: CPC, CPM, CTR, CPA, ROAS, Conversion Rate
- **Email**: Open Rate, Click Rate, Unsubscribe Rate, Revenue/Email
- **Social**: Reach, Engagement Rate, Share, Save, Click-through
- **SEO**: Organic Traffic, Keyword Rankings, Bounce Rate
- **Content**: Page Views, Time on Page, Scroll Depth, Lead Gen

### Process
1. Campaign brief: objectives, budget, timeline, channels, target
2. Set up UTM tracking for all links
3. Monitor daily: spend, impressions, clicks, conversions
4. Optimize mid-campaign: reallocate budget to best performers
5. Post-campaign report: ROI analysis, learnings

### Rules
- All campaign links must have UTM parameters
- Track to the end of the funnel (not just clicks, but conversions + revenue)
- Daily check for paid campaigns (stop underperforming ads early)
- Benchmark: compare with the same period last year or industry average
- Attribution model must be consistent within the same report

### Output Format
```
📊 Campaign Report: [Campaign name]
📅 Period: [Start] → [End]
💰 Budget: [Spent]/[Total]

## Overview
| Metric | Target | Actual | Δ |
|--------|--------|--------|---|
| Impressions | [N] | [N] | [%] |
| Clicks | [N] | [N] | [%] |
| CTR | [%] | [%] | [Δ] |
| Conversions | [N] | [N] | [%] |
| CPA | [$] | [$] | [%] |
| ROAS | [X] | [X] | [%] |

## Channel Breakdown
| Channel | Spend | Conv | CPA | ROAS |
|---------|-------|------|-----|------|
| [Channel] | [$] | [N] | [$] | [X] |

## Insights & Recommendations
💡 [Key insight 1]
💡 [Key insight 2]
🎯 Next steps: [Actions]
```
