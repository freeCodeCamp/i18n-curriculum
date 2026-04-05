---
id: 656d1becadf67d05d5b27bab
title: 작업 149
challengeType: 19
dashedName: task-149
lang: en-US
---

<!--
AUDIO REFERENCE:
Sophie: Oh, come on, Brian.
Brian: But it's true. She's the person to go to if you need help.
-->

# --description--

`he` 대명사를 배웠을 때처럼, `she` 같은 대명사는 여성 개인을 가리킬 때 사용합니다. 대화에서 반복을 피하는 데 도움이 됩니다. 다음 대화 부분을 보세요:

- Sophie: `Oh, come on, Brian.`

- Brian: `But it's true. She's the person to go to if you need help.`

여기서 Brian은 Sophie를 가리키기 위해 `she`를 사용합니다. Sophie의 이름을 반복하는 대신, Brian은 대명사 `she`를 사용해 대화를 더 자연스럽게 하고 반복을 피합니다.

# --questions--

## --text--

대화에서 Brian이 Sophie의 이름을 반복하지 않고 가리키기 위해 사용하는 단어는 무엇인가요?

## --answers--

`he`

### --feedback--

`He`는 남성을 가리킵니다.

---

`they`

### --feedback--

`They`는 복수형으로 두 명 이상을 가리킵니다.

---

`it`

### --feedback--

`It`는 보통 사물이나 동물을 가리킬 때 사용합니다.

---

`she`

## --video-solution--

4

# --scene--

```json
{
  "setup": {
    "background": "cafe.png",
    "characters": [
      {
        "character": "Sophie",
        "position": { "x": 25, "y": 0, "z": 1.3 },
        "opacity": 0
      },
      {
        "character": "Brian",
        "position": { "x": 75, "y": 15, "z": 1.2 },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "1.1-4.mp3",
      "startTime": 1,
      "startTimestamp": 22.6,
      "finishTimestamp": 28.16
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 2.4,
      "dialogue": {
        "text": "Oh, come on, Brian.",
        "align": "left"
      }
    },
    {
      "character": "Brian",
      "startTime": 3.3,
      "finishTime": 6.35,
      "dialogue": {
        "text": "But it's true. She's the person to go to if you need help.",
        "align": "right"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 6.85
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 6.85
    }
  ]
}
```
