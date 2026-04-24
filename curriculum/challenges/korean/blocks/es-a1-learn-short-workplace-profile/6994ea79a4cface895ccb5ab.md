---
id: 6994ea79a4cface895ccb5ab
title: 작업 8
challengeType: 22
dashedName: task-8
lang: es
---

<!-- (Audio) Luna: Su usuario es carlos-velez. -->

# --description--

사용자 이름에는 특수 기호가 포함될 수 있습니다.

이제 Luna가 Carlos의 사용자 이름을 말하는 것을 들으실 겁니다. 이 이름에는 `-`라는 기호가 있는데, 스페인어로는 `guión`라고 부릅니다.

# --instructions--

오디오를 듣고 아래 문장을 완성하세요.

# --fillInTheBlank--

## --sentence--

`Su usuario es BLANK.`

## --blanks--

`carlos-velez`

### --feedback--

Luna가 이것이 Carlos의 사용자 이름이라고 말합니다. 이름 사이에 하이픈(`-`)을 꼭 포함하세요.

# --explanation--

Luna가 말합니다: `Su usuario es carlos-velez.`

기호 `-`는 스페인어로 `guión`라고 알려져 있습니다. `o` 글자에 강세 표시를 포함하는 것을 잊지 마세요.

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "Luna",
        "position": {
          "x": -25,
          "y": 28,
          "z": 1.7
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
      "filename": "ES_A1_carlos_workplace_profile.mp3",
      "startTime": 1,
      "startTimestamp": 31.02,
      "finishTimestamp": 34.93
    },
    "alwaysShowDialogue": false
  },
  "commands": [
    {
      "character": "Luna",
      "position": {
        "x": 30,
        "y": 28,
        "z": 1.7
      },
      "startTime": 0
    },
    {
      "character": "Carlos",
      "position": {
        "x": 72,
        "y": 10,
        "z": 1.2
      },
      "startTime": 0.5
    },
    {
      "character": "Luna",
      "startTime": 1,
      "finishTime": 4.91,
      "dialogue": {
        "text": "Su usuario es carlos-velez.",
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
      "startTime": 5.41
    },
    {
      "character": "Luna",
      "position": {
        "x": -25,
        "y": 28,
        "z": 1.7
      },
      "startTime": 5.91
    }
  ]
}
```
