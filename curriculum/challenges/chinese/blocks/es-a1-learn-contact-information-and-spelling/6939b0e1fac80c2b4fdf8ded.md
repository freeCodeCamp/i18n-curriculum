---
id: 6939b0e1fac80c2b4fdf8ded
title: 任务 17
challengeType: 22
dashedName: task-17
lang: es
---

<!-- (Audio) Basti: Se escribe b-a-s-t-i. -->

# --description--

在这个任务中，Basti 一个字母一个字母地拼写他的昵称。

# --instructions--

请听音频，并完成下面的填空。

# --fillInTheBlank--

## --sentence--

`Se escribe BLANK a s BLANK BLANK.`

## --blanks--

`b`

### --feedback--

这是 Basti 用来开始拼写他昵称的第一个字母 B。

---

`t`

### --feedback--

这封信出现在 "Basti" 中的 "s" 之后。

---

`i`

### --feedback--

这是 "Basti" 中的最后一个字母。听结尾处的元音音。

# --explanation--

Basti 拼写他的昵称为 `b-a-s-t-i`。

# --scene--

```json
{
  "setup": {
    "background": "desk.png",
    "characters": [
      {
        "character": "Sebastián",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_basti_personal_details.mp3",
      "startTime": 1,
      "startTimestamp": 22.6,
      "finishTimestamp": 26.74
    }
  },
  "commands": [
    {
      "character": "Sebastián",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sebastián",
      "startTime": 1,
      "finishTime": 5.14,
      "dialogue": {
        "text": "Se escribe b-a-s-t-i.",
        "align": "center"
      }
    },
    {
      "character": "Sebastián",
      "opacity": 0,
      "startTime": 5.64
    }
  ]
}
```
