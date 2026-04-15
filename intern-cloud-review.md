# Intern Cloud - Product & Landing Page Review

> Review date: 2026-04-13
> Landing page: https://staging.autonomousdev.xyz/hire-your-interns

---

## 1. Product Overview

- **Concept**: Cho user thue AI intern chay tren OpenClaw, model Claude Sonnet
- **Gia**: $80-150 USD/month per intern
- **9 roles**: Sales, Marketing, Ops, HR, Finance, Legal, Data, Procurement, PM
- **Channels**: Slack, Telegram, Discord
- **Landing page style**: Resume/CV cho moi intern

---

## 2. Chuyen doi tu duy Tech Lead -> Product Owner

### Thay doi cot loi

| Tu (Tech Lead) | Sang (Product Owner) |
|---|---|
| Giai phap tot nhat | Van de dung nhat |
| Code quality | Outcome quality |
| Build dung spec | Discover roi moi build |
| Depth (dao sau 1 domain) | Breadth (hieu rong nhieu domain) |
| Team execution | Prioritization & tradeoff |
| Certainty | Comfortable with ambiguity |

### Hanh dong cu the

- Noi chuyen 3-5 user/tuan de xay intuition ve pain point
- Viet 1-pager truoc khi code (tra loi "why" truoc "how")
- Theo doi product metrics hang ngay
- Tu hoi: "Neu tao la nguoi tra tien, tao co dung khong?"

### Loi the cua Tech Lead chuyen sang PO

- Hieu feasibility, estimate effort chinh xac
- Biet khi nao team over-engineer hay under-engineer
- Khong bi dev "dat mui"
- Cai kho nhat: buong ego ve technical excellence, chap nhan ship "du tot"

---

## 3. Danh gia Product Strategy

### Pricing: $80-150/month

| Option | Cost/month | Effort |
|---|---|---|
| Real intern (US) | $1,500-3,000 | Train 2-4 tuan |
| Real intern (VN/offshore) | $300-500 | Manage + timezone |
| ChatGPT Team | $25-30/user | User tu prompt |
| **AI Intern** | **$80-150** | **Assign task, done** |

**Verdict**: Sweet spot dung. No-brainer budget — manager khong can xin approval.

### Bull Case

1. **Framing "intern" giai dung bai toan positioning** — "delegate work" vs "use tool"
2. **Gia hop ly** — gap $30 (ChatGPT) vs $80 (intern) justified neu user khong can prompt
3. **Vertical SaaS playbook** — 9 roles = 9 niches, vertical luon thang horizontal ve conversion

### Bear Case

1. **Moat o dau?** — Claude + system prompt + tools = ai cung build duoc. Neu Claude ra "Claude for Sales" $30/month thi sao?
2. **Margin mong** — API cost $20-60/user/month, margin chi 30-50%, scale linear
3. **Expectation gap** — User ky vong "giao viec xong quen di" nhung AI van hallucinate, can review
4. **Integration nightmare** — HubSpot, Salesforce, Zendesk, SAP... moi cai la 1 maintenance burden

### Recommendations

1. **Focus 1-2 role truoc** (Sales hoac Ops) — dung danh 9 role cung luc
2. **Moat = workflow depth** — pre-built workflows chuyen sau, khong phai AI
3. **Land free, expand paid** — free tier 1 intern limited, $80 full, $150 priority
4. **Time to first value < 10 phut** — sign up -> connect Slack -> assign task -> nhan ket qua

### Rating

| Factor | Score |
|---|---|
| Market timing | 9/10 |
| Pricing | 8/10 |
| Concept/framing | 8/10 |
| Moat risk | 4/10 |
| Execution difficulty | 7/10 |
| **Overall** | **7.5/10** |

---

## 4. Landing Page Review

### Diem manh

- Concept "Resume" thong minh — giam friction tam ly
- Reference quotes cu the, co so lieu
- Moi intern co personality rieng
- Tool stack realistic

### Van de can fix

| Priority | Issue |
|---|---|
| P0 | Model ghi "Claude Opus 4.6" nhung chay Sonnet |
| P0 | Thieu CTA + pricing section |
| P0 | Footer lo Autonomous furniture store (Standing Desks, Office Chairs...) |
| P1 | 9 interns qua nhieu — giam con 3-4 tren main page |
| P1 | Thieu FAQ: pricing, data security, cancellation |
| P2 | Them real testimonials khi co |
| P2 | Them hero section + social proof bar above the fold |

### Nhan xet tong the

- Content CV: **8/10**
- Landing page conversion structure: **5/10**
- Content hay nhung dang "gioi thieu" nhieu hon "ban"

---

## 5. Review 9 CV Chi Tiet

### Bang diem

| # | Intern | Role | Score | Van de chinh |
|---|---|---|---|---|
| 1 | Alex Chen | Sales | 8/10 | Bio generic nhung quotes cuu |
| 2 | Maya Rodriguez | Marketing | 5/10 | Thieu metrics, quotes yeu |
| 3 | Sam Nguyen | Ops | 7/10 | Thieu so, nhung co personality |
| 4 | Jordan Lee | HR | 5/10 | Bio tu sabotage |
| 5 | Rachel Park | Finance | 6/10 | Bio nhat, quotes tot |
| 6 | David Kim | Legal | 7/10 | Quote lap pattern voi Sam |
| 7 | Kai Tanaka | Data | 8/10 | Gan nhu perfect |
| 8 | Luna Martinez | Procurement | 6/10 | Niche qua hep |
| 9 | Priya Patel | PM | 6/10 | Skill ratings contradict |

### Bugs da tim thay va fix trong intern-cv.json

| Bug | Truoc | Sau |
|---|---|---|
| Rachel reference sai ten | "Jordan's thorough" | "Rachel caught a duplicate..." |
| Rachel pronoun lan | "her" -> "He's" | Consistent "she/her" |
| Alex typo | "Execellent" | "Excellent" |
| Alex typo | "Revenue Forecase" | "Revenue Forecasting" |
| Maya reference | "5 days weeks" | "five weeks" |
| Kai bio inconsistent | "I'm Kai, Data intern..." | Consistent format |
| Priya career goal | "I want to become Senior PM" | Removed (AI intern khong co career goal) |

### Nguyen tac rewrite Bio

1. **Output-focused**: "Lam duoc gi + bao nhieu" > "Dang hoc gi"
2. **Khong self-deprecating**: Bo "still figuring things out", "unglamorous parts"
3. **Moi bio can**: metric cu the + output ro rang + mentor name
4. **VD**: "Sales Intern who prepped 47+ call briefs in his first month and kept CRM data clean for 3 account executives"

### Skill Variance da tao

| Intern | Truoc | Sau |
|---|---|---|
| Alex (Sales) | 1E 4G 1L | 2E 3G 1L |
| Maya (Marketing) | 0E 3G 1L | 0E 4G 0L |
| Sam (Ops) | 0E 4G 3L | 1E 3G 3L |
| Jordan (HR) | 0E 3G 4L | 0E 5G 2L |
| Rachel (Finance) | 0E 3G 4L | 0E 5G 2L |
| David (Legal) | 0E 3G 3L | 1E 2G 3L |
| Kai (Data) | 0E 4G 2L | 1E 5G 0L |
| Priya (PM) | 0E 3G 4L | 1E 4G 2L |

### 7 Rules khi viet CV intern

1. Bio phai output-focused — so lieu cu the
2. Khong self-deprecating
3. Skill ratings can variance — co Excellent, co Learning
4. Reference quotes can so lieu va impact
5. Khong duplicate pattern giua cac CV
6. Moi bio can: metric + output + mentor name
7. Check pronouns + ten — da tung co bug Rachel ghi "Jordan"

---

## 6. Recommended 4 CV cho Main Page

1. **Alex Chen** (Sales) — quotes manh nhat, so lieu cu the
2. **Kai Tanaka** (Data) — reference xuất sắc, CAC bug story
3. **Sam Nguyen** (Ops) — authentic personality, organized 400+ tickets
4. **David Kim** (Legal) — caught indemnity clause, tin cay

5 con lai -> trang rieng "/all-interns"
