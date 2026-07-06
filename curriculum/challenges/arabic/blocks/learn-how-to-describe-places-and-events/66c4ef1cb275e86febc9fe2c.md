---
id: 66c4ef1cb275e86febc9fe2c
title: المهمة 113
challengeType: 22
dashedName: task-113
lang: en-US
---

<!-- Audio Reference:
Sarah: It should, but it's not displaying because the live server extension might not be running. -->

<!-- Audio Reference:
Sarah: It should, but it's not displaying because the live server extension might not be running. -->

# --instructions--

استمع إلى الصوت وأكمل الجملة أدناه.

# --fillInTheBlank--

## --sentence--

`It should, but it's not BLANK because the live server extension might not be BLANK.`

## --blanks--

`displaying`

### --feedback--

فعل عرض أو تقديم شيء ما. تنتهي هذه الكلمة بـ `-ing`.

---

`running`

### --feedback--

تشير إلى أن الإضافة نشطة وتعمل. تنتهي هذه الكلمة بـ `-ing`.

# --explanation--

الاسم المشتق (gerund) هو صيغة فعل تنتهي بـ `-ing` وتعمل كاسم. في هذه الجملة، `displaying` و `running` هما اسمان مشتقان يصفان أفعالًا مستمرة. على سبيل المثال:

- `Updating the software is essential.` - هنا، `Updating` هو اسم مشتق يصف فعلًا.

في جملة سارة، يصف `displaying` و `running` أفعالًا مرتبطة بإضافة الخادم الحي وكيفية عملها.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_1-3.mp3",
      "startTime": 1,
      "startTimestamp": 12.62,
      "finishTimestamp": 16.66
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
      "finishTime": 2.62,
      "dialogue": {
        "text": "It should, but it's not displaying",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "startTime": 2.62,
      "finishTime": 5.04,
      "dialogue": {
        "text": "because the live server extension might not be running.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 5.54
    }
  ]
}
```
