---
name: operations
description: "Optimize business operations — vendor management, process documentation, change management, capacity planning, and compliance tracking. Keep your organization running efficiently."
metadata:
  { "openclaw": { "emoji": "📦", "events": ["agent:bootstrap"] } }
---

# Operations Plugin

Loads 9 skills on agent bootstrap:

- `capacity-plan`
- `change-request`
- `compliance-tracking`
- `process-doc`
- `process-optimization`
- `risk-assessment`
- `runbook`
- `status-report`
- `vendor-review`

## Configuration

Configure in `~/.openclaw/openclaw.json`:

```json5
{
  plugins: {
    entries: {
      "operations": {
        enabled: true,
        config: {}
      }
    }
  }
}
```
