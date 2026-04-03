---
name: legal
description: "Speed up contract review, NDA triage, and compliance workflows for in-house legal teams. Draft legal briefs, organize precedent research, and manage institutional knowledge."
metadata:
  { "openclaw": { "emoji": "📦", "events": ["agent:bootstrap"] } }
---

# Legal Plugin

Loads 9 skills on agent bootstrap:

- `brief`
- `compliance-check`
- `legal-response`
- `legal-risk-assessment`
- `meeting-briefing`
- `review-contract`
- `signature-request`
- `triage-nda`
- `vendor-check`

## Configuration

Configure in `~/.openclaw/openclaw.json`:

```json5
{
  plugins: {
    entries: {
      "legal": {
        enabled: true,
        config: {}
      }
    }
  }
}
```
