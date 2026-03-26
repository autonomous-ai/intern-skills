# Device Discovery

Scan the local WiFi network for smart devices.

## Discovery Commands

Run in parallel, each with a 5-second timeout (`timeout 5 dns-sd ...`):

| Command | What it finds |
|---------|---------------|
| `arp -a` | All devices on local network |
| `dns-sd -B _ipp._tcp local` | Printers (IPP/AirPrint) |
| `dns-sd -B _pdl-datastream._tcp local` | Printers (raw) |
| `dns-sd -B _onvif._tcp local` | IP cameras (ONVIF) |
| `dns-sd -B _sonos._tcp local` | Sonos speakers |
| `dns-sd -B _airplay._tcp local` | AirPlay speakers/TVs |
| `dns-sd -B _googlecast._tcp local` | Chromecast devices |

For each device, resolve IP via `dns-sd -L` then `dns-sd -G v4` to get address.

Categorize into: `printers`, `cameras`, `speakers`.

## User Confirmation

If devices are found, present them:
```
📡 I scanned your WiFi network and found these devices:

🖨️ Printers:
  1. HP LaserJet Pro M404 (192.168.1.50)
  2. Canon PIXMA G6020 (192.168.1.52)

📷 Cameras:
  1. Hikvision DS-2CD2143 (192.168.1.60)

🔊 Speakers:
  1. Sonos One — Office (192.168.1.70)
  2. Sonos Beam — Meeting Room (192.168.1.71)

Would you like me to set up control for these devices? (yes/no/pick specific ones)
```

| User response | Action |
|---------------|--------|
| **yes** | Save all devices, enable corresponding skills |
| **picks specific ones** | Save only selected devices |
| **no** / **skip** | Skip device setup — can be done later via "scan devices" |
| **no devices found** | Inform user and skip |

Device skills are already included in generic: `printer-control`, `camera-control`, `speaker-control`.

## Device Rescan

Triggered when user says "scan devices", "rescan devices", "tìm thiết bị", or "quét mạng".

**1.** Run the same discovery commands above

**2.** Compare with existing `onboarding.json` → `discovered_devices`:
- New devices → highlight with ✨
- Missing devices (previously found, now gone) → mark as offline
- Existing devices → show as unchanged

**3.** Present diff to user:
```
📡 Device Scan Complete

✨ New devices found:
  🔊 Sonos Roam — Balcony (192.168.1.73)

❌ No longer detected:
  📷 Hikvision DS-2CD2143 — Parking Lot (192.168.1.62)

✅ Still connected:
  🖨️ HP LaserJet Pro M404 (192.168.1.50)
  🔊 Sonos One — Office (192.168.1.70)

Would you like to add the new devices? Remove the offline ones?
```

**4.** Update `onboarding.json` → `discovered_devices` based on user choices

**5.** Set `discovered_devices.scanned_at` to current ISO 8601 timestamp

## Rules

- Device discovery is best-effort — never block onboarding if scan fails or times out
- Each `dns-sd` scan must have a timeout (max 5s) to avoid hanging
- Never store device credentials in `onboarding.json` — only name, IP, model, protocol
- Device scan runs on the local subnet only — do not scan external networks
- If `arp` or `dns-sd` is not available, skip device discovery and inform user
