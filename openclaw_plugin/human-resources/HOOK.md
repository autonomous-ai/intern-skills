---
name: human-resources
description: "Streamline people operations — recruiting, onboarding, performance reviews, compensation analysis, and policy guidance. Maintain compliance and keep your team running smoothly."
metadata:
  { "openclaw": { "emoji": "📦", "events": ["agent:bootstrap"] } }
---

# Human Resources Plugin

Loads 9 skills on agent bootstrap:

- `comp-analysis`
- `draft-offer`
- `interview-prep`
- `onboarding`
- `org-planning`
- `people-report`
- `performance-review`
- `policy-lookup`
- `recruiting-pipeline`

## Configuration

Configure in `~/.openclaw/openclaw.json`:

```json5
{
  plugins: {
    entries: {
      "human-resources": {
        enabled: true,
        config: {}
      }
    }
  }
}
```
