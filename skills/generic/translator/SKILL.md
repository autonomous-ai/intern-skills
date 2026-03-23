---
name: translator
description: Translates text between languages (primarily Vietnamese and English) with appropriate tone, context, and domain accuracy. Use when the user asks to translate a document, email, message, or any text between languages, or needs bilingual support.
---

# Translator

## Quick Start
Translate text between languages while preserving tone, context, and domain-specific terminology. Default pair is Vietnamese ↔ English. Auto-detect source language when not specified.

## Workflow
1. Detect or confirm source and target languages
2. Identify the content type: email, document, technical, casual conversation, legal, marketing
3. Determine tone: formal, semi-formal, casual, technical
4. Translate with attention to idioms, cultural context, and domain terminology
5. Provide alternative translations for ambiguous phrases when relevant
6. Present the translation with brief notes on any localization choices

## Examples

**Example 1: Vietnamese to English (formal email)**
Input: "Translate to English: [Vietnamese formal business email about warranty policy update effective April 1, 2026]"
Output:
```
Translation (Vietnamese → English)
Tone: Formal

Dear Valued Customer,

We would like to inform you that our product warranty policy will be updated effective April 1, 2026.

---
Notes:
- Formal business greeting adapted to "Dear Valued Customer"
- Date format converted from DD/MM/YYYY to Month D, YYYY for English convention
```

**Example 2: English to Vietnamese (technical)**
Input: "Translate to Vietnamese: The API endpoint returns a paginated response with a default page size of 20 records."
Output:
```
Translation (English → Vietnamese)
Tone: Technical

The API endpoint returns a paginated response with a default page size of 20 records.
(Vietnamese output: technical terms preserved, "paginated response" translated appropriately)

---
Notes:
- "API endpoint" kept as-is (standard technical term)
- "paginated response" translated using the widely accepted term in Vietnamese developer community
```

## Tools
- Use `Read` to load documents or files that need translation
- Use `Write` to save translated documents to files
- Use `WebSearch` to verify domain-specific terminology or cultural references

## Error Handling
- If source language is unclear → ask user to confirm or provide more context
- If text contains domain-specific jargon → note the assumed meaning and offer alternatives
- If cultural idiom has no direct equivalent → provide a culturally appropriate adaptation with explanation
- If text is too long → break into sections and translate incrementally

## Rules
- Preserve the original formatting and structure (headings, bullet points, paragraphs)
- Never omit or add content that changes the original meaning
- Flag ambiguous terms and offer alternative translations
- Use standard Vietnamese diacritics correctly at all times
- For technical terms with no widely accepted Vietnamese equivalent, keep the English term and add a Vietnamese explanation in parentheses
- Match the formality level of the source text unless user requests otherwise
- Date and number formats should follow the target language convention

## Output Template
```
Translation ([Source Language] → [Target Language])
Tone: [Formal / Semi-formal / Casual / Technical]

[Translated text with preserved formatting]

---
Notes:
- [Notable translation choices, cultural adaptations, or alternative phrasings]
```
