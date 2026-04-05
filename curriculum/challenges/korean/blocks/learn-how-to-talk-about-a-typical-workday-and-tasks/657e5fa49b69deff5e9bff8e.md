---
id: 657e5fa49b69deff5e9bff8e
title: 작업 105
challengeType: 22
dashedName: task-105
lang: en-US
---

<!-- (audio) James: Absolutely. If you see any security breaches or incidents, you have to report them immediately. -->

# --description--

오디오를 듣고 아래 문장을 완성하세요.

# --fillInTheBlank--

## --sentence--

`Absolutely. If you see any security breaches or incidents, you BLANK report them BLANK.`

## --blanks--

`have to`

### --feedback--

이 두 단어는 어떤 일을 해야 한다는 의무를 나타냅니다.

---

`immediately`

### --feedback--

이 단어는 즉시, 지체 없이라는 뜻입니다.

# --scene--

```json
{
  "setup": {
    "background": "interview-room2.png",
    "characters": [
      {
        "character": "James",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "2.1-4.mp3",
      "startTime": 1,
      "startTimestamp": 43.56,
      "finishTimestamp": 49.64
    }
  },
  "commands": [
    {
      "character": "James",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "James",
      "startTime": 1,
      "finishTime": 7.08,
      "dialogue": {
        "text": "Absolutely. If you see any security breaches or incidents, you have to report them immediately.",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 7.58
    }
  ]
}
```
