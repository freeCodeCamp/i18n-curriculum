---
id: 67dd5baa84d2fcc56c09dce3
title: المهمة 15
challengeType: 22
dashedName: task-15
lang: en-US
---

<!-- (Audio) James: By the way, did we decide on the deadline for the first phase? -->

# --instructions--

استمع إلى الصوت وأكمل الجملة أدناه.

# --fillInTheBlank--

## --sentence--

`By the way, did we BLANK on the deadline for the first BLANK?`

## --blanks--

`decide`

### --feedback--

هذا يعني اتخاذ خيار أو التوصل إلى قرار بشأن شيء ما.

---

`phase`

### --feedback--

هذا يشير إلى مرحلة أو جزء محدد من عملية أو مشروع.

# --explanation--

`To decide` يعني اختيار شيء بعد التفكير فيه. على سبيل المثال:

`We need to decide which tools to use for the project.` – هذا يعني اختيار الأدوات بعد النظر في الخيارات.

يشير `phase` إلى جزء أو خطوة واحدة في عملية أكبر. على سبيل المثال:

`We just finished the testing phase of the software.` – هذا يعني أن خطوة الاختبار في عملية التطوير قد اكتملت.

# --scene--

```json
{
  "setup": {
    "background": "interview-room2.png",
    "characters": [
      {
        "character": "James",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_15-1.mp3",
      "startTime": 1,
      "startTimestamp": 17.36,
      "finishTimestamp": 20.64
    }
  },
  "commands": [
    {
      "character": "James",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "James",
      "startTime": 1,
      "finishTime": 4.28,
      "dialogue": {
        "text": "By the way, did we decide on the deadline for the first phase?",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 4.78
    }
  ]
}
```
