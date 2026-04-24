---
id: 6995dd999dec0afeec52dbba
title: 작업 13
challengeType: 22
dashedName: task-13
lang: es
---

<!-- (Audio) Luna: Trabaja en la oficina de Medellín. -->

# --description--

단어 `oficina`는 "사무실"을 의미합니다.

Luna는 Sebastián의 질문에 답하기 위해 이 단어를 사용하고 있습니다.

# --instructions--

오디오를 듣고 아래 문장을 완성하세요.

# --fillInTheBlank--

## --sentence--

`Trabaja en la BLANK de Medellín.`

## --blanks--

`oficina`

### --feedback--

이 단어는 사람들이 일하는 장소를 가리킵니다.

# --explanation--

Luna는 Carlos가 `trabaja en la oficina de Medellín`라고 말합니다.

이는 그가 메데인 사무실에서 일한다는 뜻입니다.

문장을 완성하려면 `oficina` 단어를 써야 합니다.

# --scene--

```json
{
  "setup": {
    "background": "interview-room2.png",
    "characters": [
      {
        "character": "Sebastián",
        "position": {
          "x": -25,
          "y": 21,
          "z": 1.5
        },
        "opacity": 1
      },
      {
        "character": "Luna",
        "position": {
          "x": 125,
          "y": 21,
          "z": 1.6
        },
        "opacity": 1
      },
      {
        "character": "Carlos",
        "position": {
          "x": 125,
          "y": 10,
          "z": 1.2
        },
        "opacity": 1
      }
    ],
    "audio": {
      "filename": "ES_A1_basti_asks_luna_about_carlos_dialogue.mp3",
      "startTime": 1,
      "startTimestamp": 10.95,
      "finishTimestamp": 13.66
    },
    "alwaysShowDialogue": false
  },
  "commands": [
    {
      "character": "Sebastián",
      "position": {
        "x": 22,
        "y": 21,
        "z": 1.5
      },
      "startTime": 0
    },
    {
      "character": "Luna",
      "position": {
        "x": 46,
        "y": 21,
        "z": 1.6
      },
      "startTime": 0.5
    },
    {
      "character": "Carlos",
      "position": {
        "x": 81,
        "y": 10,
        "z": 1.2
      },
      "startTime": 0.7
    },
    {
      "character": "Luna",
      "startTime": 1,
      "finishTime": 3.71,
      "dialogue": {
        "text": "Trabaja en la oficina de Medellín.",
        "align": "left"
      }
    },
    {
      "character": "Carlos",
      "position": {
        "x": 125,
        "y": 10,
        "z": 1.2
      },
      "startTime": 4.21
    },
    {
      "character": "Luna",
      "position": {
        "x": 125,
        "y": 21,
        "z": 1.6
      },
      "startTime": 4.71
    },
    {
      "character": "Sebastián",
      "position": {
        "x": -25,
        "y": 21,
        "z": 1.5
      },
      "startTime": 4.91
    }
  ]
}
```
