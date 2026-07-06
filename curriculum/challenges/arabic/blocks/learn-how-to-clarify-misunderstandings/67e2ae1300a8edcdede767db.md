---
id: 67e2ae1300a8edcdede767db
title: المهمة 4
challengeType: 22
dashedName: task-4
lang: en-US
---

<!-- (Audio) Mark: Can I ask you about a few of them? -->

# --instructions--

استمع إلى الصوت وأكمل الجملة أدناه.

# --fillInTheBlank--

## --sentence--

`Can I BLANK you BLANK a few of them?`

## --blanks--

`ask`

### --feedback--

يُستخدم هذا الفعل عندما يريد شخص ما الحصول على معلومات أو إذن.

---

`about`

### --feedback--

تربط هذه الحرف الجر موضوعًا أو مجالًا ذا صلة.

# --explanation--

`Ask about` يعني طلب معلومات تتعلق بموضوع محدد. على سبيل المثال:

`I asked about the new feature.` – كنت تريد معلومات عن الميزة.

`Can I ask you about...` طريقة مهذبة لبدء سؤال عندما تريد معلومات أو مساعدة. تُظهر أنك تطلب إذنًا للحديث عن موضوع محدد. على سبيل المثال:

`Can I ask you about the project deadline?` – هذا يعني أنك تريد التحدث عن الموعد النهائي للمشروع والحصول على مزيد من التفاصيل.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Mark",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_16-1.mp3",
      "startTime": 1,
      "startTimestamp": 5.58,
      "finishTimestamp": 7.08
    }
  },
  "commands": [
    {
      "character": "Mark",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Mark",
      "startTime": 1,
      "finishTime": 2.5,
      "dialogue": {
        "text": "Can I ask you about a few of them?",
        "align": "center"
      }
    },
    {
      "character": "Mark",
      "opacity": 0,
      "startTime": 3
    }
  ]
}
```
