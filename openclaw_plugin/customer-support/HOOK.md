---
name: customer-support
description: "Triage tickets, draft responses, escalate issues, and build your knowledge base. Research customer context and turn resolved issues into self-service content."
metadata:
  { "openclaw": { "emoji": "📦", "events": ["agent:bootstrap"] } }
---

# Customer Support Plugin

Loads 5 skills on agent bootstrap:

- `customer-escalation`
- `customer-research`
- `draft-response`
- `kb-article`
- `ticket-triage`

## Configuration

Configure in `~/.openclaw/openclaw.json`:

```json5
{
  plugins: {
    entries: {
      "customer-support": {
        enabled: true,
        config: {}
      }
    }
  }
}
```
