# OpenClaw Plugins

Plugins that turn OpenClaw into a specialist for your role, team, and company.

## Plugin List

| Plugin | Description | Connectors |
|--------|-------------|------------|
| **[sales](./sales)** | Prospect, craft outreach, and build deal strategy faster | Slack, HubSpot, Close, Clay, ZoomInfo, Apollo, Outreach |
| **[customer-support](./customer-support)** | Triage tickets, draft responses, escalate issues, and build knowledge base | Slack, Intercom, HubSpot, Guru, Jira, Notion |
| **[product-management](./product-management)** | Write specs, plan roadmaps, and synthesize user research | Slack, Linear, Asana, Monday, ClickUp, Jira, Notion, Figma |
| **[marketing](./marketing)** | Draft content, plan campaigns, enforce brand voice | Slack, Canva, Figma, HubSpot, Ahrefs, Klaviyo |
| **[legal](./legal)** | Review contracts, triage NDAs, navigate compliance | Slack, Box, Egnyte, Jira, DocuSign |
| **[finance](./finance)** | Journal entries, reconciliation, financial statements | Snowflake, Databricks, BigQuery, Slack |
| **[data](./data)** | Write SQL, explore datasets, build dashboards | Snowflake, Databricks, BigQuery, Hex, Amplitude |
| **[design](./design)** | Design critique, systems, accessibility, UX copy | Slack, Figma, Linear, Asana, Notion |
| **[engineering](./engineering)** | Code review, architecture, incident response, standup | Slack, Linear, GitHub, PagerDuty, Datadog |
| **[human-resources](./human-resources)** | Recruiting, onboarding, performance reviews, comp analysis | Slack, Google Calendar, Gmail, Notion |
| **[operations](./operations)** | Vendor management, process docs, capacity planning | Slack, Notion, Jira, Asana, ServiceNow |
| **[enterprise-search](./enterprise-search)** | Search across email, chat, docs, and wikis | Slack, Notion, Guru, Jira, Asana |
| **[bio-research](./bio-research)** | Literature search, genomics, single-cell RNA analysis | PubMed, BioRender, ChEMBL, Benchling |
| **[productivity](./productivity)** | Task management, daily workflows, personal context | Slack, Notion, Asana, Linear, Jira |
| **[pdf-viewer](./pdf-viewer)** | View, annotate, and sign PDFs | PDF MCP Server |
| **[cowork-plugin-management](./cowork-plugin-management)** | Create and customize plugins | — |

## Plugin Structure

Each plugin follows OpenClaw native format:

```
plugin-name/
├── openclaw.plugin.json   # Plugin manifest (id, name, skills, configSchema)
├── .mcp.json              # MCP server connections (optional)
├── skills/                # Skill directories
│   └── skill-name/
│       ├── SKILL.md       # Skill definition
│       └── scripts/       # Python/shell scripts (optional)
├── CONNECTORS.md          # Connector documentation (optional)
└── README.md              # Plugin description
```

## Installation

```bash
# Install from local directory
openclaw plugins install ./openclaw_plugin/sales

# Or install from ClawHub
openclaw plugins install sales@openclaw-plugins
```

## Configuration

After installing, configure connectors in `~/.openclaw/openclaw.json`:

```json5
{
  plugins: {
    entries: {
      "sales": {
        enabled: true,
        config: {}
      }
    }
  }
}
```
