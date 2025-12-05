---
id: 657eebaa042b5cda6ec2dac9
title: Tarea 59
challengeType: 22
dashedName: task-59
lang: en-US
---

<!-- (Audio) Sarah: Are you kidding? -->

# --description--

`Are you kidding?` se usa para expresar incredulidad, sorpresa o a veces para confirmar si alguien está bromeando.

Si tu amigo te dice que vio a un perro montando una patineta por la calle, podrías sorprenderte y decir `Are you kidding?` para preguntar si realmente están hablando en serio o solo bromeando.

# --fillInTheBlank--

## --sentence--

`Are you BLANK?`

## --blanks--

`kidding`

### --feedback--

Este verbo se usa en la frase para expresar incredulidad o sorpresa en respuesta a una afirmación. Termina en `-ing`.

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
      "startTimestamp": 29.28,
      "finishTimestamp": 30.04
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
      "finishTime": 1.76,
      "dialogue": {
        "text": "Are you kidding?",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 2.26
    }
  ]
}
```
