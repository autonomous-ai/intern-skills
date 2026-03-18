---
name: invoice-generator
description: Generates invoices, quotations, receipts, payment vouchers, and debit notes with auto-numbering, VAT calculation, and amount-in-words verification. Use when the user asks to create an invoice, draft a quotation, issue a receipt, or prepare any billing document.
---

# Invoice Generator

## Quick Start
Create structured financial documents (Invoice, Quotation, Receipt, Payment Voucher, Debit Note) with automatic numbering, line-item calculations, VAT, and amount-in-words verification.

## Workflow
1. Identify the document type: Invoice, Quotation, Receipt, Payment Voucher, or Debit Note
2. Extract details: customer name, line items (description, quantity, unit price), discounts, VAT rate, payment terms
3. Ask for any missing mandatory fields
4. Generate sequential document number (e.g., INV-YYYYMM-XXXX)
5. Calculate line totals, apply discounts, compute VAT (default 10%)
6. Generate amount in words and verify it matches the figures
7. Set payment terms and due dates (quotations default to 30 days validity)
8. Output the complete structured document

## Examples

**Example 1: Simple invoice**
Input: "Create an invoice for ABC Corp: 10 units of Widget A at 500,000 VND each"
Output:
```
INVOICE #INV-202603-0012
========================
Date:     18/03/2026
Customer: ABC Corp

LINE ITEMS
----------
| No. | Description | Qty | Unit Price    | Amount        |
|-----|-------------|-----|---------------|---------------|
| 1   | Widget A    | 10  | 500,000 VND   | 5,000,000 VND |

TOTALS
------
Subtotal:       5,000,000 VND
Discount:       0 VND
VAT (10%):      500,000 VND
Grand Total:    5,500,000 VND
In words:       Five million five hundred thousand Vietnamese dong

TERMS
-----
Payment due:    17/04/2026
Status:         Draft
```

**Example 2: Quotation with discount**
Input: "Draft a quotation for XYZ Ltd: 5 laptops at 20,000,000 VND, 10 monitors at 8,000,000 VND, 5% discount"
Output:
```
QUOTATION #QUO-202603-0003
==========================
Date:     18/03/2026
Customer: XYZ Ltd

LINE ITEMS
----------
| No. | Description | Qty | Unit Price      | Amount          |
|-----|-------------|-----|-----------------|-----------------|
| 1   | Laptop      | 5   | 20,000,000 VND  | 100,000,000 VND |
| 2   | Monitor     | 10  | 8,000,000 VND   | 80,000,000 VND  |

TOTALS
------
Subtotal:       180,000,000 VND
Discount (5%):  9,000,000 VND
VAT (10%):      17,100,000 VND
Grand Total:    188,100,000 VND
In words:       One hundred eighty-eight million one hundred thousand Vietnamese dong

TERMS
-----
Valid until:    17/04/2026
Status:         Draft
```

## Tools
- Use `Read` to load customer records and previous document sequences
- Use `Grep` to search for related documents by customer or document number
- Use `Write` to save generated documents and update the sequence counter
- Use `Bash` to perform arithmetic for totals, VAT, and discounts

## Error Handling
- If customer name or line items are missing -> ask user to provide them
- If VAT rate is unspecified -> apply default 10% and inform the user
- If amount in words does not match figures -> recalculate and correct before output
- If duplicate document number is detected -> increment sequence and regenerate
- If unsupported document type is requested -> list the five supported types

## Rules
- Document number formats: INV-YYYYMM-XXXX, QUO-YYYYMM-XXXX, REC-YYYYMM-XXXX, PV-YYYYMM-XXXX, DN-YYYYMM-XXXX
- Supported VAT rates: 0%, 5%, 8%, 10% (default 10%)
- Quotations valid for 30 days by default
- Invoices overdue by 15 days trigger a reminder notation
- Amount in words must always match amount in figures
- Default currency is VND; support USD when specified
- Every document must include: document number, date, customer, at least one line item, and total

## Output Template
```
[DOCUMENT TYPE] #[Document Number]
===================================
Date:     [DD/MM/YYYY]
Customer: [Customer name]
Address:  [Customer address, if available]

LINE ITEMS
----------
| No. | Description        | Qty | Unit Price    | Amount        |
|-----|--------------------|-----|---------------|---------------|
| 1   | [Item description] | [N] | [Unit price]  | [Line total]  |

TOTALS
------
Subtotal:       [Subtotal amount]
Discount:       [Discount amount, if applicable]
VAT ([Rate]%):  [VAT amount]
Grand Total:    [Grand total]
In words:       [Amount in words]

TERMS
-----
Payment due:    [Due date or validity period]
Status:         [Draft / Issued / Paid / Overdue]

NOTES
-----
- [Any additional terms, conditions, or remarks]
```
