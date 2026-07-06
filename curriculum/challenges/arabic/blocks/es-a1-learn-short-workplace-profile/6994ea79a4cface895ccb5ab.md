---
id: 6994ea79a4cface895ccb5ab
title: المهمة 8
challengeType: 22
dashedName: task-8
lang: es
---

<!-- (Audio) Luna: Su usuario es carlos-velez. -->

# --description--

قد تحتوي أسماء المستخدمين على رموز خاصة.

الآن ستسمع لونا تقول اسم مستخدم كارلوس. ستلاحظ أنه يحتوي على هذا الرمز `-`، والذي يُسمى `guión` بالإسبانية.

# --instructions--

استمع إلى الصوت وأكمل الجملة أدناه.

# --fillInTheBlank--

## --sentence--

`Su usuario es BLANK.`

## --blanks--

`carlos-velez`

### --feedback--

تذكر أن لونا تشير إلى أن هذا هو اسم مستخدم كارلوس. لا تنسَ تضمين الشرطة (`-`) بين الاسمين.

# --explanation--

تقول لونا: `Su usuario es carlos-velez.`

الرمز `-` معروف باسم `guión` بالإسبانية. تذكر تضمين علامة الشدة على حرف الـ `o`.

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "Luna",
        "position": {
          "x": -25,
          "y": 28,
          "z": 1.7
        },
        "opacity": 1
      },
      {
        "character": "Carlos",
        "position": {
          "x": 125,
          "y": 10,
          "z": 1.2
        },
        "opacity": 1
      }
    ],
    "audio": {
      "filename": "ES_A1_carlos_workplace_profile.mp3",
      "startTime": 1,
      "startTimestamp": 31.02,
      "finishTimestamp": 34.93
    },
    "alwaysShowDialogue": false
  },
  "commands": [
    {
      "character": "Luna",
      "position": {
        "x": 30,
        "y": 28,
        "z": 1.7
      },
      "startTime": 0
    },
    {
      "character": "Carlos",
      "position": {
        "x": 72,
        "y": 10,
        "z": 1.2
      },
      "startTime": 0.5
    },
    {
      "character": "Luna",
      "startTime": 1,
      "finishTime": 4.91,
      "dialogue": {
        "text": "Su usuario es carlos-velez.",
        "align": "left"
      }
    },
    {
      "character": "Carlos",
      "position": {
        "x": 125,
        "y": 10,
        "z": 1.2
      },
      "startTime": 5.41
    },
    {
      "character": "Luna",
      "position": {
        "x": -25,
        "y": 28,
        "z": 1.7
      },
      "startTime": 5.91
    }
  ]
}
```
