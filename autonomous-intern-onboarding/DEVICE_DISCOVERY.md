# Device Discovery

Scan the local WiFi network for smart devices.

## Discovery Commands

| Command | What it finds |
|---------|---------------|
| `arp -a` | All devices on local network (IP + MAC + hostname) |

**Steps:**

1. Run `arp -a` with a 5-second timeout to list all devices on the subnet.
2. For each entry, infer category from the hostname/vendor:
   - Hostname contains `hp`, `canon`, `epson`, `brother`, `printer` → **printer**
   - Hostname contains `hikvision`, `dahua`, `axis`, `cam`, `nvr` → **camera**
   - Hostname contains `sonos`, `bose`, `echo`, `homepod`, `chromecast`, `airplay` → **speaker**
   - Unknown → skip (do not include in results)
3. For devices with no hostname, look up MAC OUI (first 3 bytes) against a known vendor list to guess the brand.
4. Categorize into: `printers`, `cameras`, `speakers`.

> Note: This is best-effort. Device discovery without mDNS is limited — devices that don't broadcast a recognizable hostname will be skipped. Users can manually add devices later.

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
- `arp -a` must have a timeout (max 5s) to avoid hanging
- Never store device credentials in `onboarding.json` — only name, IP, model, protocol
- Device scan runs on the local subnet only — do not scan external networks
- If `arp` is not available, skip device discovery and inform user
