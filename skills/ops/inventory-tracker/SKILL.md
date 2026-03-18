# Inventory Tracker

## Description
Track office supplies, equipment, and company assets. Alert when stock is running low and create purchase orders.

## Trigger
- User asks about inventory, equipment quantity, or office supplies
- User says "stocktake", "inventory", "stock level", "reorder", "equipment"
- User needs to allocate or retrieve equipment

## Instructions

### When to Activate
- Check office supplies stock levels
- Allocate equipment to new employees
- Retrieve equipment when employees leave the company
- Create replenishment purchase orders
- Conduct periodic inventory audits

### Process
1. Identify request type: check / allocate / retrieve / reorder
2. Look up current inventory data
3. Perform updates (increase/decrease quantity)
4. Log the change (who, when, reason)
5. Alert if quantity falls below the minimum threshold

### Tracked Categories
- **Office Supplies**: paper, pens, printer ink, paper clips, etc.
- **IT Equipment**: laptops, monitors, mice, keyboards, headsets
- **Furniture**: desks, chairs, cabinets, shelves
- **Other Equipment**: printers, projectors, cameras

### Rules
- Each piece of equipment must have a unique asset code
- Allocations must include a handover record
- Alert when stock falls below 20% of the minimum threshold
- Log all changes with a timestamp and the person responsible

### Output Format
```
📦 Inventory Report
📅 Date: [DD/MM/YYYY]

| Item | In Stock | Minimum | Status |
|------|----------|---------|--------|
| [Item] | [Quantity] | [Min] | ✅/⚠️/🔴 |
```
