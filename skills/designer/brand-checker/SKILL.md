# Brand Checker

## Description
Check brand consistency: compare designs against brand guidelines, check logo usage, typography, and tone of voice.

## Trigger
- User needs to check brand consistency
- User says "brand", "brand guidelines", "logo usage", "brand check", "off-brand"
- User wants to ensure output is on-brand

## Instructions

### When to activate
- Check whether a new design is on-brand
- Review marketing materials before publishing
- Audit website/social media for brand consistency
- Onboard new team members: explain brand guidelines
- Detect and report brand violations

### Brand elements to check
- **Logo**: Correct version, clear space, minimum size, no distortion
- **Colors**: Correct brand colors (exact hex), correct usage context
- **Typography**: Correct font family, sizes, weights
- **Imagery**: Correct style (photo style, illustration style)
- **Tone of Voice**: Correct brand personality in copy
- **Layout**: Correct grid, spacing system
- **Icons**: Correct style (outline/filled, stroke width, corner radius)

### Process
1. Collect the material to be checked
2. Compare against the brand guidelines document
3. Check each element
4. List violations with severity
5. Suggest fixes

### Rules
- Brand guidelines are the source of truth — no exceptions unless approved
- Logo violations = highest priority (wrong logo = wrong brand identity)
- Minor color variations (#333 vs #2D2D2D) must still be flagged
- Check both digital AND print materials
- When recurring violations are found → suggest updating the guidelines or providing training

### Output Format
```
✅ Brand Consistency Check

## Material: [Material type - name]
📅 Date: [DD/MM/YYYY]

## Score: [X/100]

| Element | Status | Issue | Fix |
|---------|--------|-------|-----|
| Logo | ✅/❌ | [Issue if any] | [How to fix] |
| Colors | ✅/❌ | [Issue] | [Fix] |
| Typography | ✅/❌ | [Issue] | [Fix] |
| Imagery | ✅/❌ | [Issue] | [Fix] |
| Tone | ✅/❌ | [Issue] | [Fix] |

## Critical Violations
🔴 [Violation that needs immediate fix]

## Verdict: [On-brand ✅ / Needs fixes ⚠️ / Off-brand ❌]
```
