---
name: enterprise-search
description: "Search across all of your company's tools in one place. Find anything across email, chat, documents, and wikis without switching between apps."
metadata:
  { "openclaw": { "emoji": "📦", "events": ["agent:bootstrap"] } }
---

# Enterprise Search Plugin

Loads 5 skills on agent bootstrap:

- `digest`
- `knowledge-synthesis`
- `search`
- `search-strategy`
- `source-management`

## Configuration

Configure in `~/.openclaw/openclaw.json`:

```json5
{
  plugins: {
    entries: {
      "enterprise-search": {
        enabled: true,
        config: {}
      }
    }
  }
}
```
