---
name: camera-control
description: >
  Discovers and controls network IP cameras — view live feeds, capture snapshots, check recording status,
  and manage camera settings. Use when the user asks to view cameras, take a snapshot, check security
  footage, or manage camera configurations. Requires camera info from onboarding.json discovered_devices.
---

# Camera Control

## Quick Start
Read `{baseDir}/onboarding.json` → `discovered_devices.cameras` to get saved camera list. Use ONVIF, RTSP, or HTTP API to interact with cameras. Always respect privacy — confirm before accessing feeds.

## Workflow
1. Load camera list from `onboarding.json` → `discovered_devices.cameras`
2. If no cameras saved or user says "scan cameras" → run discovery:
   - `dns-sd -B _onvif._tcp local` (ONVIF cameras)
   - `arp -a` + port scan 554 (RTSP) and 80/8080 (HTTP) on local subnet
   - Parse results: name, IP, model, protocol (ONVIF/RTSP/HTTP)
3. Confirm user authorization before accessing any camera feed
4. Execute the requested operation (view, snapshot, status, settings)
5. Report result with feed URL or saved file path

## Examples

**Example 1: View Camera List**
Input: "Show me the cameras on the network"
Output:
```
📷 Network Cameras Found

| # | Name | IP | Model | Protocol | Status |
|---|---|---|---|---|---|
| 1 | Front Door | 192.168.1.60 | Hikvision DS-2CD2143 | ONVIF/RTSP | ✅ Online |
| 2 | Office Lobby | 192.168.1.61 | Dahua IPC-HDW2431 | ONVIF/RTSP | ✅ Online |
| 3 | Parking Lot | 192.168.1.62 | Reolink RLC-810A | RTSP/HTTP | ⚠️ Degraded |

Would you like to view a feed or take a snapshot?
```

**Example 2: Capture Snapshot**
Input: "Take a snapshot from the front door camera"
Output:
```
📸 Snapshot Captured

Camera: Front Door (192.168.1.60)
Resolution: 2560x1440
Timestamp: 2026-03-23 14:30:22

Saved to: ~/Documents/Cameras/front-door-2026-03-23-143022.jpg
```

**Example 3: Check Camera Status**
Input: "Are all cameras recording?"
Output:
```
📷 Camera Recording Status

| Camera | Status | Recording | Storage | Uptime |
|---|---|---|---|---|
| Front Door | ✅ Online | 🔴 Recording | 45% used | 12d 4h |
| Office Lobby | ✅ Online | 🔴 Recording | 45% used | 12d 4h |
| Parking Lot | ⚠️ Degraded | ⏸️ Paused | 45% used | 0d 2h |

⚠️ Parking Lot camera has intermittent connection. Last stable: 2h ago.
```

## Tools
- Use `Bash` with `curl` to interact with camera HTTP APIs and ONVIF endpoints
- Use `Bash` with `ffmpeg` to capture RTSP snapshots (`ffmpeg -i rtsp://... -frames:v 1 output.jpg`)
- Use `Bash` with `dns-sd` or `arp` for camera discovery
- Use `Read` to load `onboarding.json` for saved camera config
- Use `Write` to update `onboarding.json` when new cameras are added

## Error Handling
- If camera offline → report last known status, suggest checking power/network
- If authentication required → ask user for credentials, never store in plaintext
- If RTSP stream fails → try HTTP fallback, report protocol details
- If ffmpeg not installed → suggest installation command, fall back to HTTP snapshot API
- If no cameras found → suggest checking network segment, VLANs, or firewall rules

## Rules
- ALWAYS ask for confirmation before accessing any camera feed (privacy)
- Never store camera credentials in plaintext — use system keychain or prompt each time
- Default snapshot format: JPEG at native resolution
- Include timestamp on all snapshots and status reports
- Respect camera access permissions — do not bypass authentication
- Log all camera access for audit purposes
- If user adds new camera, update onboarding.json discovered_devices

## Output Template
```
📷 [Action]: [Camera Name]

Camera: [name] ([IP])
[Action-specific details]

Status: [Online / Offline / Degraded]
[Additional context if needed]
```
