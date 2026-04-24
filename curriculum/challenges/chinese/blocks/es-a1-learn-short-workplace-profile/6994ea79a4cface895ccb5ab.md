---
id: 6994ea79a4cface895ccb5ab
title: 任务 8
challengeType: 22
dashedName: task-8
lang: es
---

<!-- (Audio) Luna: Su usuario es carlos-velez. -->

# --description--

用户名可能包含特殊符号。

现在你将听到 Luna 说 Carlos 的用户名。你会注意到它包含这个符号 `-`，在西班牙语中称为 `guión`。

# --instructions--

听音频并完成下面的句子。

# --fillInTheBlank--

## --sentence--

`Su usuario es BLANK.`

## --blanks--

`carlos-velez`

### --feedback--

Luna 提到这是 Carlos 的用户名。记得在名字之间包含连字符（`-`）。

# --explanation--

Luna 说：`Su usuario es carlos-velez.`

符号 `-` 在西班牙语中称为 `guión`。记得在字母 `o` 上加重音符号。

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
