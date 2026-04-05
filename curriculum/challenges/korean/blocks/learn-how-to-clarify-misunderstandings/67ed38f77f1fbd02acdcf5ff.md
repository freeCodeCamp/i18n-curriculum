---
id: 67ed38f77f1fbd02acdcf5ff
title: 작업 53
challengeType: 22
dashedName: task-53
lang: en-US
---

<!-- (Audio) Lisa: Sure, Mark. What's going on? -->

# --instructions--

오디오를 듣고 아래 문장을 완성하세요.

# --fillInTheBlank--

## --sentence--

`Sure, Mark. What's BLANK?`

## --blanks--

`going on`

### --feedback--

이 두 단어 구문은 무슨 일이 일어나고 있는지, 상황이 어떤지 묻는 데 사용됩니다. 첫 번째 단어는 `-ing`로 끝납니다.

# --explanation--

`What's going on?`는 누군가에게 무슨 일이 일어나고 있는지, 상황이 어떤지, 어떤 문제나 이벤트가 발생하고 있는지 묻는 일반적인 표현입니다. 예를 들어:

`What's going on at the meeting?` – 누군가 회의 중에 무슨 일이 일어나고 있는지 묻고 있습니다.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Lisa",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_16-2.mp3",
      "startTime": 1,
      "startTimestamp": 7.62,
      "finishTimestamp": 9.1
    }
  },
  "commands": [
    {
      "character": "Lisa",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Lisa",
      "startTime": 1,
      "finishTime": 2.48,
      "dialogue": {
        "text": "Sure, Mark. What's going on?",
        "align": "center"
      }
    },
    {
      "character": "Lisa",
      "opacity": 0,
      "startTime": 2.98
    }
  ]
}
```
