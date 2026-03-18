# Autonomous Intern Onboarding

## Description
Handle first-time user onboarding (role detection → skill installation), role switching, and automatic skill updates via cronjob.

## Trigger
- Every session start → check `onboarding.json` in this skill's directory
- If `onboarding.json` does not exist or `installed_role` is empty → run onboarding
- User says "change my role", "switch role", "đổi role", "I'm now in [role]" → run role change

## Instructions

### When to Activate
- First time user opens the device (no `onboarding.json`)
- User wants to change their professional role
- Auto-update cronjob detects a new skill version

### Process

#### Onboarding (first time)

1. Greet the user:
   ```
   👋 Welcome to Autonomous Intern! I'm your AI assistant.

   To set things up for you, what's your role or job?
   Examples: Developer, Marketing, Designer, Sales, Operations, HR, Finance, Customer Service, Project Manager

   Just type your role or describe what you do!
   ```

2. Fetch manifest from `https://raw.githubusercontent.com/autonomous-ecm/intern-skills/main/manifest.json`

3. Match user response against each role's `keywords` array in manifest:
   - Confident match → proceed to install
   - Ambiguous (multiple matches) → present options:
     ```
     I found a few possible matches:
     1. {role1.label} — {role1.description}
     2. {role2.label} — {role2.description}

     Which one fits best? (or describe more)
     ```
   - No match → ask to clarify, list available roles
   - User says "skip" → install generic only, set role to "generic"
   - Max 3 attempts, after that → install generic only

4. Download and extract to `/root/openclaw/workspace/skills/`:
   - `https://raw.githubusercontent.com/autonomous-ecm/intern-skills/main/skills_zip/generic.zip`
   - `https://raw.githubusercontent.com/autonomous-ecm/intern-skills/main/skills_zip/{role}.zip`
   - If download fails → retry 3x with 5s delay, then skip and retry next session

5. Write `onboarding.json` in this skill's directory:
   ```json
   {
     "installed_role": "{role_key}",
     "installed_version": "{version from manifest}",
     "installed_at": "{ISO 8601}",
     "generic_installed": true,
     "skills": ["{list of installed skill folder names}"],
     "update_cronjob_id": "{cronjob id}"
   }
   ```

6. Set up auto-update cronjob (every 6 hours):
   - Fetch `https://raw.githubusercontent.com/autonomous-ecm/intern-skills/main/version.txt`
   - Compare with `installed_version` in `onboarding.json`
   - If different → re-download generic.zip + role.zip, overwrite skills, update `onboarding.json`
   - If same → do nothing

7. Confirm to user:
   ```
   ✅ All set! I've installed these skills for you:

   📦 Generic: {generic skill names}
   🛠️ {role.label}: {role skill names}

   You can change your role anytime by saying "change my role".
   ```

#### Role Change

1. Confirm current role and ask for new role:
   ```
   You're currently set up as {current role.label}. What role would you like to switch to?
   ```
2. Match new role (same matching logic as onboarding)
3. Delete old role-specific skill folders from `/root/openclaw/workspace/skills/` (keep generic)
4. Download and extract new `{new_role}.zip`
5. Update `onboarding.json` with new role, skills list, and `updated_at` timestamp
6. Confirm:
   ```
   ✅ Role switched to {new_role.label}!

   Removed: {old role skills}
   Installed: {new role skills}
   📦 Generic skills unchanged.
   ```

#### Auto-Update (cronjob, every 6 hours)

1. Fetch `version.txt` → compare with `onboarding.json.installed_version`
2. If same → do nothing
3. If different:
   - Download `generic.zip` + `{installed_role}.zip` → overwrite existing skills
   - Update `installed_version` and `updated_at` in `onboarding.json`
   - Notify user: `🔄 Skills updated to version {new_version}`
4. If download fails → retry 3x, skip and try again next scheduled run

### Rules
- Always install generic skills regardless of role
- Skills are overwritten on update (clean state), never merged
- If folder name conflicts between generic and role → role-specific wins
- Never ask for personal information beyond job role
- Respond in the same language the user is using
- Do not block the user if onboarding/update fails — inform and retry later
- If `onboarding.json` is corrupted → delete it and re-trigger onboarding

### Output Format
```
🎯 Onboarding Status

Role: {role label}
Version: {installed version}
Skills installed:
  📦 Generic: {list}
  🛠️ {Role}: {list}

Status: {Complete / Updated / Error}
```
