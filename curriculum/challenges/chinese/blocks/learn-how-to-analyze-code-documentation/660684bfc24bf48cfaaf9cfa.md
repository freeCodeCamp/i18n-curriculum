---
id: 660684bfc24bf48cfaaf9cfa
title: 任务 8
challengeType: 22
dashedName: task-8
lang: en-US
---

<!-- (Audio) Sophie: Thanks, I'll give it a shot. -->

# --description--

`Give it a shot` 意思是尝试做某事。它就像说 `Try it`。

例如，如果你的朋友因为觉得可能太难而犹豫是否加入编程类，你可以说 `Why not give it a shot? You might enjoy it more than you think.` 来鼓励他们尝试加入这个类。

# --fillInTheBlank--

## --sentence--

`Thanks, BLANK give it a BLANK.`

## --blanks--

`I'll`

### --feedback--

它是 `I will` 的缩写。Sophie 正在表达她决定尝试 Brian 建议的内容。

---

`shot`

### --feedback--

在这个上下文中，它意味着尝试或试图做某事。Sophie 说她会尝试 Brian 推荐的内容。

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "7.3-1.mp3",
      "startTime": 1,
      "startTimestamp": 24.86,
      "finishTimestamp": 26.28
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 2.42,
      "dialogue": {
        "text": "Thanks, I'll give it a shot.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 2.92
    }
  ]
}
```
