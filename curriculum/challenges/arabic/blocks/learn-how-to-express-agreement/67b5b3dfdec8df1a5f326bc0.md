---
id: 67b5b3dfdec8df1a5f326bc0
title: المهمة 110
challengeType: 22
dashedName: task-110
lang: en-US
---

<!-- (audio) Maria: We've chosen a subtle color palette, but maybe adding some brighter tones would help. -->

# --instructions--

استمع إلى الصوت وأكمل الجملة أدناه.

# --fillInTheBlank--

## --sentence--

`We've chosen a BLANK color BLANK, but maybe adding some brighter tones would help.`

## --blanks--

`subtle`

### --feedback--

هذا يعني شيئًا غير قوي أو واضح. إنه شيء لطيف أو ناعم قد لا تلاحظه على الفور.

---

`palette`

### --feedback--

هذا يشير إلى مجموعة الألوان المستخدمة في تصميم أو عمل فني. في هذه الحالة، تشير `color palette` إلى اختيار الألوان المختارة لتصميم التطبيق أو المشروع.

# --explanation--

`Subtle` تشير إلى شيء دقيق أو غير واضح. على سبيل المثال:

`The artist used subtle shades of blue in the painting.` - هذا يعني أن الفنان استخدم درجات فاتحة أو ناعمة من اللون الأزرق ليست قوية أو ملفتة للنظر.

`Palette` تشير إلى مجموعة الألوان أو المواد التي يستخدمها الفنان أو المصمم. على سبيل المثال:

`The designer chose a warm palette for the website, using reds, oranges, and yellows.` - هذا يعني أن المصمم اختار مجموعة ألوان دافئة، مثل الأحمر والبرتقالي والأصفر، لتصميم الموقع.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Maria",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_10-3.mp3",
      "startTime": 1,
      "startTimestamp": 36.2,
      "finishTimestamp": 39.94
    }
  },
  "commands": [
    {
      "character": "Maria",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Maria",
      "startTime": 1,
      "finishTime": 4.74,
      "dialogue": {
        "text": "We've chosen a subtle color palette, but maybe adding some brighter tones would help.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 5.24
    }
  ]
}
```
