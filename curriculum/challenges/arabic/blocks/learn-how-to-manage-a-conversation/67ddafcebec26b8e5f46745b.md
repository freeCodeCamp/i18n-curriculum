---
id: 67ddafcebec26b8e5f46745b
title: المهمة 31
challengeType: 22
dashedName: task-31
lang: en-US
---

<!-- (Audio) James: Anything else we should discuss before our next meeting? -->

# --instructions--

استمع إلى الصوت وأكمل الجملة أدناه.

# --fillInTheBlank--

## --sentence--

`Anything BLANK we should discuss before our next meeting?`

## --blanks--

`else`

### --feedback--

هذا يعني بالإضافة إلى شيء ما أو خلاف ما تم ذكره بالفعل.

# --explanation--

تُستخدم كلمة `Else` في التعبير `anything else` للسؤال عما إذا كان هناك شيء إضافي إلى ما قيل أو فُعل بالفعل. على سبيل المثال:

`Would you like anything else with your order?` - هنا، تسأل إذا كان الشخص الآخر يريد شيئًا إضافيًا إلى ما طلبه بالفعل.

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
      "startTimestamp": 39.22,
      "finishTimestamp": 42.22
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
      "finishTime": 4,
      "dialogue": {
        "text": "Anything else we should discuss before our next meeting?",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 4.5
    }
  ]
}
```
