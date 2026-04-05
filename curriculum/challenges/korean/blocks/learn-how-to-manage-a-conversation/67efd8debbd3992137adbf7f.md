---
id: 67efd8debbd3992137adbf7f
title: 작업 91
challengeType: 22
dashedName: task-91
lang: en-US
---

<!-- (Audio) Brian: How's everything going on your end? -->

# --instructions--

오디오를 듣고 아래 문장을 완성하세요.

# --fillInTheBlank--

## --sentence--

`How's everything going on your BLANK?`

## --blanks--

`end`

### --feedback--

`on your`가 앞에 올 때, 이는 특정한 사람의 상황, 편, 또는 위치를 가리킵니다.

# --explanation--

`On your end`는 누군가의 상황이나 그 사람에게 일어나고 있는 일을 가리킬 때 사용하며, 주로 대화나 업무 상황에서 쓰입니다. 예를 들어:

`Let me know if you need any help on your end.` – 이는 화자가 상대방의 업무나 상황에 도움이 필요한지 알고 싶다는 뜻입니다.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Brian",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_15-3.mp3",
      "startTime": 1,
      "startTimestamp": 5.56,
      "finishTimestamp": 7.28
    }
  },
  "commands": [
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "startTime": 1,
      "finishTime": 2.72,
      "dialogue": {
        "text": "How's everything going on your end?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 3.22
    }
  ]
}
```
