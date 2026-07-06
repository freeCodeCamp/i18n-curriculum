---
id: 680cad23e2d58a1ef7c2edfb
title: المهمة 19
challengeType: 22
dashedName: task-19
lang: en-US
---

<!-- (Audio) Sarah: Those are the ones. But, we found something even better in your catalog, these high-capacity ones here. -->

# --instructions--

استمع إلى الصوت وأكمل الجملة أدناه.

# --fillInTheBlank--

## --sentence--

`Those are the ones. But, we found something even better in your catalog, BLANK BLANK ones here.`

## --blanks--

`these`

### --feedback--

تُستخدم هذه الكلمة للإشارة إلى عناصر محددة قريبة من المتحدث.

---

`high-capacity`

### --feedback--

تعني هذه الكلمة المركبة شيئًا يمكنه التعامل مع كمية كبيرة من العمل أو التخزين أو الطاقة. تذكر استخدام `-`.

# --explanation--

يصف `High-capacity` شيئًا مصممًا لإدارة أو احتواء كمية كبيرة مقارنة بالإصدارات القياسية. على سبيل المثال:

`We installed high-capacity batteries in the new devices.` – هذا يعني أن البطاريات يمكنها تخزين طاقة أكبر وتدوم لفترة أطول، وهو أمر مفيد في الأجهزة التقنية.

# --scene--

```json
{
  "setup": {
    "background": "company3-reception.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_19-1.mp3",
      "startTime": 1,
      "startTimestamp": 27.3,
      "finishTimestamp": 32.68
    }
  },
  "commands": [
    {
      "character": "Sarah",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sarah",
      "startTime": 1,
      "finishTime": 6.38,
      "dialogue": {
        "text": "Those are the ones, but we found something even better in your catalog, these high capacity ones here.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 6.88
    }
  ]
}
```
