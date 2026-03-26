# Role Change

Triggered when user says "change my role", "switch role", "đổi role", or "I'm now in [role]".

## Steps

**1. Prompt user**
```
You're currently set up as {current role.label}. What role would you like to switch to?
```

**2. Match new role**
- Wait for user reply
- Same matching logic as onboarding (keywords array, ambiguous handling, max 3 attempts)

**3. Remove old role skills**
- Identify old role-specific skill folders using `manifest.roles[old_role].skills` array
- Delete those folders from `{baseDir}/../` (keep generic skills)

**4. Install new role skills**
- Download `{BASE_URL}/skills_zip/{manifest.roles[new_role].skills_zip}` → extract to `{baseDir}/../`

**5. Update `onboarding.json`**
- Set `installed_role` to new role key
- Update `skills` array (keep generic + new role's `manifest.roles[new_role].skills`)
- Set `updated_at` to current ISO 8601 timestamp

**6. Send confirmation**
```
✅ Role switched to {new_role.label}!

Removed: {old role skill names}
Installed: {new role skill names}
📦 Generic skills unchanged.
```
