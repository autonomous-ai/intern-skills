---
name: design
description: "Accelerate design workflows — critique, design system management, UX writing, accessibility audits, research synthesis, and dev handoff. From exploration to pixel-perfect specs."
metadata:
  { "openclaw": { "emoji": "📦", "events": ["agent:bootstrap"] } }
---

# Design Plugin

Loads 7 skills on agent bootstrap:

- `accessibility-review`
- `design-critique`
- `design-handoff`
- `design-system`
- `research-synthesis`
- `user-research`
- `ux-copy`

## Configuration

Configure in `~/.openclaw/openclaw.json`:

```json5
{
  plugins: {
    entries: {
      "design": {
        enabled: true,
        config: {}
      }
    }
  }
}
```
