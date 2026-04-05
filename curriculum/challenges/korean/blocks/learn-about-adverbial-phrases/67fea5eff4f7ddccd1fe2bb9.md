---
id: 67fea5eff4f7ddccd1fe2bb9
title: 작업 22
challengeType: 22
dashedName: task-22
lang: en-US
---

<!-- (Audio) Sarah: We might also consider having weekly updates for parts of the project where changes are less frequent. -->

# --instructions--

오디오를 듣고 아래 문장을 완성하세요.

# --fillInTheBlank--

## --sentence--

`We might also consider having BLANK updates for parts of the project where changes are less frequent.`

## --blanks--

`weekly`

### --feedback--

이는 일주일에 한 번 일어나는 일을 가리킵니다.

# --explanation--

`Weekly`는 일주일에 한 번만 발생하는 일을 설명할 때 사용합니다. 이는 이벤트나 행동이 주간 단위로 발생하는 빈도를 나타냅니다. 예를 들어:

`The team has weekly meetings to discuss project progress.` – 이 문장은 회의가 매주 열린다는 뜻입니다.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
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
      "filename": "B1_18-1.mp3",
      "startTime": 1,
      "startTimestamp": 44.62,
      "finishTimestamp": 49.14
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
      "finishTime": 3.2,
      "dialogue": {
        "text": "We might also consider having weekly updates",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "startTime": 3.2,
      "finishTime": 5.52,
      "dialogue": {
        "text": "for parts of the project where changes are less frequent.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 6.02
    }
  ]
}
```
