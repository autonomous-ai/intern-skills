---
name: engineering
description: "Streamline engineering workflows — standups, code review, architecture decisions, incident response, and technical documentation. Works with your existing tools or standalone."
metadata:
  { "openclaw": { "emoji": "📦", "events": ["agent:bootstrap"] } }
---

# Engineering Plugin

Loads 10 skills on agent bootstrap:

- `architecture`
- `code-review`
- `debug`
- `deploy-checklist`
- `documentation`
- `incident-response`
- `standup`
- `system-design`
- `tech-debt`
- `testing-strategy`

## Configuration

Configure in `~/.openclaw/openclaw.json`:

```json5
{
  plugins: {
    entries: {
      "engineering": {
        enabled: true,
        config: {}
      }
    }
  }
}
```
