---
id: 656bbfaf6cbc3f1418acca3c
title: タスク 6
challengeType: 22
dashedName: task-6
lang: en-US
---

<!-- (Audio) Sarah: Sure, Bob. What's the problem? -->

# --description--

音声を聞いて、文を完成させてください。

# --fillInTheBlank--

## --sentence--

`Sure, Bob. BLANK the problem?`

## --blanks--

`What's`

### --feedback--

`What` と `is` は省略形です。`What` は大文字にしてください。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "6.1-1.mp3",
      "startTime": 1,
      "startTimestamp": 7.3,
      "finishTimestamp": 8.84
    }
  },
  "commands": [
    {
      "character": "Sarah",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sarah",
      "startTime": 1,
      "finishTime": 2.54,
      "dialogue": {
        "text": "Sure, Bob. What's the problem?",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 3.04
    }
  ]
}
```
