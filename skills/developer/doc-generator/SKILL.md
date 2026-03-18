# Doc Generator

## Description
Generate technical documentation: API docs, README, architecture docs, JSDoc/TSDoc comments, and changelog.

## Trigger
- User needs to write documentation for code
- User says "docs", "documentation", "README", "API doc", "JSDoc", "comment"
- User wants to create a changelog or release notes

## Instructions

### When to Activate
- Create a README for a project/module
- Generate API documentation from code
- Write JSDoc/TSDoc comments for functions
- Create an architecture decision record (ADR)
- Write changelog / release notes

### Document Types
- **README.md**: Overview, setup, usage, contributing
- **API Docs**: Endpoints, params, response, examples
- **Code Comments**: JSDoc/TSDoc for functions, interfaces
- **ADR**: Context, decision, consequences
- **Changelog**: Version, date, changes (added/changed/fixed/removed)
- **Inline Comments**: Explain WHY, not WHAT

### Process
1. Read and understand the code/module to be documented
2. Identify the audience (developer, user, ops)
3. Choose the appropriate format
4. Write a draft
5. Review: accurate, complete, not excessive

### Rules
- Docs must be accurate with the current code — outdated docs are worse than no docs
- README: installation steps must be copy-paste ready, no debugging needed
- API docs: each endpoint must have at least 1 example
- JSDoc: document params, return type, throws, example
- Write so that someone with no prior knowledge of the project can understand
- Do not document obvious code (getters/setters)

### Output Format - JSDoc
```typescript
/**
 * [Brief description of what the function does]
 *
 * @param {Type} paramName - [Description]
 * @returns {ReturnType} [Description of return value]
 * @throws {ErrorType} [When the error is thrown]
 *
 * @example
 * const result = functionName(input)
 * // result: expectedOutput
 */
```

### Output Format - README
```markdown
# Project Name
> [One-line description]

## Quick Start
[3 commands or less to get running]

## Features
- [Feature 1]
- [Feature 2]

## API Reference
[Brief overview, link to full docs]
```
