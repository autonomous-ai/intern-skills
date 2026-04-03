---
name: marketing
description: "Create content, plan campaigns, and analyze performance across marketing channels. Maintain brand voice consistency, track competitors, and report on what's working."
metadata:
  { "openclaw": { "emoji": "📦", "events": ["agent:bootstrap"] } }
---

# Marketing Plugin

Loads 8 skills on agent bootstrap:

- `brand-review`
- `campaign-plan`
- `competitive-brief`
- `content-creation`
- `draft-content`
- `email-sequence`
- `performance-report`
- `seo-audit`

## Configuration

Configure in `~/.openclaw/openclaw.json`:

```json5
{
  plugins: {
    entries: {
      "marketing": {
        enabled: true,
        config: {}
      }
    }
  }
}
```
