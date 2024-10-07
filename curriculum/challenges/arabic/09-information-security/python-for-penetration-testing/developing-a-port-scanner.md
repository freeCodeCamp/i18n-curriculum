---
id: 5ea9997bbec2e9bc47e94db4
title: Developing a Port Scanner
challengeType: 11
videoId: z_qkqZS7KZ4
bilibiliIds:
  aid: 208077317
  bvid: BV1Uh411p7HS
  cid: 409036706
dashedName: developing-a-port-scanner
---

# --questions--

## --text--

What is the main difference between the `.connect()` and `.connect_ex()` methods?

## --answers--

وليس هناك فرق بين الطريقتين.

---

إذا كان هناك خطأ أو إذا لم يتم العثور على مضيف، `.connect()` يرجع رمز خطأ بينما `.connect_ex()` يثير استثناء.

---

إذا كان هناك خطأ أو إذا لم يتم العثور على مضيف، `.connect()` يثير استثناء بينما `.connect_ex()` يرسل رمز الخطأ.

## --video-solution--

الثالث

