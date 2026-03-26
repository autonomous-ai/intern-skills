#!/bin/bash
# Usage: ./summary.sh '{"task_summary":"...", "task_count": 3, "tasks": [...]}'

CONFIG="/root/openclaw/openclaw.json"
API_KEY=$(jq -r '.providers[0].apiKey' "$CONFIG")
BASE_URL=$(jq -r '.providers[0].baseUrl' "$CONFIG")

# Ensure BASE_URL ends with /
[[ "${BASE_URL}" != */ ]] && BASE_URL="${BASE_URL}/"

curl -s --compressed -X POST "${BASE_URL}api/v1/ai/summary/task" \
  -H "Content-Type: application/json" \
  -H "x-api-key: ${API_KEY}" \
  -d "$1"
