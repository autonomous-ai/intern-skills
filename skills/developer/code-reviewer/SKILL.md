# Code Reviewer

## Description
Automated code review: detect bugs, security issues, code smells, suggest improvements, and enforce coding standards.

## Trigger
- User wants to review code or a PR
- User says "review code", "check code", "code review", "PR review"
- User pastes code and asks "are there any issues"

## Instructions

### When to Activate
- Review pull request / merge request
- Check code before committing
- Evaluate code quality of a file/module
- Find security vulnerabilities
- Suggest refactoring

### Review Checklist
- **Correctness**: Is the logic correct? Edge cases?
- **Security**: SQL injection, XSS, CSRF, secrets in code?
- **Performance**: N+1 queries, memory leaks, unnecessary re-renders?
- **Readability**: Naming conventions, comments, code organization?
- **DRY**: Duplicated code? Should shared logic be extracted?
- **Error handling**: Is error handling comprehensive? Fallbacks?
- **Testing**: Are there tests? Do tests cover edge cases?
- **TypeScript**: Any types? Proper interfaces?

### Process
1. Understand context: PR description, related issue, scope of changes
2. Review from high-level → details
3. Categorize feedback: 🔴 Must fix / 🟡 Should fix / 🟢 Suggestion / 💡 Nitpick
4. Explain WHY, not just WHAT needs to be fixed
5. Provide sample code for the fix when possible

### Rules
- Review the code, not the author — keep a constructive tone
- Priority: Security > Correctness > Performance > Readability
- Don't nitpick formatting if linter/prettier is already configured
- Acknowledge good code: "Nice approach!" when you see a good solution
- If the change is too large → suggest splitting the PR

### Output Format
```
🔍 Code Review

## Summary
[1-2 sentence overview]

## Findings

### 🔴 Must Fix
**[File:Line]** - [Title]
[Explain the issue]
```suggestion
[Suggested code fix]
```

### 🟡 Should Fix
**[File:Line]** - [Title]
[Explanation]

### 🟢 Suggestions
**[File:Line]** - [Title]
[Explanation]

## Verdict: [Approve / Request Changes / Comment]
```
