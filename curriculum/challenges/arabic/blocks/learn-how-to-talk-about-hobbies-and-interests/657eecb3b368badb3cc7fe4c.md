---
id: 657eecb3b368badb3cc7fe4c
title: المهمة 61
challengeType: 22
dashedName: task-61
lang: en-US
---

<!-- (Audio) Sarah: I go to at least one convention every year. It's the best moment of the year for me. -->

# --description--

تُستخدم عبارة `At least` عندما تريد القول إن أصغر كمية أو عدد من شيء ما مقبول أو كافٍ. هي مثل قول "لا يقل عن هذا المقدار". على سبيل المثال:

`I study English for at least 30 minutes every day.` - هذا يعني أنك تقضي 30 دقيقة أو أكثر في دراسة اللغة الإنجليزية يوميًا، ولكن لا تقل أبدًا عن 30 دقيقة.

# --fillInTheBlank--

## --sentence--

`I go to BLANK one convention every year. It's the best moment of the year for me.`

## --blanks--

`at least`

### --feedback--

هاتان الكلمتان تشكلان تعبيرًا يشير إلى الحد الأدنى.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.2-3.mp3",
      "startTime": 1,
      "startTimestamp": 30.46,
      "finishTimestamp": 34.22
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
      "finishTime": 4.76,
      "dialogue": {
        "text": "I go to at least one convention every year. It's the best moment of the year for me.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 5.26
    }
  ]
}
```
