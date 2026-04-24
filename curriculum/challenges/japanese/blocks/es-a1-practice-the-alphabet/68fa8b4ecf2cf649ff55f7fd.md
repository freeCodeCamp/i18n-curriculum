---
id: 68fa8b4ecf2cf649ff55f7fd
title: タスク 2
challengeType: 19
dashedName: task-2
lang: es
---

# --instructions--

音声を聞いて、以下の質問に答えてください。

# --questions--

## --text--

この音声で発音される**2番目の**文字は何ですか？

## --answers--

`b`

### --feedback--

文字 `b` は異なる音です。

---

`x`

---

`z`

### --feedback--

文字 `z` は異なる音です。

---

`m`

### --feedback--

文字 `m` は異なる音です。

## --video-solution--

2

# --explanation--

音声で発音される3つの文字は次の通りです：`b`、`x`、`z`。

2番目の文字は `x` です。したがって、`x` が正しい答えです。

# --scene--

```json
{
  "setup": {
    "background": "living-room.png",
    "characters": [
      {
        "character": "Julieta",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_alphabet_practice.mp3",
      "startTime": 1,
      "startTimestamp": 8,
      "finishTimestamp": 12.96
    }
  },
  "commands": [
    {
      "character": "Julieta",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Julieta",
      "startTime": 1,
      "finishTime": 1.67,
      "dialogue": {
        "text": "b",
        "align": "center"
      }
    },
    {
      "character": "Julieta",
      "startTime": 3.26,
      "finishTime": 4.05,
      "dialogue": {
        "text": "x",
        "align": "center"
      }
    },
    {
      "character": "Julieta",
      "startTime": 5.21,
      "finishTime": 5.96,
      "dialogue": {
        "text": "z",
        "align": "center"
      }
    },
    {
      "character": "Julieta",
      "opacity": 0,
      "startTime": 6.46
    }
  ]
}
```
