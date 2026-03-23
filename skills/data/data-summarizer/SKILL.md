---
name: data-summarizer
description: Analyzes and summarizes datasets, producing statistical overviews, trend identification, and key insights. Use when the user asks to analyze data, find patterns, summarize a dataset, or generate descriptive statistics from CSV, JSON, or tabular data.
---

# Data Summarizer

## Quick Start
Analyze datasets to produce statistical summaries, identify trends, and extract key insights. Support CSV, JSON, and tabular data formats. Present findings in clear tables and bullet points.

## Workflow
1. Load and inspect the dataset: format, row count, column types, missing values
2. Generate descriptive statistics: mean, median, min, max, std dev for numeric columns
3. Identify data quality issues: nulls, outliers, duplicates, inconsistent formats
4. Analyze distributions and trends for key metrics
5. Extract top insights and notable patterns
6. Present a structured summary with visualizable recommendations

## Examples

**Example 1: Sales Data Summary**
Input: "Analyze this Q1 sales data file"
Output:
```
DATA SUMMARY
============
Dataset: Q1 Sales Data
Records: 2,847 rows × 12 columns
Period: 01/01/2026 – 31/03/2026

DATA QUALITY
-------------
| Check          | Result                    |
|----------------|---------------------------|
| Missing Values | 23 rows (0.8%) in 'region'|
| Duplicates     | 5 duplicate order IDs     |
| Outliers       | 3 orders > 500M VND       |

DESCRIPTIVE STATISTICS
----------------------
| Metric        | Value              |
|---------------|--------------------|
| Total Revenue | 12,450,000,000 VND |
| Avg Order     | 4,372,000 VND      |
| Median Order  | 2,850,000 VND      |
| Max Order     | 580,000,000 VND    |
| Min Order     | 125,000 VND        |

KEY INSIGHTS
------------
1. Revenue grew 18% month-over-month (Jan→Feb→Mar)
2. Top 3 products account for 45% of total revenue
3. Ho Chi Minh City region leads with 38% of orders
4. Weekend orders are 35% lower than weekday average
5. Average order value increased 12% compared to Q4 2025

RECOMMENDED VISUALIZATIONS:
- Line chart: monthly revenue trend
- Bar chart: revenue by region
- Pie chart: product category distribution
```

**Example 2: Quick Stats**
Input: "Give me a quick summary of this CSV file"
Output: A concise overview with row/column count, data types, missing values, and top-5 statistics.

## Tools
- Use `Read` to load CSV, JSON, or data files
- Use `Bash` to run data processing commands (sort, count, aggregate)
- Use `Write` to save analysis reports
- Use `Grep` to search for specific patterns in data files

## Error Handling
- If file format is unsupported → suggest converting to CSV or JSON
- If dataset is too large to process at once → sample or process in chunks
- If columns have mixed data types → flag and suggest cleanup
- If no numeric columns found → focus on categorical analysis (counts, modes, distributions)

## Rules
- Always start with data quality assessment before analysis
- Report exact numbers — never round without stating the original value
- Flag outliers but do not remove them without user confirmation
- Currency defaults to VND; adjust when data indicates otherwise
- Percentages should include the base number for context
- Suggest appropriate chart types for key findings
- Note any assumptions made during analysis

## Output Template
```
DATA SUMMARY
============
Dataset: [Name/Description]
Records: [Rows] × [Columns]
Period: [Date range if applicable]

DATA QUALITY
-------------
| Check | Result |
|-------|--------|
| [Check type] | [Finding] |

DESCRIPTIVE STATISTICS
----------------------
| Metric | Value |
|--------|-------|
| [Stat] | [Value] |

KEY INSIGHTS
------------
1. [Insight with supporting data]

RECOMMENDED VISUALIZATIONS:
- [Chart type]: [What it shows]
```
