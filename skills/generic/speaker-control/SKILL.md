---
name: speaker-control
description: >
  Discovers and controls network speakers (Sonos, AirPlay, Chromecast Audio) — play/pause music,
  adjust volume, group speakers, manage playlists, and check playback status. Use when the user asks
  to play music, control volume, group rooms, or manage smart speakers. Requires speaker info from
  onboarding.json discovered_devices.
---

# Speaker Control

## Quick Start
Read `{baseDir}/onboarding.json` → `discovered_devices.speakers` to get saved speaker list. Use Sonos HTTP API, AirPlay (dns-sd), or Chromecast protocols. Support common actions: play, pause, volume, skip, group.

## Workflow
1. Load speaker list from `onboarding.json` → `discovered_devices.speakers`
2. If no speakers saved or user says "scan speakers" → run discovery:
   - `dns-sd -B _sonos._tcp local` (Sonos)
   - `dns-sd -B _airplay._tcp local` (AirPlay speakers)
   - `dns-sd -B _googlecast._tcp local` (Chromecast)
   - Parse results: name, IP, model, protocol, room/zone
3. Identify target speaker or group (if multiple, ask user)
4. Execute the requested action via the speaker's API
5. Report current playback status

## Examples

**Example 1: Play Music**
Input: "Play some chill music in the office"
Output:
```
🔊 Now Playing — Office Speaker

Speaker: Sonos One (192.168.1.70) — "Office"
🎵 Chill Vibes Playlist
Track: Sunset Lover — Petit Biscuit
Volume: 35%
Mode: Shuffle On · Repeat Off

⏮️ Previous | ⏸️ Pause | ⏭️ Next | 🔊 Volume
```

**Example 2: Adjust Volume**
Input: "Turn the living room speaker down to 20%"
Output:
```
🔊 Volume Updated

Speaker: Sonos Five — "Living Room"
Volume: 45% → 20% 🔉

Currently playing: Lo-Fi Beats · Track 4/18
```

**Example 3: Group Speakers**
Input: "Group all speakers together"
Output:
```
🔊 Speaker Group Created

Group: "Everywhere"
┌─────────────────────────────────────┐
│ ✅ Sonos One — Office       (35%)   │
│ ✅ Sonos Five — Living Room (20%)   │
│ ✅ Sonos Beam — Meeting     (25%)   │
│ ✅ HomePod — Reception      (30%)   │
└─────────────────────────────────────┘

All 4 speakers synced. Playing: Chill Vibes Playlist
```

**Example 4: Check Status**
Input: "What's playing right now?"
Output:
```
🔊 Playback Status

| Speaker | Room | Status | Track | Volume |
|---|---|---|---|---|
| Sonos One | Office | ▶️ Playing | Sunset Lover | 35% |
| Sonos Five | Living Room | ⏸️ Paused | — | 20% |
| Sonos Beam | Meeting | ⏹️ Stopped | — | 25% |
| HomePod | Reception | ▶️ Playing | Jazz FM | 30% |
```

## Tools
- Use `Bash` with `curl` to call Sonos HTTP API (`http://{ip}:1400/...`)
- Use `Bash` with `dns-sd` to discover speakers on local network
- Use `Bash` with `curl` for Chromecast device status endpoints
- Use `Read` to load `onboarding.json` for saved speaker config
- Use `Write` to update `onboarding.json` when new speakers are added

## Error Handling
- If speaker offline → report last seen, suggest checking power/WiFi
- If playback fails → check if speaker supports the source, suggest alternatives
- If grouping fails → check firmware compatibility, try ungrouping first
- If volume command ignored → verify speaker isn't in "fixed volume" mode
- If no speakers found → suggest checking WiFi band (speakers often use 2.4GHz only)

## Rules
- Default volume for new playback: 30% (avoid sudden loud output)
- Always show current volume before and after changes
- Confirm before setting volume above 80% (hearing safety)
- When grouping, sync to the lowest volume in the group
- Never interrupt active calls or meetings — check meeting room status first
- Support natural volume commands: "louder", "quieter", "mute", "half volume"
- If user adds new speaker, update onboarding.json discovered_devices

## Output Template
```
🔊 [Action]: [Speaker/Group Name]

Speaker: [name] ([IP]) — "[room]"
[Action-specific details]

Status: [Playing / Paused / Stopped / Offline]
[Now playing info if applicable]
```
