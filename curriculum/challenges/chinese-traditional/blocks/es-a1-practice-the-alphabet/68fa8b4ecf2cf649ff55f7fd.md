---
id: 68fa8b4ecf2cf649ff55f7fd
title: 任務 2
challengeType: 19
dashedName: task-2
lang: es
---

# --instructions--

聆聽音訊並回答以下問題。

# --questions--

## --text--

這段音訊中**第二個**字母的發音是什麼？

## --answers--

`b`

### --feedback--

字母 `b` 有不同的發音。

---

`x`

---

`z`

### --feedback--

字母 `z` 有不同的發音。

---

`m`

### --feedback--

字母 `m` 有不同的發音。

## --video-solution--

2

# --explanation--

這些是在 `audio` 中發音的三個字母：`b`、`x`、`z`。

字母 `x` 是第二個。因此，`x` 是正確答案。

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
