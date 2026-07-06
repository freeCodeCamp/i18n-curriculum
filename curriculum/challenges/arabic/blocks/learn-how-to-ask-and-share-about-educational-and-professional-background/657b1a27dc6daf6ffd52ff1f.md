---
id: 657b1a27dc6daf6ffd52ff1f
title: المهمة 30
challengeType: 19
dashedName: task-30
lang: en-US
---

<!-- (Audio) Anna: Excellent. Can you share details about your educational background? Were you trained in a specific field?
Second Candidate: Yes. I have a master's degree in computer science. -->

# --description--

في اللغة الإنجليزية، تُستخدم صيغة الاسم المضاف إليه `'s` متبوعة باسم ثانٍ للدلالة على الملكية أو الانتماء.

إذا كان الاسم الأول مفردًا، كما في `Sarah's laptop`، فهذا يشير إلى أن الحاسوب المحمول يخص سارة. أما إذا كان الاسم الأول جمعًا، فتتغير الصيغة إلى الاسم مضاف إليه `'`، كما في `teachers' office`، مما يدل على مكتب للمعلمين.

# --questions--

## --text--

ماذا يعني `master's degree` في سياق الحوار؟

## --answers--

درجة للمعلمين في المدارس

### --feedback--

`Master's degree` تشير إلى درجة أكاديمية متقدمة، وليست مخصصة للمعلمين فقط.

---

درجة تعليمية على المستوى الابتدائي

### --feedback--

`Master's degree` هي مؤهل تعليمي عالي، يتجاوز المستوى الابتدائي.

---

درجة في إتقان المهارات

### --feedback--

رغم أنها توحي بالخبرة، فإن `master's degree` تشير تحديدًا إلى مؤهل أكاديمي.

---

درجة أكاديمية متقدمة

## --video-solution--

4

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "Anna",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      },
      {
        "character": "Second Candidate",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.1-2.mp3",
      "startTime": 1,
      "startTimestamp": 43.44,
      "finishTimestamp": 51.78
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
      "finishTime": 5.72,
      "dialogue": {
        "text": "Excellent. Can you share details about your educational background? Were you trained in a specific field?",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 6
    },
    {
      "character": "Second Candidate",
      "opacity": 1,
      "startTime": 6
    },
    {
      "character": "Second Candidate",
      "startTime": 6.36,
      "finishTime": 9.34,
      "dialogue": {
        "text": "Yes. I have a master's degree in computer science.",
        "align": "center"
      }
    },
    {
      "character": "Second Candidate",
      "opacity": 0,
      "startTime": 9.84
    }
  ]
}
```
