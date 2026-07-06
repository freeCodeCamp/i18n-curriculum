---
id: 67ed38f77f1fbd02acdcf5ff
title: المهمة 53
challengeType: 22
dashedName: task-53
lang: en-US
---

<!-- (Audio) Lisa: Sure, Mark. What's going on? -->

# --instructions--

استمع إلى الصوت وأكمل الجملة أدناه.

# --fillInTheBlank--

## --sentence--

`Sure, Mark. What's BLANK?`

## --blanks--

`going on`

### --feedback--

تُستخدم هذه العبارة المكونة من كلمتين للسؤال عن ما يحدث أو ما هي الحالة. تنتهي الكلمة الأولى بـ `-ing`.

# --explanation--

`What's going on?` طريقة شائعة للسؤال عن ما يحدث، ما هي الحالة، أو ما المشكلة أو الحدث الجاري. على سبيل المثال:

`What's going on at the meeting?` – يسأل شخص ما عن ما يحدث خلال الاجتماع.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Lisa",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_16-2.mp3",
      "startTime": 1,
      "startTimestamp": 7.62,
      "finishTimestamp": 9.1
    }
  },
  "commands": [
    {
      "character": "Lisa",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Lisa",
      "startTime": 1,
      "finishTime": 2.48,
      "dialogue": {
        "text": "Sure, Mark. What's going on?",
        "align": "center"
      }
    },
    {
      "character": "Lisa",
      "opacity": 0,
      "startTime": 2.98
    }
  ]
}
```
