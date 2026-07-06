---
id: 661bddbdbbc09e2b8fac0801
title: المهمة 76
challengeType: 22
dashedName: task-76
lang: en-US
---

<!-- (Audio) Alice: Also, it's used for identity verification at airports and secure facilities. -->

# --description--

حرف الجر `at` يشير إلى نقطة على الخريطة. يخبرك بموقع أو موضع محدد. يساعدك على فهم مكان حدوث شيء ما أو مكان وجود شخص ما.

أمثلة:

`We'll meet at the coffee shop.` (في هذه الجملة، تُستخدم `at` لتحديد الموقع الذي سيُعقد فيه اللقاء - المقهى).

`I'll be waiting for you at the bus stop.` يُستخدم `at` هنا للدلالة على الموقع الذي سينتظر فيه شخص ما - موقف الحافلات.

استمع إلى الجملة واملأ الفراغ.

# --fillInTheBlank--

## --sentence--

`Also, it's used for identity verification BLANK airports and secure facilities.`

## --blanks--

`at`

### --feedback--

حرف الجر المستخدم لمساعدتك على فهم مكان وجود شيء ما أو حدوثه.

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Alice",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "4.2-4.mp3",
      "startTime": 1,
      "startTimestamp": 15.22,
      "finishTimestamp": 19.04
    }
  },
  "commands": [
    {
      "character": "Alice",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Alice",
      "startTime": 1,
      "finishTime": 4.82,
      "dialogue": {
        "text": "Also, it's used for identity verification at airports and secure facilities.",
        "align": "center"
      }
    },
    {
      "character": "Alice",
      "opacity": 0,
      "startTime": 5.32
    }
  ]
}
```
