---
id: 6994ea79a4cface895ccb5ab
title: タスク 8
challengeType: 22
dashedName: task-8
lang: es
---

<!-- (Audio) Luna: Su usuario es carlos-velez. -->

# --description--

ユーザー名には特殊な記号が含まれる場合があります。

これからルナがカルロスのユーザー名を言うのを聞きます。このユーザー名には`-`という記号があり、スペイン語では`guión`と呼ばれています。

# --instructions--

音声を聞いて、下の文を完成させてください。

# --fillInTheBlank--

## --sentence--

`Su usuario es BLANK.`

## --blanks--

`carlos-velez`

### --feedback--

ルナはこれがカルロスのユーザー名だと言っています。名前の間のハイフン（`-`）を忘れずに含めてください。

# --explanation--

ルナはこう言っています：`Su usuario es carlos-velez.`

記号`-`はスペイン語で`guión`と呼ばれています。`o`の文字にアクセント記号を付けるのを忘れないでください。

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
