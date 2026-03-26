# Onboarding Flow

Full onboarding process. Read this file when `onboarding.json` does not exist.

## Steps

**1. Fetch manifest**
- `GET {BASE_URL}/manifest.json` → save as `{baseDir}/manifest_cache.json`

**2. Match user role**
- Wait for user reply on the channel
- Match response against each role's `keywords` array in manifest:
  - **Confident match** → proceed to step 3
  - **Ambiguous** (multiple matches) → ask:
    ```
    I found a few possible matches:
    1. {role1.label} — {role1.description}
    2. {role2.label} — {role2.description}

    Which one fits best? (or describe more)
    ```
  - **No match** → ask to clarify, list all roles from manifest
  - **"skip"** → install generic only, set role to `"generic"`
  - Max 3 attempts → install generic only and notify user

**3. Download skills**
- Generic: `{BASE_URL}/skills_zip/{manifest.generic_zip}`
- Role-specific: `{BASE_URL}/skills_zip/{manifest.roles[matched_role].skills_zip}`
- Extract both zips to `{baseDir}/../`
- On failure → retry 3× with 5s delay → notify user and retry next session

**4. Device discovery**
- Read `DEVICE_DISCOVERY.md` → run discovery, get user confirmation

**5. Write `{baseDir}/onboarding.json`**
```json
{
  "installed_role": "{matched role key}",
  "installed_version": "{manifest.version}",
  "installed_at": "{ISO 8601 timestamp}",
  "generic_installed": true,
  "skills": ["{combined list: generic skill folders + role skill folders}"],
  "discovered_devices": {
    "scanned_at": "{ISO 8601 timestamp}",
    "printers": [{"name": "...", "ip": "...", "model": "...", "protocol": "ipp", "enabled": true}],
    "cameras":  [{"name": "...", "ip": "...", "model": "...", "protocol": "onvif", "enabled": true}],
    "speakers": [{"name": "...", "ip": "...", "model": "...", "protocol": "sonos", "enabled": true}]
  },
  "update_cronjob_id": "{cronjob id}"
}
```
`skills` array = generic skill folders from `generic.zip` + `manifest.roles[role].skills`

**6. Set up auto-update**
- Read `AUTO_UPDATE.md` → register cronjob

**7. Send confirmation**
```
✅ All set! I've installed these skills for you:

📦 Generic: {generic skill names}
🛠️ {role.label}: {role skill names}

📡 Connected devices:
  🖨️ {printer count} printer(s)
  📷 {camera count} camera(s)
  🔊 {speaker count} speaker(s)

You can change your role anytime by saying "change my role".
You can rescan devices anytime by saying "scan devices".
```
