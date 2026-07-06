---
id: 67baf3ed288e8b06f4ab0dfb
title: المهمة 76
challengeType: 22
dashedName: task-76
lang: en-US
---

<!-- (Audio) David: It builds team spirit and makes problem-solving easier. -->

# --instructions--

استمع إلى الصوت وأكمل الجملة أدناه.

# --fillInTheBlank--

## --sentence--

`It builds BLANK and makes BLANK easier.`

## --blanks--

`team spirit`

### --feedback--  

هاتان الكلمتان معًا تشير إلى شعور الوحدة والتعاون بين الزملاء في العمل. الكلمة الأولى تشير إلى مجموعة تعمل معًا، والكلمة الثانية تتعلق بالحماس أو الدافع المشترك.

---

`problem-solving`

### --feedback--  

تشير هذه الكلمة المركبة إلى عملية إيجاد حلول للتحديات. الجزء الأول يشير إلى مشكلة تحتاج إلى إصلاح، والجزء الثاني هو فعل يعني إيجاد حل. تذكر استخدام `-` بين الجزأين.

# --explanation--

يعتقد ديفيد أن العمل في المكتب يساعد على تقوية `team spirit` (شعور بالاتصال والوحدة بين الزملاء) ويحسن `problem-solving` (إيجاد حلول للتحديات بشكل أكثر كفاءة).

يؤكد أن التواجد في نفس المكان الفعلي يجعل من الأسهل على الموظفين التعاون ودعم بعضهم البعض.

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "David",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_11-2.mp3",
      "startTime": 1,
      "startTimestamp": 42.52,
      "finishTimestamp": 45.7
    }
  },
  "commands": [
    {
      "character": "David",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "David",
      "startTime": 1,
      "finishTime": 4.18,
      "dialogue": {
        "text": "It builds team spirit and makes problem solving easier.",
        "align": "center"
      }
    },
    {
      "character": "David",
      "opacity": 0,
      "startTime": 4.68
    }
  ]
}
```
