---
id: 6994ea79a4cface895ccb5ab
title: Завдання 8
challengeType: 22
dashedName: task-8
lang: es
---

<!-- (Audio) Luna: Su usuario es carlos-velez. -->

# --description--

Імена користувачів можуть містити спеціальні символи.

Тепер ви почуєте, як Луна вимовляє ім’я користувача Карлоса. Ви помітите, що в ньому є цей символ `-`, який іспанською називається `guión`.

# --instructions--

Прослухайте аудіо та доповніть речення нижче.

# --fillInTheBlank--

## --sentence--

`Su usuario es BLANK.`

## --blanks--

`carlos-velez`

### --feedback--

Луна каже, що це ім’я користувача Карлоса. Не забудьте включити дефіс (`-`) між іменами.

# --explanation--

Луна каже: `Su usuario es carlos-velez.`

Символ `-` відомий іспанською як `guión`. Не забудьте поставити акцент на літері `o`.

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
