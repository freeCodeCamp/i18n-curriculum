---
id: 679cebb26c5d61aaed58b4db
title: المهمة 79
challengeType: 19
dashedName: task-79
lang: en-US
---

<!-- (Audio) Maria: Did you hear anything about this? James: No, I didn't. What did he say? -->

# --instructions--

استمع إلى الصوت وأجب عن السؤال أدناه.

# --questions--

## --text--

ماذا يعرف جيمس عن المشكلة في التحديث الأخير؟

## --answers--

يعرف بالضبط ما هي المشكلة.

### --feedback--

يقول جيمس بوضوح إنه لم يسمع أي شيء.

---

لا يعرف أي شيء عنها.

---

لقد تحدث بالفعل مع العميل.

### --feedback--

جيمس لا يذكر أنه تحدث مع العميل.

---

تلقى بريدًا إلكترونيًا عن المشكلة.

### --feedback--

يقول جيمس إنه لم يسمع أي شيء.

## --video-solution--

2

# --explanation--

تكرر الإجابات القصيرة التي تحتوي على أفعال مساعدة الفعل المساعد من السؤال لتأكيد أو نفي شيء ما. في هذه الحالة، تسأل ماريا، `Did you hear anything?`، ويرد جيمس، `No, I didn't.` بدلاً من قول `No.` فقط. إليك بعض الأمثلة الأخرى:

- `Are you coming to the meeting?` → `Yes, I am.`  

- `Have they finished the report?` → `No, they haven't.`  

- `Will she be here on time?` → `Yes, she will.`  

تجعل الإجابات القصيرة الردود تبدو طبيعية وكاملة مع تجنب تكرار الجملة كاملة.

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
      },
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
      "filename": "B1_8-3.mp3",
      "startTime": 1,
      "startTimestamp": 5.62,
      "finishTimestamp": 9.24
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
      "finishTime": 2.32,
      "dialogue": {
        "text": "Did you hear anything about this?",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 2.49
    },
    {
      "character": "James",
      "opacity": 1,
      "startTime": 2.49
    },
    {
      "character": "James",
      "startTime": 2.66,
      "finishTime": 4.62,
      "dialogue": {
        "text": "No, I didn't. What did he say?",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 5.12
    }
  ]
}
```
