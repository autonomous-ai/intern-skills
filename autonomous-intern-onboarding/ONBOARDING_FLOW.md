# Onboarding Flow

Full onboarding process. Read this file when `onboarding.json` does not exist.

## Steps

**1. Fetch manifest**
- `GET {BASE_URL}/manifest.json` → save as `{baseDir}/manifest_cache.json`

**2. Match user role**
- Wait for user reply on the channel
- Match response against each role's `keywords` array in manifest using **partial/fuzzy matching**:
  - If the user's input **contains** any keyword from a role → that role is a match
  - Examples: "Influencer Marketing" contains "marketing" → matches `marketing` role
  - "Data Engineer" contains "data" → matches `data` role
  - "Sales Ops" contains "sales" → matches `sales` role
  - **Confident match** (single role) → proceed to step 3
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

- **Sub-specialty detection:** If the user's input is more specific than the matched role (e.g., "Influencer Marketing" vs just "Marketing"), save the full input as `user_specialty` for Step 3.5.

**3. Download & install skills**
- **Generic (ALWAYS install first, no exceptions):** `{BASE_URL}/skills_zip/{manifest.generic_zip}`
- **Role-specific:** `{BASE_URL}/skills_zip/{manifest.roles[matched_role].skills_zip}`
- Extract both zips to `{baseDir}/../`
- On failure → retry 3× with 5s delay → notify user and retry next session

> **⚠️ Generic skills MUST always be installed regardless of role, sub-specialty, or any other condition. If generic install fails, retry — do NOT skip.**

**3.5. Sub-specialty skills (if `user_specialty` detected)**

If the user's role is more specific than the base role (e.g., "Influencer Marketing" instead of just "Marketing"), create 2-3 specialized skills tailored to their sub-specialty:

- Create skill folders under `{baseDir}/../{matched_role}/` (e.g., `marketing/influencer-outreach/`)
- Each skill must follow the standard SKILL.md format (frontmatter + body)
- Skill content should focus on tasks unique to the sub-specialty that the base role skills don't cover

**Examples of sub-specialty skills:**

| User input | Base role | Example specialty skills |
|---|---|---|
| Influencer Marketing | marketing | `influencer-outreach` (find & evaluate KOLs), `collab-brief-writer` (write partnership briefs), `influencer-campaign-report` (ROI & engagement reports) |
| Data Engineer | data | `pipeline-builder` (ETL/data pipeline design), `data-quality-checker` (validation rules) |
| Sales Ops | sales | `sales-pipeline-analyzer` (funnel metrics), `commission-calculator` (rep payouts) |

- Add these skill names to the `skills` array in `onboarding.json`
- If skill creation fails, continue with base role skills — do NOT block onboarding

**4. Generate SOUL.md**
- Read `SOUL_DEFAULT.md` as the base template
- Read `SOUL_TEMPLATES.md` → find the section matching `{matched_role}`
- Combine: default soul + role-specific overrides → write to `{baseDir}/../SOUL.md`
- If `user_specialty` exists → append the Specialty section from the template
- If `SOUL.md` already exists (e.g., role change) → overwrite it with the new role's soul
- On failure → continue onboarding, SOUL.md is not a blocker

**5. Device discovery**
- Read `DEVICE_DISCOVERY.md` → run discovery, get user confirmation

**6. Write `{baseDir}/onboarding.json`**
```json
{
  "installed_role": "{matched role key}",
  "user_specialty": "{user's specific input, e.g. 'Influencer Marketing'}",
  "installed_version": "{manifest.version}",
  "installed_at": "{ISO 8601 timestamp}",
  "generic_installed": true,
  "skills": ["{combined list: generic + role + specialty skill folders}"],
  "discovered_devices": {
    "scanned_at": "{ISO 8601 timestamp}",
    "printers": [{"name": "...", "ip": "...", "model": "...", "protocol": "ipp", "enabled": true}],
    "cameras":  [{"name": "...", "ip": "...", "model": "...", "protocol": "onvif", "enabled": true}],
    "speakers": [{"name": "...", "ip": "...", "model": "...", "protocol": "sonos", "enabled": true}]
  },
  "update_cronjob_id": "{cronjob id}"
}
```
`skills` array = generic skill folders from `generic.zip` + `manifest.roles[role].skills` + specialty skills (if any)

**Important:** `installed_version` MUST come from `manifest.version`, never hardcoded.

**7. Set up auto-update**
- Read `AUTO_UPDATE.md` → register cronjob

**8. Send confirmation**
```
✅ All set! I've installed these skills for you:

📦 Generic: {generic skill names}
🛠️ {role.label}: {role skill names}
🎯 {user_specialty} extras: {specialty skill names, if any}

📡 Connected devices:
  🖨️ {printer count} printer(s)
  📷 {camera count} camera(s)
  🔊 {speaker count} speaker(s)

You can change your role anytime by saying "change my role".
You can rescan devices anytime by saying "scan devices".
```
