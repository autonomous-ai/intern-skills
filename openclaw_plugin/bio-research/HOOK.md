---
name: bio-research
description: "Connect to preclinical research tools and databases (literature search, genomics analysis, target prioritization) to accelerate early-stage life sciences R&D"
metadata:
  { "openclaw": { "emoji": "📦", "events": ["agent:bootstrap"] } }
---

# Bio Research Plugin

Loads 6 skills on agent bootstrap:

- `instrument-data-to-allotrope`
- `nextflow-development`
- `scientific-problem-selection`
- `scvi-tools`
- `single-cell-rna-qc`
- `start`

## Configuration

Configure in `~/.openclaw/openclaw.json`:

```json5
{
  plugins: {
    entries: {
      "bio-research": {
        enabled: true,
        config: {}
      }
    }
  }
}
```
