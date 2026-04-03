---
name: pdf-viewer
description: "View, annotate, and sign PDFs in a live interactive viewer. Mark up contracts, fill forms with visual feedback, stamp approvals, and place signatures — then download the annotated copy."
metadata:
  { "openclaw": { "emoji": "📦", "events": ["agent:bootstrap"] } }
---

# Pdf Viewer Plugin

Loads 1 skills on agent bootstrap:

- `view-pdf`

## Configuration

Configure in `~/.openclaw/openclaw.json`:

```json5
{
  plugins: {
    entries: {
      "pdf-viewer": {
        enabled: true,
        config: {}
      }
    }
  }
}
```
