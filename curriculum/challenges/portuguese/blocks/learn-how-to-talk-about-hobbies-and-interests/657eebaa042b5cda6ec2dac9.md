---
id: 657eebaa042b5cda6ec2dac9
title: Tarefa 59
challengeType: 22
dashedName: task-59
---

<!-- (Audio) Sarah: Are you kidding? -->

# --description--

A expressão `Are you kidding?` é usada para expressar descrença, surpresa ou às vezes para confirmar se alguém está brincando.

Se seu amigo te disser que viu um cachorro andando de skate pela rua, você pode ficar surpreso e dizer `Are you kidding?` para perguntar se ele está realmente falando sério ou apenas brincando.

# --fillInTheBlank--

## --sentence--

`Sarah: Are you BLANK?`

## --blanks--

`kidding`

### --feedback--

Esta frase é comumente usada para expressar descrença ou surpresa em resposta a uma declaração.

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
