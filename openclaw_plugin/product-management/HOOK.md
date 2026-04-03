---
name: product-management
description: "Write feature specs, plan roadmaps, and synthesize user research faster. Keep stakeholders updated and stay ahead of the competitive landscape."
metadata:
  { "openclaw": { "emoji": "📦", "events": ["agent:bootstrap"] } }
---

# Product Management Plugin

Loads 8 skills on agent bootstrap:

- `competitive-brief`
- `metrics-review`
- `product-brainstorming`
- `roadmap-update`
- `sprint-planning`
- `stakeholder-update`
- `synthesize-research`
- `write-spec`

## Configuration

Configure in `~/.openclaw/openclaw.json`:

```json5
{
  plugins: {
    entries: {
      "product-management": {
        enabled: true,
        config: {}
      }
    }
  }
}
```
