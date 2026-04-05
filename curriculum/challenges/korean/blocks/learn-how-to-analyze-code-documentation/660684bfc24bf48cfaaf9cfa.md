---
id: 660684bfc24bf48cfaaf9cfa
title: 작업 8
challengeType: 22
dashedName: task-8
lang: en-US
---

<!-- (Audio) Sophie: Thanks, I'll give it a shot. -->

# --description--

`Give it a shot`는 무언가를 시도해 본다는 뜻입니다. `Try it`라고 말하는 것과 같습니다.

예를 들어, 친구가 코딩 수업이 너무 어려울 것 같아 망설이고 있다면, 이 수업에 참여해 보라고 격려하며 `Why not give it a shot? You might enjoy it more than you think.`라고 말할 수 있습니다.

# --fillInTheBlank--

## --sentence--

`Thanks, BLANK give it a BLANK.`

## --blanks--

`I'll`

### --feedback--

`I will`의 줄임말입니다. Sophie가 Brian이 제안한 것을 시도해 보겠다는 결정을 표현하고 있습니다.

---

`shot`

### --feedback--

이 문맥에서 시도나 도전을 의미합니다. Sophie가 Brian이 추천한 것을 시도해 보겠다고 말하고 있습니다.

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "7.3-1.mp3",
      "startTime": 1,
      "startTimestamp": 24.86,
      "finishTimestamp": 26.28
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 2.42,
      "dialogue": {
        "text": "Thanks, I'll give it a shot.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 2.92
    }
  ]
}
```
