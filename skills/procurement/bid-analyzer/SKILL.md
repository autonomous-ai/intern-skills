---
name: bid-analyzer
description: Analyzes and compares bid submissions for procurement tenders, evaluating technical and financial proposals against requirements. Use when the user asks to evaluate bids, compare tender submissions, score proposals, or select a winning bid.
---

# Bid Analyzer

## Quick Start
Evaluate bid submissions using a structured two-envelope method (technical + financial). Score proposals against predefined criteria, rank bidders, and provide selection recommendations with full transparency.

## Workflow
1. Review tender requirements and evaluation criteria
2. Parse bid submissions: technical proposals and financial offers
3. Score technical proposals against requirements (pass/fail threshold: 70%)
4. Evaluate financial proposals for qualified bidders only
5. Calculate combined scores (default: Technical 60%, Financial 40%)
6. Rank bidders and provide selection recommendation with rationale

## Examples

**Example 1: Bid Evaluation**
Input: "Evaluate 3 bid submissions for a security camera system"
Output:
```
BID ANALYSIS REPORT
===================
Tender: Security Camera System Installation
Bid Opening Date: 23/03/2026
Number of Bids: 3

TECHNICAL EVALUATION (Pass threshold: 70/100)
----------------------------------------------
| # | Criteria                  | Weight | Bidder A | Bidder B | Bidder C |
|---|---------------------------|--------|----------|----------|----------|
| 1 | Technical Specifications  | 25     | 22/25    | 20/25    | 18/25    |
| 2 | Experience & References   | 20     | 18/20    | 15/20    | 19/20    |
| 3 | Implementation Plan       | 20     | 16/20    | 18/20    | 14/20    |
| 4 | Warranty & Support        | 15     | 12/15    | 13/15    | 10/15    |
| 5 | Team Qualifications       | 10     | 8/10     | 9/10     | 7/10     |
| 6 | Compliance with Specs     | 10     | 9/10     | 8/10     | 7/10     |
|   |                           |        |          |          |          |
|   | TECHNICAL SCORE           | 100    | 85/100   | 83/100   | 75/100   |
|   | STATUS                    |        | ✅ Pass  | ✅ Pass  | ✅ Pass  |

FINANCIAL EVALUATION (Qualified bidders only)
----------------------------------------------
| Component              | Bidder A         | Bidder B         | Bidder C         |
|------------------------|------------------|------------------|------------------|
| Equipment Cost         | 450,000,000 VND  | 380,000,000 VND  | 520,000,000 VND  |
| Installation           | 80,000,000 VND   | 95,000,000 VND   | 65,000,000 VND   |
| Annual Maintenance     | 25,000,000 VND   | 30,000,000 VND   | 20,000,000 VND   |
| 3-Year TCO             | 605,000,000 VND  | 565,000,000 VND  | 645,000,000 VND  |
| Financial Score        | 93.4/100         | 100/100          | 87.6/100         |

(Financial Score = Lowest Bid ÷ Bidder's Bid × 100)

COMBINED SCORE (Technical 60% + Financial 40%)
-----------------------------------------------
| Bidder   | Technical (60%) | Financial (40%) | Combined | Rank |
|----------|-----------------|-----------------|----------|------|
| Bidder A | 51.0            | 37.4            | 88.4     | #1   |
| Bidder B | 49.8            | 40.0            | 89.8     | #1   |
| Bidder C | 45.0            | 35.0            | 80.0     | #3   |

RECOMMENDATION: Bidder B
- Highest combined score (89.8)
- Lowest 3-year TCO (565M VND)
- Strong technical capability with best implementation plan

NOTES:
- All 3 bidders passed technical threshold (≥70)
- Bidder B saves 40M VND over 3 years vs Bidder A
- Bidder C's lower technical score and highest cost make it least favorable
```

**Example 2: Quick Bid Summary**
Input: "Summarize these 5 bids for the office renovation project"
Output: A summary table with key metrics and quick recommendation.

## Tools
- Use `Read` to load bid documents and tender requirements
- Use `Write` to save evaluation reports
- Use `Bash` to calculate scores and rankings
- Use `Grep` to search for specific terms in bid documents

## Error Handling
- If evaluation criteria not defined → propose standard criteria and confirm with user
- If a bid is incomplete → note missing components and score only available sections
- If technical scores are tied → use financial score as tiebreaker
- If all bids fail technical threshold → recommend re-tendering

## Rules
- Technical evaluation always comes before financial evaluation
- Only technically qualified bidders (≥70/100) proceed to financial evaluation
- Default weighting: Technical 60%, Financial 40% (adjustable per tender)
- Financial scoring formula: (Lowest Bid ÷ Bidder's Bid) × 100
- All scoring must be transparent and documented
- Compare Total Cost of Ownership (TCO), not just upfront price
- Flag any abnormally low bids (>30% below average) as potential risk
- Note any non-compliant or conditional bids explicitly
- Maintain fairness — evaluate all bidders against the same criteria

## Output Template
```
BID ANALYSIS REPORT
===================
Tender: [Tender Title]
Bid Opening Date: [DD/MM/YYYY]
Number of Bids: [N]

TECHNICAL EVALUATION (Pass threshold: 70/100)
----------------------------------------------
| # | Criteria | Weight | Bidder A | Bidder B | ... |
|---|----------|--------|----------|----------|-----|
| [N] | [Criterion] | [Points] | [Score] | [Score] | ... |

FINANCIAL EVALUATION
--------------------
| Component | Bidder A | Bidder B | ... |
|-----------|----------|----------|-----|
| [Cost item] | [Amount] | [Amount] | ... |
| Financial Score | [Score] | [Score] | ... |

COMBINED SCORE
--------------
| Bidder | Technical | Financial | Combined | Rank |
|--------|-----------|-----------|----------|------|
| [Name] | [Score]   | [Score]   | [Score]  | [#N] |

RECOMMENDATION: [Winning bidder with rationale]
```
