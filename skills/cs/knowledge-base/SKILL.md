# Knowledge Base

## Description
Manage and search the internal knowledge base: product documentation, handling procedures, and troubleshooting guides.

## Trigger
- User needs to find information in the knowledge base
- User says "knowledge base", "KB", "documentation", "handling guide", "troubleshoot"
- User encounters a new case and needs to find a similar solution

## Instructions

### When to activate
- Look up handling instructions for a specific issue
- Find product documentation (specs, manual, release notes)
- Look up internal procedures (SOP)
- Add a new article to the KB when a new solution is found
- Update existing articles when changes occur

### KB structure
- **Product Docs**: Specifications, features, compatibility, release notes
- **How-to Guides**: Step-by-step instructions for users
- **Troubleshooting**: Problem → Cause → Solution
- **SOP (Standard Operating Procedures)**: Internal procedures for the CS team
- **Policies**: Returns, warranty, refunds, etc.

### Process
1. Receive a lookup request
2. Search the KB using keywords + filters
3. Return the most relevant result
4. If not found → suggest creating a new article after the issue is resolved

### Rules
- Every KB article must have: title, category, tags, last updated date
- Troubleshooting articles: use the Problem → Cause → Solution format
- Review the KB monthly: archive outdated articles, update articles that need refreshing
- When resolving a new case not covered in the KB → create a draft KB article
- Track: which articles are searched most → prioritize updates

### Output Format
```
📚 Knowledge Base Result

**[Article title]**
🏷️ Category: [Category]
📅 Updated: [DD/MM/YYYY]

## Problem
[Problem description]

## Cause
[Root cause]

## Solution
1. [Step 1]
2. [Step 2]
3. [Step 3]

## Notes
- [Important note]

🔗 Related: [Link to related articles]
```
