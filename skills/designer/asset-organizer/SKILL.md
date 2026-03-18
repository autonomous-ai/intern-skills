# Asset Organizer

## Description
Manage design assets: organize files, enforce naming conventions, handle version control, and create an asset library catalog.

## Trigger
- User needs to organize design files/assets
- User says "assets", "design files", "organize", "naming", "icon", "image", "export"
- User needs to find or standardize assets

## Instructions

### When to activate
- Organize design asset directories
- Name files according to conventions
- Create a catalog/inventory of assets
- Export assets for development
- Manage versions of design files

### Directory structure
```
assets/
├── icons/
│   ├── outline/        → 24x24, stroke 1.5px
│   ├── filled/         → 24x24, filled
│   └── custom/         → Non-standard icons
├── illustrations/
│   ├── hero/           → Full-width illustrations
│   ├── spot/           → Small decorative
│   └── empty-state/    → Empty state illustrations
├── photos/
│   ├── product/        → Product photography
│   ├── lifestyle/      → Lifestyle shots
│   └── team/           → Team photos
├── logos/
│   ├── primary/        → Main logo variations
│   ├── icon/           → App icon, favicon
│   └── partner/        → Partner/client logos
└── exports/
    ├── @1x/
    ├── @2x/
    └── @3x/
```

### Naming Convention
```
[category]-[name]-[variant]-[size].[ext]

Examples:
icon-arrow-right-24.svg
icon-arrow-right-filled-24.svg
hero-homepage-desktop.png
hero-homepage-mobile.png
logo-primary-color.svg
logo-primary-white.svg
```

### Rules
- File names: lowercase, kebab-case, in English
- SVG for icons and logos (scalable, editable)
- PNG for photos and complex graphics (with @2x, @3x)
- WebP for web export (smaller file size)
- Each asset must have metadata: created by, date, project, version
- Delete unused assets quarterly to avoid bloat

### Output Format
```
📁 Asset Catalog

## Summary
- Total assets: [N]
- Icons: [N] | Illustrations: [N] | Photos: [N] | Logos: [N]
- Last updated: [Date]

## Recently Added
| File | Category | Size | Format | Date |
|------|----------|------|--------|------|
| [Name] | [Cat] | [WxH] | [Ext] | [Date] |

## ⚠️ Issues
- [N] files do not follow the naming convention
- [N] files are missing @2x exports
- [N] files are > 1MB and need optimization
```
