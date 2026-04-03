---
name: finance
description: "Streamline finance and accounting workflows, from journal entries and reconciliation to financial statements and variance analysis. Speed up audit prep, month-end close, and keeping your books clean."
metadata:
  { "openclaw": { "emoji": "📦", "events": ["agent:bootstrap"] } }
---

# Finance Plugin

Loads 8 skills on agent bootstrap:

- `audit-support`
- `close-management`
- `financial-statements`
- `journal-entry`
- `journal-entry-prep`
- `reconciliation`
- `sox-testing`
- `variance-analysis`

## Configuration

Configure in `~/.openclaw/openclaw.json`:

```json5
{
  plugins: {
    entries: {
      "finance": {
        enabled: true,
        config: {}
      }
    }
  }
}
```
