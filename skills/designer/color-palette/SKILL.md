# Color Palette

## Description
Create and manage color palettes: suggest harmonious colors, check contrast ratios, and create theme variations.

## Trigger
- User needs to create or edit a color palette
- User says "color", "palette", "theme", "contrast", "dark mode"
- User needs to check the accessibility of a color scheme

## Instructions

### When to activate
- Create a color palette for a new brand/project
- Generate dark mode from light mode (and vice versa)
- Check WCAG contrast ratios
- Create color variations (tint, shade, tone)
- Suggest complementary/analogous colors

### Color Harmony Rules
- **Complementary**: 2 colors opposite on the color wheel (high contrast)
- **Analogous**: 3 adjacent colors (harmonious, low contrast)
- **Triadic**: 3 colors equally spaced at 120° (vibrant, balanced)
- **Split-complementary**: 1 base + 2 adjacent to complement
- **Monochromatic**: 1 hue, multiple tints/shades

### Palette Structure
```
Primary:    #XXXXXX → Main brand color
Secondary:  #XXXXXX → Supporting brand color
Accent:     #XXXXXX → CTAs, highlights
Success:    #22C55E → Positive actions
Warning:    #F59E0B → Caution
Error:      #EF4444 → Errors, destructive
Info:       #3B82F6 → Informational

Neutrals:
50:  #FAFAFA → Background
100: #F5F5F5 → Subtle background
200: #E5E5E5 → Border
300: #D4D4D4 → Disabled
500: #737373 → Secondary text
700: #404040 → Primary text
900: #171717 → Heading text
```

### Rules
- WCAG AA minimum: 4.5:1 for text, 3:1 for large text/icons
- Do not use color alone to convey information (accessibility)
- Primary color must have sufficient contrast on a white background
- Dark mode: don't just invert — adjust saturation and brightness
- Limit to 5-7 main colors in a palette (too many → inconsistent)

### Output Format
```
🎨 Color Palette

## Brand Colors
| Name | Hex | RGB | Usage |
|------|-----|-----|-------|
| Primary | #XXXXXX | rgb(X,X,X) | [Usage] |
| Secondary | #XXXXXX | rgb(X,X,X) | [Usage] |

## Contrast Check (WCAG AA)
| Foreground | Background | Ratio | Pass? |
|------------|------------|-------|-------|
| #333 text  | #FFF bg    | 12.6:1 | ✅ AAA |
| #Primary   | #FFF bg    | [X]:1 | ✅/❌ |

## Variations
Primary-50:  #XXXXXX (lightest)
Primary-100: #XXXXXX
...
Primary-900: #XXXXXX (darkest)
```
