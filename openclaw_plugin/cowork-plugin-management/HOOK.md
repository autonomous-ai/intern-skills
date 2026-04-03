---
name: cowork-plugin-management
description: "Create, customize, and manage plugins tailored to your organization's tools and workflows. Configure MCP servers, adjust plugin behavior, and adapt templates to match how your team works."
metadata:
  { "openclaw": { "emoji": "📦", "events": ["agent:bootstrap"] } }
---

# Cowork Plugin Management Plugin

Loads 2 skills on agent bootstrap:

- `cowork-plugin-customizer`
- `create-cowork-plugin`

## Configuration

Configure in `~/.openclaw/openclaw.json`:

```json5
{
  plugins: {
    entries: {
      "cowork-plugin-management": {
        enabled: true,
        config: {}
      }
    }
  }
}
```
