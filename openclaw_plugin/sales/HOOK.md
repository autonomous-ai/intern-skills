---
name: sales
description: "Prospect, craft outreach, and build deal strategy faster. Prep for calls, manage your pipeline, and write personalized messaging that moves deals forward."
metadata:
  { "openclaw": { "emoji": "📦", "events": ["agent:bootstrap"] } }
---

# Sales Plugin

Loads 9 skills on agent bootstrap:

- `account-research`
- `call-prep`
- `call-summary`
- `competitive-intelligence`
- `create-an-asset`
- `daily-briefing`
- `draft-outreach`
- `forecast`
- `pipeline-review`

## Configuration

Configure in `~/.openclaw/openclaw.json`:

```json5
{
  plugins: {
    entries: {
      "sales": {
        enabled: true,
        config: {}
      }
    }
  }
}
```
