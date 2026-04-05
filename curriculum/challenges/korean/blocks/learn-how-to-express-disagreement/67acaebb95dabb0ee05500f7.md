---
id: 67acaebb95dabb0ee05500f7
title: 작업 21
challengeType: 22
dashedName: task-21
lang: en-US
---

<!-- (Audio) Anna: If people are working with outdated computers, it can be a setback for productivity. -->

# --instructions--

오디오를 듣고 아래 문장을 완성하세요.

# --fillInTheBlank--

## --sentence--

`If people are working with outdated computers, it can be a BLANK for productivity.`

## --blanks--

`setback`

### --feedback--

이 단어는 장애물이나 진행을 늦추는 무언가를 의미합니다.

# --explanation--

`setback`는 진행을 지연시키거나 방해하는 것을 뜻합니다. 느리거나 비효율적인 컴퓨터는 작업을 더 오래 걸리게 하여 효율성을 떨어뜨릴 수 있습니다. 예를 들어:

- `The project faced a setback due to a critical bug.` - 심각한 소프트웨어 문제 때문에 프로젝트가 지연되거나 문제가 생겼습니다.

- `Losing important data was a major setback for the team.` - 데이터 손실이 어려움을 초래하고 팀 작업을 늦추었습니다.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Anna",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_11-1.mp3",
      "startTime": 1,
      "startTimestamp": 35.78,
      "finishTimestamp": 39.68
    }
  },
  "commands": [
    {
      "character": "Anna",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Anna",
      "startTime": 1,
      "finishTime": 4.9,
      "dialogue": {
        "text": "If people are working with outdated computers, it can be a setback for productivity.",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 5.4
    }
  ]
}
```
