---
id: 67aa23adedb02b11aaceda26
title: المهمة 8
challengeType: 19
dashedName: task-8
lang: en-US
---

<!-- (Audio) Anna: While furniture is important, many people mentioned that their computers need upgrades. -->

# --instructions--

استمع إلى الصوت وأجب عن السؤال أدناه.

# --questions--

## --text--

ما هو الأكثر أهمية، حسب قول آنا؟

## --answers--

ترقية أجهزة الكمبيوتر.

---

شراء أثاث مكتبي جديد.

### --feedback--

تعترف آنا بأهمية الأثاث لكنها تقول إن الكثير من الناس ذكروا حاجتهم إلى شيء آخر.

---

الحصول على بدل عمل عن بُعد أكبر.

### --feedback--

آنا لا تتحدث عن زيادة البدل، بل فقط عن كيفية رغبة الناس في استخدامه.

---

تغيير أسئلة الاستبيان.

### --feedback--

آنا لا تذكر أي شيء عن أسئلة الاستبيان.

## --video-solution--

1

# --explanation--

تعني عملية `computer upgrade` تحسين الكمبيوتر عن طريق إضافة أو استبدال أجزاء مثل المزيد من الذاكرة (RAM)، أو معالج أسرع، أو شاشة أفضل. على سبيل المثال:

- `I need a computer upgrade to run the latest software.` - الكمبيوتر الحالي للمتحدث غير قوي بما يكفي، لذا يحتاج إلى جهاز أفضل.

- `After the computer upgrade, everything runs much faster.` - تحسنت أداء النظام بعد تحديث أو استبدال المكونات.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Anna",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_11-1.mp3",
      "startTime": 1,
      "startTimestamp": 12.06,
      "finishTimestamp": 15.8
    }
  },
  "commands": [
    {
      "character": "Anna",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Anna",
      "startTime": 1,
      "finishTime": 4.74,
      "dialogue": {
        "text": "While furniture is important, many people mentioned that their computers need upgrades.",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 5.24
    }
  ]
}
```
