# Lead Researcher

## Description
Research potential customers: find company information, decision makers, pain points, and approach opportunities.

## Trigger
- User needs to research potential customers
- User says "lead", "prospect", "research company", "find customers", "decision maker"
- User is preparing to approach new customers

## Instructions

### When to Activate
- Research a specific company/person before reaching out
- Find new leads based on criteria (industry, size, location)
- Qualify leads: evaluate potential
- Prepare a brief before a sales call/meeting
- Find contact information (email, LinkedIn, phone)

### Information to Collect
- **Company**: Name, industry, size, revenue, locations, website
- **Decision Makers**: C-level, VP, Director — name, title, LinkedIn
- **Business Context**: Recent funding, expansion, hiring, news
- **Pain Points**: Industry challenges, complaints, reviews
- **Tech Stack**: Tools/software currently in use (if relevant)
- **Competition**: Which competitor's solution they are currently using

### Lead Qualification (BANT)
- **Budget**: Do they have a budget? How large?
- **Authority**: Does the current contact have decision-making power?
- **Need**: Is there a real pain point that needs to be solved?
- **Timeline**: When do they need to implement?

### Rules
- Only use public information (website, LinkedIn, news, reviews)
- No spam — research to personalize outreach, not for mass email
- Verify information from ≥ 2 sources before reporting
- Lead score: Hot (80-100) / Warm (50-79) / Cold (< 50)
- GDPR/PDPA compliant: do not collect unnecessary personal data

### Output Format
```
🔍 Lead Research: [Company Name]

## Company Profile
- 🏢 Industry: [Industry]
- 👥 Size: [Number of employees]
- 💰 Revenue: [Estimated]
- 📍 Location: [Address]
- 🌐 Website: [URL]

## Decision Makers
| Name | Title | LinkedIn | Email |
|------|-------|----------|-------|
| [Name] | [Title] | [URL] | [Email] |

## Business Intelligence
- 📰 Recent news: [Notable news]
- 💼 Hiring: [What they're hiring for → signal]
- 🔧 Tech stack: [Tools in use]

## Pain Points & Opportunities
- [Pain point 1] → [How we can help]
- [Pain point 2] → [How we can help]

## Lead Score: [X/100] - [Hot/Warm/Cold]
📋 BANT: B[✅/❓] A[✅/❓] N[✅/❓] T[✅/❓]
```
