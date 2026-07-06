---
id: 65d5d1bdbd0a7f4e3edb6c8e
title: المهمة 35
challengeType: 19
dashedName: task-35
lang: en-US
---

<!-- (Audio) Tom: Hey, have you ever worked with Anna from HR? -->

# --description--

استمع إلى الصوت وأجب عن السؤال.

# --questions--

## --text--

عن ماذا يسأل توم؟

## --answers--

إذا كانت آنا تعمل في قسم الموارد البشرية

### --feedback--

سؤال توم يركز تحديدًا على ما إذا كان الشخص قد عمل مع آنا، وليس على دور آنا.

---

إذا كانت أليس لديها أي خبرة في العمل مع آنا.

---

إذا كنت تحب العمل في قسم الموارد البشرية

### --feedback--

السؤال يتعلق بالخبرة السابقة مع آنا، وليس بالمشاعر الشخصية تجاه العمل في قسم الموارد البشرية.

---

إذا كانت آنا قد عملت من قبل

### --feedback--

تركيز سؤال توم على تجربة المستمع مع آنا، وليس على تاريخ عمل آنا.

## --video-solution--

2

# --scene--

```json
{
  "setup": {
    "background": "company1-reception.png",
    "characters": [
      {
        "character": "Tom",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.3-2.mp3",
      "startTime": 1,
      "startTimestamp": 0.00,
      "finishTimestamp": 2.88
    }
  },
  "commands": [
    {
      "character": "Tom",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Tom",
      "startTime": 1,
      "finishTime": 3.88,
      "dialogue": {
        "text": "Hey, have you ever worked with Anna from HR?",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 4.38
    }
  ]
}
```
