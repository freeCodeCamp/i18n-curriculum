---
id: 656bbfaf6cbc3f1418acca3c
title: 작업 6
challengeType: 22
dashedName: task-6
lang: en-US
---

<!-- (Audio) Sarah: Sure, Bob. What's the problem? -->

# --description--

오디오를 듣고 문장을 완성하세요.

# --fillInTheBlank--

## --sentence--

`Sure, Bob. BLANK the problem?`

## --blanks--

`What's`

### --feedback--

`What`와 `is`는 축약형입니다. `What`는 대문자로 시작하는 것을 기억하세요.

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
