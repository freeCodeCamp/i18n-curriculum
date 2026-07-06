---
id: 67b9becbb4fd3b0d7fc2411e
title: المهمة 65
challengeType: 22
dashedName: task-65
lang: en-US
---

<!-- (Audio) David: It seems like it could lead to a lot of delays and miscommunication. -->

# --instructions--

استمع إلى الصوت وأكمل الجملة أدناه.

# --fillInTheBlank--

## --sentence--

`It seems like it could lead to a lot of BLANK and BLANK.`

## --blanks--

`delays`

### --feedback--

تشير هذه الكلمة إلى الأشياء التي تستغرق وقتًا أطول من المتوقع.

---

`miscommunication`

### --feedback--

تشير هذه الكلمة إلى سوء الفهم الناتج عن معلومات غير واضحة أو غير صحيحة.

# --explanation--

ديفيد قلق من أن العمل عن بُعد غير المتزامن قد يسبب `delays` (استجابات وتقدم أبطأ) و`miscommunication` (سوء فهم بين الأشخاص).

بما أن الموظفين يعملون في أوقات مختلفة، قد تستغرق الرسائل وقتًا أطول للرد عليها، وقد تحدث سوءات فهم إذا لم تكن الاتصالات واضحة.

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
      "startTimestamp": 24.82,
      "finishTimestamp": 28.84
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
      "finishTime": 5.02,
      "dialogue": {
        "text": "It seems like it could lead to a lot of delays and miscommunication.",
        "align": "center"
      }
    },
    {
      "character": "David",
      "opacity": 0,
      "startTime": 5.52
    }
  ]
}
```
