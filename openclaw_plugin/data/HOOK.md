---
name: data
description: "Write SQL, explore datasets, and generate insights faster. Build visualizations and dashboards, and turn raw data into clear stories for stakeholders."
metadata:
  { "openclaw": { "emoji": "📦", "events": ["agent:bootstrap"] } }
---

# Data Plugin

Loads 10 skills on agent bootstrap:

- `analyze`
- `build-dashboard`
- `create-viz`
- `data-context-extractor`
- `data-visualization`
- `explore-data`
- `sql-queries`
- `statistical-analysis`
- `validate-data`
- `write-query`

## Configuration

Configure in `~/.openclaw/openclaw.json`:

```json5
{
  plugins: {
    entries: {
      "data": {
        enabled: true,
        config: {}
      }
    }
  }
}
```
