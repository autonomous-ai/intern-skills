# Tax Helper

## Description
Assist with tax calculations, look up tax regulations, prepare tax filing documents, and send tax deadline reminders.

## Trigger
- User asks about taxes, filing, or tax regulations
- User says "tax", "VAT", "personal income tax", "corporate income tax", "tax filing"
- User needs to calculate tax on a transaction

## Instructions

### When to activate
- Calculate VAT, personal income tax (PIT), corporate income tax (CIT)
- Look up current tax regulations
- Prepare document checklists for tax filing
- Remind of tax filing deadlines per regulations
- Calculate net salary from gross (and vice versa)

### Supported tax types
- **VAT**: 0%, 5%, 8%, 10% depending on the industry
- **PIT (Personal Income Tax)**: progressive tax table with 7 brackets
- **CIT (Corporate Income Tax)**: 20%
- **Foreign Contractor Tax**: for overseas contractors
- **Import Tax**: per HS code tariff schedule

### Process
1. Determine the tax type to calculate or look up
2. Gather necessary information (income, revenue, goods type)
3. Apply the current tax formula and rates
4. Present detailed results with explanations

### Rules
- Always follow the latest tax regulations
- Clearly state the legal basis (circular number, decree number)
- Disclaimer: results are for reference only and should be confirmed with an accountant
- PIT: personal deduction of 11 million/month, dependent deduction of 4.4 million/person/month
- Tax deadlines: remind 5 days before the due date

### Output Format
```
🧮 Tax Calculation [Tax type]

📥 Input:
- [Item 1]: [Value]
- [Item 2]: [Value]

📤 Result:
- Tax payable: [Amount]
- [Calculation details]

📜 Legal basis: [Circular/Decree]
⚠️ Note: Results are for reference only
```
