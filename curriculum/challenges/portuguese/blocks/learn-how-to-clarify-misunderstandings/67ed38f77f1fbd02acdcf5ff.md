---
id: 67ed38f77f1fbd02acdcf5ff
title: Tarefa 53
challengeType: 22
dashedName: task-53
lang: en-US
---

<!-- (Audio) Lisa: Sure, Mark. What's going on? -->

# --instructions--

Ouça o áudio para completar a frase abaixo.

# --fillInTheBlank--

## --sentence--

`Sure, Mark. What's BLANK?`

## --blanks--

`going on`

### --feedback--

Esta frase de duas palavras é usada para perguntar sobre o que está acontecendo ou qual é a situação. A primeira palavra termina com `-ing`.

# --explanation--

`What's going on?` é uma forma comum de perguntar a alguém o que está acontecendo, qual é a situação ou qual problema ou evento está ocorrendo. Por exemplo:

`What's going on at the meeting?` – Alguém está perguntando o que está acontecendo durante a reunião.

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
