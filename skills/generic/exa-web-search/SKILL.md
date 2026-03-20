---
name: exa-web-search
description: >
  Searches the web for current information using Exa.ai via the Autonomous proxy endpoint.
  Use when the user asks to search, research, find current information, look up facts, or
  when up-to-date data is needed. Triggers on: "search for", "look up", "find information
  about", "research", "what is the latest", "current news about", "deep search".
---

# Exa Web Search

## Quick Start

Call the Autonomous proxy endpoint using `exec` with `curl`. Extract the API key from `/root/openclaw/openclaw.json` and pass it via `x-api-key` header.

```bash
curl -s --compressed -X POST "https://campaign-api.staging.autonomousdev.xyz/api/v1/ai/tools/exa-search" \
  -H "Content-Type: application/json" \
  -H "x-api-key: $(cat /root/openclaw/openclaw.json | grep -o '"apiKey": "[^"]*"' | head -1 | cut -d'"' -f4)" \
  -d '{
    "query": "YOUR_SEARCH_QUERY",
    "num_results": 5,
    "type": "auto",
    "include_summary": true
  }'
```

## Workflow

1. Extract search intent from the user's message
2. Choose `type`: `neural` for conceptual queries, `keyword` for exact-match, `auto` otherwise
3. Call the endpoint via `exec`
4. Parse the JSON response — use `results[].summary` for quick answers, `highlights` for excerpts
5. Synthesize results into a clear answer with cited URLs
6. If results are insufficient, refine query and retry (max 3 searches per request)

## Examples

**Example 1 — General research:**
> User: "What are the latest AI coding tools in 2025?"

```json
{ "query": "best AI coding tools 2025", "num_results": 5, "type": "neural", "include_summary": true }
```
→ Summarize top tools with source links.

**Example 2 — Exact lookup:**
> User: "Search for ECONNREFUSED error in Node.js"

```json
{ "query": "ECONNREFUSED Node.js fix", "num_results": 3, "type": "keyword", "include_summary": true }
```
→ Return specific fixes with citations.

**Example 3 — Domain-scoped search:**
> User: "Find React docs on useEffect"

```json
{ "query": "useEffect hook guide", "num_results": 3, "type": "keyword", "include_domains": ["react.dev"] }
```
→ Return results only from react.dev.

## Tools

| Tool | When to use |
|------|-------------|
| `exec` (curl) | Always — only way to call the search endpoint |

**Request fields:**

| Field | Type | Default | Description |
|-------|------|---------|-------------|
| query | string | — | Search query (required) |
| num_results | int | 5 | Number of results (1–10) |
| type | string | "auto" | `auto` / `neural` / `keyword` |
| include_domains | string[] | [] | Restrict to these domains |
| exclude_domains | string[] | [] | Exclude these domains |
| include_text | bool | false | Include full page text |
| include_summary | bool | false | Include AI summary per result |

## Error Handling

| Scenario | Action |
|----------|--------|
| `401 Unauthorized` | API key missing or invalid — check `/root/openclaw/openclaw.json` |
| `429 Too Many Requests` | Inform user their plan limit is reached, do not retry |
| `502 Bad Gateway` | Retry once after 2s, then inform user search is temporarily unavailable |
| Empty `results` array | Rephrase query and retry; if still empty, inform user no results found |

## Rules

- Always use `include_summary: true` unless `include_text` is explicitly needed
- Keep `num_results` between 3–5 to balance coverage vs context size
- Use `type: "neural"` for semantic queries, `type: "keyword"` for exact-match
- Always cite sources with URLs when presenting results
- Never fabricate results — only report what the API returns
- Max 3 search calls per user request

## Output Template

```
🔍 Search results for: {query}

1. **{title}** — {url}
   {summary or highlight}

2. **{title}** — {url}
   {summary or highlight}

...

Sources: {list of URLs}
```
