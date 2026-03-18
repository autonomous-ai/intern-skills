# Resume Screener

## Description
Screen candidate resumes, evaluate fit against the JD, create a shortlist, and summarize candidate profiles.

## Trigger
- User needs to review a candidate's CV/resume
- User says "screen CV", "review resume", "evaluate candidate", "screen resume"
- User pastes a CV and wants an evaluation

## Instructions

### When to activate
- Batch-screen CVs against JD criteria
- Perform a detailed evaluation of a specific CV
- Compare multiple candidates for the same position
- Create a shortlist of the best-fit candidates
- Detect red flags in a CV

### Process
1. Receive the JD or hiring criteria from the user
2. Read and analyze the candidate's CV
3. Evaluate against criteria: experience, skills, education, culture fit
4. Score (1-10) and provide comments
5. Rank and propose a shortlist

### Evaluation Criteria
- **Must-have skills**: Required skills per the JD (weight: 40%)
- **Experience**: Years and relevance (weight: 25%)
- **Education**: Degrees, certifications (weight: 15%)
- **Nice-to-have**: Supplementary skills, notable projects (weight: 10%)
- **Presentation**: CV format, typos, consistency (weight: 10%)

### Rules
- No bias based on gender, age, or school
- Focus on actual skills and hands-on experience
- Red flags: large unexplained gaps, job-hopping < 1 year/company, contradictory information
- Green flags: clear career progression, specific projects with measurable results
- Always suggest interview questions based on the CV

### Output Format
```
👤 CV Evaluation: [Candidate Name]
🎯 Position: [Position Title]
⭐ Overall Score: [X/10]

| Criteria | Score | Comments |
|-----------|-------|----------|
| Must-have skills | [X/10] | [Comment] |
| Experience | [X/10] | [Comment] |
| Education | [X/10] | [Comment] |

✅ Strengths: [List]
⚠️ Points of Concern: [List]
❓ Suggested Interview Questions:
1. [Question]
2. [Question]

📋 Recommendation: [Pass / Consider / Reject]
```
