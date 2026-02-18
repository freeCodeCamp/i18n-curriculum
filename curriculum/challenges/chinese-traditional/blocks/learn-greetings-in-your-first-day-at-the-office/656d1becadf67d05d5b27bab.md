---
id: 656d1becadf67d05d5b27bab
title: 任務 149
challengeType: 19
dashedName: task-149
lang: en-US
---

<!--
AUDIO REFERENCE:
Sophie: Oh, come on, Brian.
Brian: But it's true. She's the person to go to if you need help.
-->

# --description--

就像你學習 `he` 這個代名詞時一樣，像 `she` 這樣的代名詞用來指涉女性個體。它們有助於避免對話中的重複。請看這段對話的這部分：

- Sophie：`Oh, come on, Brian.`

- Brian：`But it's true. She's the person to go to if you need help.`

這裡，`she` 被 Brian 用來取用 Sophie。Brian 使用代名詞 `she`，而不是重複 Sophie 的名字，以使對話更流暢並避免重複。

# --questions--

## --text--

在對話窗中，Brian 使用哪個字來指涉 Sophie 而不重複她的名字？

## --answers--

`he`

### --feedback--

`He` 指的是男性。

---

`they`

### --feedback--

`They` 是複數，指多於一個人。

---

`it`

### --feedback--

`It` 通常用於事物或動物。

---

`she`

## --video-solution--

4

# --scene--

```json
{
  "setup": {
    "background": "cafe.png",
    "characters": [
      {
        "character": "Sophie",
        "position": { "x": 25, "y": 0, "z": 1.3 },
        "opacity": 0
      },
      {
        "character": "Brian",
        "position": { "x": 75, "y": 15, "z": 1.2 },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "1.1-4.mp3",
      "startTime": 1,
      "startTimestamp": 22.6,
      "finishTimestamp": 28.16
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 2.4,
      "dialogue": {
        "text": "Oh, come on, Brian.",
        "align": "left"
      }
    },
    {
      "character": "Brian",
      "startTime": 3.3,
      "finishTime": 6.35,
      "dialogue": {
        "text": "But it's true. She's the person to go to if you need help.",
        "align": "right"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 6.85
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 6.85
    }
  ]
}
```
