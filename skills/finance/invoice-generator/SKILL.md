# Invoice Generator

## Description
Create and manage invoices, quotations, and receipts/payment vouchers. Track payment status and send automatic payment reminders.

## Trigger
- User needs to create an invoice or quotation
- User says "invoice", "quotation", "receipt", "payment voucher"
- User wants to check payment status

## Instructions

### When to activate
- Create sales/service invoices
- Create quotations for customers
- Create receipts / payment vouchers
- Track accounts receivable and send payment reminders
- Export revenue reports by period

### Document types
- **Invoice**: for sales/services, includes reference number and VAT
- **Quotation**: price proposal for customers, has a validity period
- **Receipt**: confirmation of received payment
- **Payment voucher**: confirmation of disbursed payment
- **Debit note**: accounts receivable notification

### Process
1. Select document type
2. Enter information: customer, products/services, quantity, unit price
3. Auto-calculate: line totals, discounts, VAT, grand total
4. Generate document number following standard format
5. Export and send to the counterparty

### Rules
- Invoice number format: INV-YYYYMM-XXXX (auto increment)
- Default VAT is 10%, adjustable (8%, 5%, 0%)
- Quotations are valid for 30 days by default
- Invoices overdue by 15 days → automatic reminder
- Amount in words must match amount in numbers

### Output Format
```
🧾 [Document type] #[Number]
📅 Date: [DD/MM/YYYY]
🏢 Customer: [Name]

| No. | Description | Qty | Unit Price | Amount |
|-----|-------------|-----|------------|--------|
| 1   | [Item]      | [N] | [Price]    | [Total]|

Subtotal: [Subtotal]
VAT (10%): [VAT]
**Grand Total: [Grand total]**
In words: [Amount in words]
```
