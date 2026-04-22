# Interview-to-Hire Flow — Hire Your Intern

Tài liệu thiết kế UX cho tính năng **Interview** trên landing page "Hire Your Intern".
Mục tiêu: user vào interview → ra quyết định hire trong 5 phút.

---

## 1. Nguyên lý cốt lõi

**Interview không phải Q&A, phải là live demo.**

User không hire vì intern "giới thiệu hay". User hire vì thấy intern **làm được việc của họ** ngay trong lúc chat. Mọi phase trong flow đều phải phục vụ mục tiêu này.

### 4 moves chiến lược

1. **Intern hỏi ngược về pain point cụ thể** — không phải "bạn cần gì?" mà là "tuần này task nào đang stuck?". Biến interview thành 1 buổi làm việc thật.

2. **Produce deliverable giữa chừng** — sau 2-3 lượt chat, intern ra sample thật (marketing draft email cho sản phẩm user, dev viết snippet, designer mock section). Không chờ đến cuối.

3. **Tease 80% — gate 20%** — show đủ để "wow", nhưng full version (export, iterate, scale) khóa sau nút Hire. Đánh vào sunk cost: user đã đầu tư 5 phút rồi, bỏ ngang tiếc.

4. **CTA Hire ở peak cảm xúc**, không phải cuối trang. Ngay sau khi intern ra deliverable ấn tượng → popup "Hire để intern này làm tiếp task này cho bạn mỗi ngày — $80/mo". Có anchor: "Human intern $2000/mo + 3 tuần onboarding vs. tao $80/mo ready now".

### Tradeoff

Interview càng personalize (hiểu context business của user) thì convert càng cao, nhưng cost token/latency càng lớn. Cần **cap 5-7 phút, ~10 lượt chat** — vừa đủ để user đầu tư cảm xúc, vừa không đốt budget vào người không có ý định mua.

---

## 2. Flow cụ thể — Mia, Marketing Intern

5 phase trong ~5 phút.

### Phase 1 — Hook (0-30s)

**Mia chủ động trước, không chờ user hỏi:**

> "Chào, tôi là Mia. Trước khi kể về mình, paste URL shop/brand của bạn để tôi xem 30s nhé."

→ User paste URL → Mia **fetch thật**, scan site → "OK bạn bán [X] cho [audience Y]. Thẳng nhé: tháng này bạn stuck ở **content / ads / SEO**?"

**Key:** Ép user chọn 1 trong 3, không để open-ended. Scan URL thật là bắt buộc — không có cái này thì interview thành generic → không convert.

### Phase 2 — Diagnose (30s-2m)

User chọn "content". Mia hỏi kênh (IG/TikTok/email), rồi **scan luôn 5 post IG gần nhất**:

> "Tôi thấy 3 vấn đề: (1) caption 200 chữ, mất hook ở câu 1; (2) 4/5 post không có CTA; (3) visual style lệch. Fix cái nào trước?"

### Phase 3 — Deliverable thật (2m-4m) — khoảnh khắc wow

User chọn caption. Mia rewrite **3 caption thật của user** theo framework Hook-Value-CTA, show trước/sau cạnh nhau.

```
Post 1 (original — 200 chữ):
"Hôm nay mình muốn chia sẻ với các bạn về bộ sưu tập mới..."

Post 1 (rewrite — 40 chữ, Hook-Value-CTA):
"Đôi giày này đi 10km không đau chân.
Thật. Mình test 2 tuần rồi.
Comment 'SIZE' để mình gửi bảng size."
```

User đọc xong nghĩ "ừ đúng là hay hơn".

### Phase 4 — Tease scale (4m-4.5m)

> "Đó mới 3 posts. Full tháng tôi làm: 30 caption + hashtag + CTA, content calendar theo theme tuần, visual brief cho designer, email sequence 5 bước sync với IG."

Show **preview calendar 30 ô**: 7 ô đầu unlock full caption, 23 ô sau blur + icon khóa.

Sunk cost + curiosity gap.

### Phase 5 — Hire CTA ở peak (4.5m-5m)

> "Full package $80/tháng. Freelancer VN làm việc này $2000+. Hire tôi bây giờ — 23 posts còn lại có trong inbox bạn trong 24h."

**[Hire Mia — $80/mo]** &nbsp;&nbsp; [Maybe later]

---

## 3. Metrics phải track

- **Drop-off theo phase** — rơi nhiều ở Phase 2 → pain options sai; rơi ở Phase 3 → deliverable chưa đủ wow.
- **Hire rate theo pain** — content vs ads vs SEO convert khác nhau. Double down cái cao nhất.
- **Time-to-hire** — interview 5 phút convert tốt hơn hay 10 phút? A/B test.
- **Interview completion rate** — % user đi hết 5 phase.
- **Return rate** — user quay lại lần 2 có convert cao hơn không?

---

## 4. Edge cases cần handle

| Tình huống | Cách xử lý |
|---|---|
| User không có URL/brand | Fallback: "ngành nào + target audience?" rồi dùng generic industry data |
| User hỏi giá trước khi demo | "Để tôi show 1 sample đã, giá tính sau" — giữ momentum |
| User quay lại lần 2 | "Lần trước bạn stuck ở content. Đã thử fix caption chưa? Tuần này có gì mới?" |
| URL scan fail (site block bot) | "Không load được site, mô tả giúp tôi: bán gì, cho ai?" |
| User trả lời lan man | Mia cắt: "OK để tôi tóm lại — pain chính là X đúng không? Tôi fix luôn." |

---

## 5. Anti-pattern tránh

- ❌ Mia kể CV, background, skills trước khi hỏi pain — user không care
- ❌ Hỏi quá nhiều câu mới produce output — mỗi câu hỏi = 1 cơ hội drop-off
- ❌ CTA Hire chỉ xuất hiện ở cuối — bỏ lỡ peak cảm xúc sau Phase 3
- ❌ Deliverable generic ("đây là template caption hay") — phải là caption THẬT của user
- ❌ Interview dài > 10 phút — user mệt, defer quyết định

---

## 6. Áp dụng cho 8 role còn lại

Cấu trúc 5 phase giữ nguyên, chỉ thay **pain options** + **deliverable** cho từng role:

| Role | Pain options (Phase 1) | Deliverable (Phase 3) |
|---|---|---|
| Developer | Bug / feature mới / refactor | Fix 1 bug thật từ repo user, show diff |
| Designer | Landing / logo / UI component | Mock 1 section landing page của user |
| Sales | Cold outreach / demo / close | Viết 3 cold email cho ICP user |
| CS | Ticket backlog / FAQ / churn | Reply 3 ticket mẫu từ inbox user |
| PM | Roadmap / spec / user research | Viết 1 PRD ngắn cho feature user đang nghĩ |
| HR | JD / interview / onboarding | Viết JD cho vị trí user đang tuyển |
| Finance | Budget / forecast / reporting | Dựng cashflow sheet 3 tháng từ data user |
| Ops | SOP / automation / tool stack | Map workflow hiện tại + đề xuất 1 automation |

**Nguyên tắc:** deliverable phải là artifact THẬT user có thể dùng ngay, không phải template/advice.

---

## 7. Next steps

1. Viết system prompt cho Mia theo flow này (phase 1-5 hardcode, content dynamic theo URL scan)
2. Build URL scanner + IG/social scraper (Phase 1-2 cần data thật)
3. Design preview calendar UI với lock state (Phase 4)
4. A/B test: CTA ở Phase 3 (sau deliverable) vs Phase 5 (sau tease) — xem cái nào convert cao
5. Áp dụng flow cho 1 role nữa (suggest: Developer) để validate template có generalize được không
