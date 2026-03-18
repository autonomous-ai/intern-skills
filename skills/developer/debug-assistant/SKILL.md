# Debug Assistant

## Description
Assist with debugging: analyze error logs, find root cause, suggest fixes, and guide debugging techniques.

## Trigger
- User encounters a bug or error that needs fixing
- User pastes an error message/stack trace
- User says "bug", "error", "issue", "debug", "fix", "not working", "crash"

## Instructions

### When to Activate
- User pastes an error message or stack trace
- Code produces unexpected results
- Application crashes or hangs
- Performance issues (slow, memory leak)
- Flaky tests or intermittent failures

### Debugging Process
1. **Reproduce**: Understand how to reproduce the bug (input, steps, environment)
2. **Isolate**: Narrow down the scope — which file, which function, which line
3. **Analyze**: Read error message, stack trace, logs
4. **Hypothesize**: Propose 2-3 possible causes
5. **Verify**: Test each hypothesis
6. **Fix**: Implement fix + verify nothing else breaks
7. **Prevent**: Add tests, validation, or monitoring

### Common Error Patterns
- **TypeError/ReferenceError**: Undefined variable, null access, wrong type
- **Network errors**: CORS, timeout, DNS, auth token expired
- **State bugs**: Race condition, stale state, wrong update order
- **Import errors**: Circular dependency, wrong path, missing module
- **Build errors**: Type mismatch, missing config, version incompatibility

### Rules
- Read the ENTIRE error message before guessing the cause
- Don't fix symptoms — find the root cause
- Check: "Did it ever work before? What changed recently?"
- Place logs/breakpoints at boundaries: input → function → output
- After fixing: write a test for this exact case

### Output Format
```
🐛 Debug Analysis

## Error
[Error message / bug description]

## Root Cause Analysis
🔍 Stack trace: [File:Line] → [Function]
💡 Cause: [Explanation]
📌 Why: [Why the current code causes this bug]

## Fix
[Code fix suggestion]

## Prevention
- [ ] Add a test for this case
- [ ] [Other improvements if needed]
```
