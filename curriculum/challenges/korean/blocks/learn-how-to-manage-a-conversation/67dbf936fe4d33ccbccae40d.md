---
id: 67dbf936fe4d33ccbccae40d
title: 작업 1
challengeType: 22
dashedName: task-1
lang: en-US
---

<!-- (Audio) Alice: Hey, James. Sorry for the interruption earlier. -->

# --instructions--

오디오를 듣고 아래 문장을 완성하세요.

# --fillInTheBlank--

## --sentence--

`Hey, James. BLANK for the interruption earlier.`

## --blanks--

`Sorry`

### --feedback--

이 표현은 무언가에 대해 사과할 때 사용합니다. 대문자 표기를 잊지 마세요.

# --explanation--

`To be sorry for something`는 불편이나 피해를 끼쳤을 때 사과할 때 사용합니다. 예를 들어:

`I'm sorry for being late to the meeting.` - 화자가 늦게 도착한 것을 후회하며 사과하는 뜻입니다. `being`가 `-ing` 형태인 점에 주목하세요. 이는 `for` (전치사) 바로 뒤에 있기 때문입니다.

# --scene--

```json
{
  "setup": {
    "background": "interview-room2.png",
    "characters": [
      {
        "character": "Alice",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_15-1.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 2.55
    }
  },
  "commands": [
    {
      "character": "Alice",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Alice",
      "startTime": 1,
      "finishTime": 3.55,
      "dialogue": {
        "text": "Hey, James. Sorry for the interruption earlier.",
        "align": "center"
      }
    },
    {
      "character": "Alice",
      "opacity": 0,
      "startTime": 4.05
    }
  ]
}
```
