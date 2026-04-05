---
id: 657eecb3b368badb3cc7fe4c
title: 도전 과제 61
challengeType: 22
dashedName: task-61
lang: en-US
---

<!-- (Audio) Sarah: I go to at least one convention every year. It's the best moment of the year for me. -->

# --description--

`At least`는 어떤 것의 최솟값이 괜찮거나 충분하다는 뜻을 말하고 싶을 때 사용합니다. "이 양보다 적지 않다"라고 표현하는 것과 같습니다. 예를 들어:

`I study English for at least 30 minutes every day.` - 이것은 매일 영어 공부를 30분 이상 하지만 30분 미만은 절대 하지 않는다는 뜻입니다.

# --fillInTheBlank--

## --sentence--

`I go to BLANK one convention every year. It's the best moment of the year for me.`

## --blanks--

`at least`

### --feedback--

이 두 단어는 최솟값을 나타내는 표현을 이룹니다.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.2-3.mp3",
      "startTime": 1,
      "startTimestamp": 30.46,
      "finishTimestamp": 34.22
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
      "finishTime": 4.76,
      "dialogue": {
        "text": "I go to at least one convention every year. It's the best moment of the year for me.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 5.26
    }
  ]
}
```
