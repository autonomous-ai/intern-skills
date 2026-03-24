---
name: automation-builder
description: Creates, updates, and triggers Home Assistant automations by generating valid HA automation YAML or firing events via the REST API. Use when the user wants to automate device behavior based on time, state changes, sunrise/sunset, motion, or other triggers, or wants to run an existing automation manually.
---

# Automation Builder

## Quick Start
Convert the user's automation description into a valid Home Assistant automation YAML block covering trigger, condition, and action. Optionally fire the automation immediately via `POST /api/services/automation/trigger`.

## Workflow
1. Parse the user's request into the three automation components: trigger, condition (optional), action
2. Select the correct trigger platform (time, state, sun, numeric_state, event, webhook, zone, etc.)
3. Build the condition block if the user specifies any constraints (time range, device state, etc.)
4. Build the action block (service calls, delays, notifications, scene activations)
5. Assemble the final YAML and present it for user review
6. If the user wants to run it immediately → call `POST /api/services/automation/trigger` with the automation entity_id

## Examples

**Example 1: Time-based automation**
Input: "Turn off all lights at 11pm every night"
Output:
```yaml
alias: Turn off all lights at 11 PM
description: Automatically turns off all lights at 23:00 daily
trigger:
  - platform: time
    at: "23:00:00"
condition: []
action:
  - service: light.turn_off
    target:
      entity_id: all
mode: single
```

**Example 2: Motion-triggered with condition**
Input: "Turn on hallway light when motion is detected between 6pm and midnight"
Output:
```yaml
alias: Hallway light on motion (evening)
description: Turns on hallway light when motion detected in the evening hours
trigger:
  - platform: state
    entity_id: binary_sensor.motion_hallway
    to: "on"
condition:
  - condition: time
    after: "18:00:00"
    before: "00:00:00"
action:
  - service: light.turn_on
    target:
      entity_id: light.hallway
    data:
      brightness_pct: 80
      transition: 2
mode: single
```

**Example 3: Trigger existing automation manually**
Input: "Trigger the goodnight automation now"
Output:
```
TRIGGER AUTOMATION
==================
Entity:  automation.goodnight
Service: automation.trigger
Payload: { "entity_id": "automation.goodnight" }

Result: 200 OK — automation triggered successfully
```

## Tools
- Use `WebFetch` to call `POST /api/services/automation/trigger` for immediate triggers
- Use `WebFetch` to call `GET /api/states` to look up entity_ids referenced in the automation
- Use `Write` to save the generated YAML to a file if the user requests it

## Error Handling
- If entity_id is not found → search `GET /api/states` and suggest the closest match
- If trigger type is ambiguous → ask the user to clarify: time, state change, sunrise/sunset, motion, or webhook
- If automation references an unavailable entity → flag it and ask the user to confirm
- If the user asks to "save" the automation → generate YAML and explain it must be added to `automations.yaml` or via the HA UI Automation editor

## Rules
- Always use `mode: single` by default unless the user specifies parallel/queued/restart behavior
- Time values must be quoted strings in `"HH:MM:SS"` format
- Use `target.entity_id` instead of `data.entity_id` for service calls in actions (HA 2021.6+)
- Trigger platforms: `time`, `state`, `numeric_state`, `sun` (event: sunset/sunrise), `event`, `webhook`, `zone`, `calendar`, `device`, `template`
- Condition platforms: `time`, `state`, `numeric_state`, `template`, `zone`, `and`, `or`, `not`
- For sunrise/sunset use offset: `offset: "-00:30:00"` for 30 minutes before
- Never hardcode sensitive values (PIN codes, passwords) into automation YAML

## Output Template
```yaml
alias: [Human-readable name]
description: [One-line description of what this automation does]
trigger:
  - platform: [trigger_platform]
    [trigger_parameters]
condition:
  - condition: [condition_type]
    [condition_parameters]
action:
  - service: [domain.service]
    target:
      entity_id: [entity_id]
    data:
      [action_parameters]
mode: [single / parallel / queued / restart]
```
