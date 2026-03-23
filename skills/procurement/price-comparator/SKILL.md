---
name: price-comparator
description: Compares pricing across vendors, products, or time periods with detailed cost breakdowns and total cost of ownership analysis. Use when the user asks to compare prices, find the best deal, analyze cost differences, or evaluate total cost of ownership.
---

# Price Comparator

## Quick Start
Compare prices across vendors or products with structured breakdowns including unit costs, volume discounts, hidden fees, and total cost of ownership (TCO). Present clear side-by-side comparisons with savings calculations.

## Workflow
1. Identify comparison scope: same product across vendors, or different products/plans
2. Collect pricing data: unit price, quantity discounts, fees, delivery costs, payment terms
3. Normalize pricing to the same unit and currency for fair comparison
4. Calculate TCO including hidden costs: setup, maintenance, shipping, warranties
5. Generate side-by-side comparison with savings analysis
6. Recommend the best option with rationale

## Examples

**Example 1: Vendor Price Comparison**
Input: "Compare prices from 3 A4 paper suppliers for an order of 500 reams"
Output:
```
PRICE COMPARISON
================
Product: A4 Paper 80gsm
Quantity: 500 ream
Date: 23/03/2026

SIDE-BY-SIDE
-------------
| Cost Component    | Vendor A       | Vendor B       | Vendor C       |
|-------------------|----------------|----------------|----------------|
| Unit Price        | 58,000 VND     | 55,000 VND     | 62,000 VND     |
| Volume Discount   | -5% (≥500)     | -3% (≥300)     | -8% (≥500)     |
| Price After Disc  | 55,100 VND     | 53,350 VND     | 57,040 VND     |
| Subtotal          | 27,550,000 VND | 26,675,000 VND | 28,520,000 VND |
| Delivery Fee      | Free           | 500,000 VND    | Free           |
| VAT (10%)         | 2,755,000 VND  | 2,717,500 VND  | 2,852,000 VND  |
| TOTAL COST        | 30,305,000 VND | 29,892,500 VND | 31,372,000 VND |
|                   |                |                |                |
| Payment Terms     | Net 30         | COD            | Net 45         |
| Delivery Time     | 3 days         | 1 day          | 5 days         |
| Min Order         | 100 ream       | 50 ream        | 200 ream       |

RANKING BY TOTAL COST:
1. Vendor B: 29,892,500 VND (cheapest)
2. Vendor A: 30,305,000 VND (+412,500 / +1.4%)
3. Vendor C: 31,372,000 VND (+1,479,500 / +4.9%)

SAVINGS: Choosing Vendor B saves 1,479,500 VND vs most expensive option.

RECOMMENDATION: Vendor B offers best price, but requires COD payment.
If cash flow is a concern, Vendor A is 1.4% more but offers Net 30 terms.
```

**Example 2: Subscription Plan Comparison**
Input: "Compare pricing plans for these 3 project management tools"
Output: Monthly/annual cost comparison with feature matrix and per-user TCO.

## Tools
- Use `Read` to load vendor quotes and price lists
- Use `Write` to save comparison reports
- Use `WebSearch` to verify current pricing or find additional vendors
- Use `Bash` to calculate totals and percentages

## Error Handling
- If pricing is in different currencies → convert to a single currency and note exchange rate
- If some cost components are missing → note assumptions and mark estimated values
- If volume discounts have complex tiers → calculate for the specific quantity requested
- If pricing has expired → flag the date and suggest re-quoting

## Rules
- Always normalize to the same unit (per piece, per month, per user) for fair comparison
- Include ALL costs: unit price, discounts, shipping, taxes, setup fees, hidden fees
- Calculate total cost of ownership, not just sticker price
- Show both absolute difference and percentage difference
- Rank options by total cost with clear #1, #2, #3
- Note non-price factors: payment terms, delivery speed, minimum orders
- Currency defaults to VND; show exchange rate when converting
- Flag any pricing that seems unusually low (potential quality concern)

## Output Template
```
PRICE COMPARISON
================
Product: [Product/Service]
Quantity: [Amount]
Date: [DD/MM/YYYY]

SIDE-BY-SIDE
-------------
| Cost Component | Option A | Option B | Option C |
|----------------|----------|----------|----------|
| [Component]    | [Amount] | [Amount] | [Amount] |
| TOTAL COST     | [Amount] | [Amount] | [Amount] |

RANKING BY TOTAL COST:
1. [Best option]: [Total] (cheapest)
2. [Option]: [Total] (+[Difference] / +[%])

SAVINGS: [Amount saved by choosing best option vs worst]

RECOMMENDATION: [Best option with rationale including non-price factors]
```
