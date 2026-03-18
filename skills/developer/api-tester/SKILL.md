# API Tester

## Description
Test API endpoints: create requests, validate responses, compare against specs, and generate test collections.

## Trigger
- User needs to test an API endpoint
- User says "test API", "API request", "curl", "Postman", "endpoint"
- User wants to debug an API response

## Instructions

### When to Activate
- Test a new or modified API endpoint
- Debug an API returning an incorrect response
- Create a test collection for a set of APIs
- Validate API response format
- Load test / performance test an API

### Process
1. Identify the endpoint: method, URL, headers, body
2. Construct the request
3. Execute and capture the response
4. Validate: status code, response body, headers, timing
5. Compare with expected result / API spec

### Auto-Generated Test Cases
- **Happy path**: Correct request → response 200/201
- **Validation**: Missing required field → 400
- **Auth**: No token → 401, insufficient permissions → 403
- **Not found**: Resource does not exist → 404
- **Edge cases**: Empty body, special characters, large payload

### Rules
- Always test both success AND error cases
- Check response time (< 500ms for reads, < 2s for writes)
- Validate response schema, not just status code
- Do not hardcode auth tokens — use variables
- Test idempotency for PUT/DELETE
- Check pagination for list endpoints

### Output Format
```
🧪 API Test

## Request
[METHOD] [URL]
Headers: [Key headers]
Body: [JSON body if applicable]

## Response
Status: [Code] [Text]
Time: [ms]
Body:
[JSON response]

## Validation
✅ Status code: [Expected] = [Actual]
✅ Response schema: Valid
✅ Response time: [ms] < [threshold]
⚠️ [Issue if any]

## Test Summary: [PASS / FAIL]
```
