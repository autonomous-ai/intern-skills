---
name: po-generator
description: Generates Purchase Orders (POs) with proper line items, pricing, terms, and approval workflows. Use when the user asks to create a purchase order, draft a PO, order supplies, or prepare a procurement request.
---

# PO Generator

## Quick Start
Generate structured Purchase Orders with vendor details, line items, pricing, delivery terms, and approval requirements. Validate totals and flag orders requiring additional approval based on amount thresholds.

## Workflow
1. Gather PO details: vendor, requester, department, delivery date
2. Collect line items: item description, quantity, unit price, specifications
3. Calculate subtotals, taxes (VAT 10% default), and grand total
4. Determine approval level based on total amount
5. Generate the formatted PO document
6. Flag any items requiring special procurement procedures

## Examples

**Example 1: Standard PO**
Input: "Create a PO to purchase 50 office desk and chair sets from ABC Furniture Co., unit price 3,500,000 VND/set"
Output:
```
PURCHASE ORDER
==============
PO Number: PO-2026-[AUTO]
Date: 23/03/2026
Status: Draft — Pending Approval

FROM (Buyer):
  Company: [Your Company Name]
  Department: [Department]
  Requester: [Name]

TO (Vendor):
  Company: ABC Furniture Co.
  Address: [Vendor Address]
  Contact: [Vendor Contact]

DELIVERY
--------
  Required Date: [DD/MM/YYYY]
  Location: [Delivery Address]
  Terms: [FOB / CIF / DAP]

LINE ITEMS
----------
| # | Description          | Qty | Unit Price     | Total           |
|---|----------------------|-----|----------------|-----------------|
| 1 | Office desk and chair set | 50  | 3,500,000 VND  | 175,000,000 VND |
|---|----------------------|-----|----------------|-----------------|
|   | Subtotal             |     |                | 175,000,000 VND |
|   | VAT (10%)            |     |                |  17,500,000 VND |
|   | GRAND TOTAL          |     |                | 192,500,000 VND |

PAYMENT TERMS: Net 30 days upon delivery and inspection

APPROVAL REQUIRED:
- [x] Department Manager (≤200M VND)
- [ ] Finance Director (>200M VND)
- [ ] CEO (>500M VND)

NOTES:
- Warranty: [Specify warranty terms]
- Quality inspection required upon delivery
- Reference quote: [Quote number if available]

---
Prepared by: [Requester Name]
Date: 23/03/2026
```

**Example 2: Multi-Item PO**
Input: "Create a PO for IT equipment: 10 laptops at $800 each, 10 monitors at $300 each, 20 keyboards at $50 each"
Output: A multi-line PO with USD pricing, subtotals per line, and total with applicable taxes.

## Tools
- Use `Read` to load vendor quotes, price lists, or PO templates
- Use `Write` to save generated POs to files
- Use `Bash` to calculate totals and taxes

## Error Handling
- If vendor details are missing → create PO with placeholders and list required fields
- If unit price not specified → leave blank and flag for pricing confirmation
- If tax rate unclear → default to VAT 10% and note the assumption
- If delivery date not specified → flag as required before submission

## Rules
- PO numbers follow format: PO-YYYY-[sequential]
- Default tax: VAT 10% for Vietnam; specify if different
- Approval thresholds: ≤200M (Dept Manager), >200M (Finance Director), >500M (CEO)
- All amounts must show subtotal, tax, and grand total
- Always include: vendor details, line items, delivery terms, payment terms
- Currency defaults to VND; support USD with exchange rate note
- Quantities must be positive whole numbers
- Flag items over 100M VND individually for asset tracking

## Output Template
```
PURCHASE ORDER
==============
PO Number: PO-[YYYY]-[NNN]
Date: [DD/MM/YYYY]
Status: Draft — Pending Approval

FROM (Buyer):
  [Buyer details]

TO (Vendor):
  [Vendor details]

LINE ITEMS
----------
| # | Description | Qty | Unit Price | Total |
|---|-------------|-----|------------|-------|
| [N] | [Item] | [Qty] | [Price] | [Total] |
|   | Subtotal    |     |            | [Amount] |
|   | VAT ([%])   |     |            | [Amount] |
|   | GRAND TOTAL |     |            | [Amount] |

PAYMENT TERMS: [Terms]
APPROVAL REQUIRED: [Based on amount thresholds]
```
