---
id: 67f04ef2be95eedffb5bde99
title: المهمة 103
challengeType: 22
dashedName: task-103
lang: en-US
---

<!-- (Audio) Brian: Is there anything else slowing you down? -->

# --instructions--

استمع إلى الصوت وأكمل الجملة أدناه.

# --fillInTheBlank--

## --sentence--

`Is there anything else BLANK you down?`

## --blanks--

`slowing`

### --feedback--

عند اتباعها بـ `down`، تعني جعل شيء يتحرك أو يحدث أبطأ من المعتاد. استخدم صيغة `-ing`.

# --explanation--

تعني عبارة `To slow down` تقليل السرعة أو جعل شيء يحدث بشكل أبطأ. في سياق العمل أو المشروع، يمكن أن تشير إلى أي شيء يؤخر التقدم. على سبيل المثال:

`Traffic is slowing down the delivery.` – هذا يعني أن التسليم يستغرق وقتًا أطول بسبب المرور.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Brian",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_15-3.mp3",
      "startTime": 1,
      "startTimestamp": 23.16,
      "finishTimestamp": 25.38
    }
  },
  "commands": [
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "startTime": 1,
      "finishTime": 3.22,
      "dialogue": {
        "text": "Is there anything else slowing you down?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 3.72
    }
  ]
}
```
