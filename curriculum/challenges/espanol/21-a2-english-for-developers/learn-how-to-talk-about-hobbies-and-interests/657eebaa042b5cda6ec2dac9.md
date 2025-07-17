---
id: 657eebaa042b5cda6ec2dac9
title: Task 59
challengeType: 22
dashedName: task-59
---

<!-- (Audio) Sarah: Are you kidding? -->

# --description--

La expresión `Are you kidding?` se utiliza para expresar incredulidad, sorpresa, o a veces para confirmar si alguien está bromeando.

Si tu amigo te dice que vio a un perro montando una patineta por la calle, podrías sorprenderte y decir `Are you kidding?` para preguntar si realmente están hablando en serio o solo bromeando.

# --fillInTheBlank--

## --sentence--

`Sarah: Are you BLANK?`

## --blanks--

`kidding`

### --feedback--

Esta frase se usa comúnmente para expresar incredulidad o sorpresa en response a una sentencia.

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
