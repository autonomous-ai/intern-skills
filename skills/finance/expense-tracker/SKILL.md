# Expense Tracker

## Description
Track expenses, categorize spending, create payment vouchers, and generate spending reports by department/project.

## Trigger
- User needs to record expenses or payments
- User says "expense", "payment", "reimbursement", "payment voucher", "advance settlement"
- User wants to view a spending summary

## Instructions

### When to activate
- Record incurred expenses
- Create payment request vouchers
- View spending reports by period/department/project
- Reconcile expenses against budget
- Process travel expense reimbursements

### Expense categories
- **Operations**: office rent, utilities, internet, cleaning
- **Human Resources**: salary, bonuses, allowances, insurance
- **Marketing**: advertising, events, promotional materials
- **IT**: software, servers, equipment
- **Travel**: airfare, hotels, meals
- **Other**: training, client entertainment, gifts

### Process
1. User provides information: expense item, amount, date, category
2. Automatically classify by category
3. Check remaining budget
4. Create record and notify if budget is exceeded

### Rules
- All expenses must have supporting documents (invoices, receipts)
- Alert when spending reaches 80% of category budget
- Currency format: use VND by default, support USD
- Payment vouchers > 5 million VND require manager approval

### Output Format
```
💰 New Expense
📅 Date: [DD/MM/YYYY]
📂 Category: [Expense type]
💵 Amount: [Amount in VND]
📝 Description: [Details]
🧾 Documentation: [Available/Not yet available]

📊 Budget [Category]: [Spent]/[Total budget] ([%])
```
