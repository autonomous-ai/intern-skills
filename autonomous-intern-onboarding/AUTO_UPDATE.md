# Auto-Update

Cronjob that runs every 6 hours to check for skill updates.

## Steps

**1. Check remote version**
- Fetch `{BASE_URL}/version.txt` → trim whitespace → `remote_version`

**2. Compare versions**
- Read `onboarding.json` → `installed_version`
- If `remote_version` == `installed_version` → do nothing

**3. Update if different**
- Fetch fresh `manifest.json` from GitHub → update `{baseDir}/manifest_cache.json`
- Download `{BASE_URL}/skills_zip/{manifest.generic_zip}` → overwrite existing generic skills
- Download `{BASE_URL}/skills_zip/{manifest.roles[installed_role].skills_zip}` → overwrite existing role skills
- Update `onboarding.json`:
  - Set `installed_version` to `remote_version`
  - Set `updated_at` to current ISO 8601 timestamp
  - Update `skills` array from new manifest

## Error Handling

- If download fails → retry 3x, skip and try again at next scheduled run
- Never block the user — updates happen silently in the background
