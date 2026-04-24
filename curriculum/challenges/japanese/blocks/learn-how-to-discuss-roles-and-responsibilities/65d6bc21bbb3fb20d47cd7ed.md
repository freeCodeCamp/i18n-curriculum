---
id: 65d6bc21bbb3fb20d47cd7ed
title: タスク 43
challengeType: 22
dashedName: task-43
lang: en-US
---

<!-- (Audio) Tom: I don't really know her, to be honest. What's her role?
-->

# --description--

`What's her role?` に尋ねることは、誰かの仕事やグループやプロジェクトでの役割を知る方法です。`Role` は、特定の状況で誰かが果たす役割や仕事を意味します。たとえば、誰かの `role` が学校で教師であれば、それはその人の仕事が生徒に教えることであることを意味します。

# --fillInTheBlank--

## --sentence--

`I don't really know her, to be honest. What's BLANK BLANK?`

## --blanks--

`her`

### --feedback--

この単語は、トムが女性の仕事や何かにおける役割について話していることを示しています。

---

`role`

### --feedback--

この単語は、誰かがある状況で持つ仕事や地位を意味します。

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
      "startTimestamp": 15.98,
      "finishTimestamp": 18.96
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
      "finishTime": 3.98,
      "dialogue": {
        "text": "I don't really know much about her to be honest. What's her role?",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 4.48
    }
  ]
}
```
