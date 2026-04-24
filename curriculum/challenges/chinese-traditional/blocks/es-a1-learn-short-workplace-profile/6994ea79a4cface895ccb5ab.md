---
id: 6994ea79a4cface895ccb5ab
title: 任務 8
challengeType: 22
dashedName: task-8
lang: es
---

<!-- (Audio) Luna: Su usuario es carlos-velez. -->

# --description--

使用者名稱可能包含特殊符號。

現在你會聽到 Luna 說出 Carlos 的使用者名稱。你會注意到它有這個符號 `-`，在西班牙語中稱為 `guión`。

# --instructions--

聆聽音訊並完成下面的句子。

# --fillInTheBlank--

## --sentence--

`Su usuario es BLANK.`

## --blanks--

`carlos-velez`

### --feedback--

Luna 提到這是 Carlos 的使用者名稱。記得在名字之間包含連字號（`-`）。

# --explanation--

Luna 說：`Su usuario es carlos-velez.`

符號 `-` 在西班牙語中稱為 `guión`。記得在字母 `o` 上加上重音符號。

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "Luna",
        "position": {
          "x": -25,
          "y": 28,
          "z": 1.7
        },
        "opacity": 1
      },
      {
        "character": "Carlos",
        "position": {
          "x": 125,
          "y": 10,
          "z": 1.2
        },
        "opacity": 1
      }
    ],
    "audio": {
      "filename": "ES_A1_carlos_workplace_profile.mp3",
      "startTime": 1,
      "startTimestamp": 31.02,
      "finishTimestamp": 34.93
    },
    "alwaysShowDialogue": false
  },
  "commands": [
    {
      "character": "Luna",
      "position": {
        "x": 30,
        "y": 28,
        "z": 1.7
      },
      "startTime": 0
    },
    {
      "character": "Carlos",
      "position": {
        "x": 72,
        "y": 10,
        "z": 1.2
      },
      "startTime": 0.5
    },
    {
      "character": "Luna",
      "startTime": 1,
      "finishTime": 4.91,
      "dialogue": {
        "text": "Su usuario es carlos-velez.",
        "align": "left"
      }
    },
    {
      "character": "Carlos",
      "position": {
        "x": 125,
        "y": 10,
        "z": 1.2
      },
      "startTime": 5.41
    },
    {
      "character": "Luna",
      "position": {
        "x": -25,
        "y": 28,
        "z": 1.7
      },
      "startTime": 5.91
    }
  ]
}
```
