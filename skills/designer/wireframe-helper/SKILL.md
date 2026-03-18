# Wireframe Helper

## Description
Assist with creating text/ASCII wireframes, describing layouts, user flows, and information architecture.

## Trigger
- User needs a wireframe for a new page/feature
- User says "wireframe", "layout", "mockup", "UI structure", "page layout"
- User wants to quickly sketch an idea before doing detailed design

## Instructions

### When to activate
- Quickly sketch a wireframe for a new idea
- Describe layout structure using text
- Create user flow diagrams
- Define information architecture
- Discuss layout options before moving to Figma

### ASCII wireframe
```
┌─────────────────────────────────┐
│           HEADER / NAV          │
├─────────────────────────────────┤
│                                 │
│         HERO SECTION            │
│     [Headline]                  │
│     [Subtext]                   │
│     [CTA Button]               │
│                                 │
├─────────┬───────────┬───────────┤
│  Card 1 │  Card 2   │  Card 3   │
│  [img]  │  [img]    │  [img]    │
│  [text] │  [text]   │  [text]   │
├─────────┴───────────┴───────────┤
│           FOOTER                │
└─────────────────────────────────┘
```

### Process
1. Gather requirements: page purpose, target user, key content
2. Information Architecture: prioritize which content is displayed first
3. Layout options: propose 2-3 layout variations
4. Wireframe: draw ASCII/text wireframe
5. Annotate: add notes for behavior, interaction, responsive

### Common Layout Patterns
- **F-pattern**: Blog, news — content scanned left to right, top to bottom
- **Z-pattern**: Landing page — eye tracks in a Z-shape, CTA at the end of the Z
- **Card grid**: Product listing — equal cards, responsive columns
- **Split screen**: 50/50 — image + text, comparison
- **Single column**: Mobile-first, long-form content

### Rules
- Mobile-first: wireframe mobile first, then scale up
- Content-first: wireframe based on real content, not lorem ipsum
- Above the fold: Key message + CTA must be visible without scrolling
- Visual hierarchy: Size + position + contrast = importance
- Consistency: same pattern for the same type of content

### Output Format
```
📐 Wireframe: [Page name]
📱 Viewport: [Mobile / Tablet / Desktop]

[ASCII wireframe]

## Annotations
1. [Element]: [Behavior / interaction notes]
2. [Element]: [Content requirements]

## Responsive Notes
- Mobile: [Layout changes]
- Tablet: [Layout changes]
- Desktop: [As wireframe above]

## User Flow
[Page A] → [Action] → [Page B] → [Action] → [Page C]
```
