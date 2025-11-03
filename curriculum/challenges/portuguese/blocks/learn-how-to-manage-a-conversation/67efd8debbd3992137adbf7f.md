---
id: 67efd8debbd3992137adbf7f
title: Tarefa 91
challengeType: 22
dashedName: task-91
lang: en-US
---

<!-- (Audio) Brian: How's everything going on your end? -->

# --instructions--

Ouça o áudio para completar a frase abaixo.

# --fillInTheBlank--

## --sentence--

`How's everything going on your BLANK?`

## --blanks--

`end`

### --feedback--

Antecedido por `on your`, isso se refere à situação, lado ou localização de uma pessoa específica.

# --explanation--

`On your end` é usado para se referir à situação de alguém ou ao que está acontecendo com essa pessoa, frequentemente em uma conversa ou contexto de trabalho. Por exemplo:

`Let me know if you need any help on your end.` – Isso significa que o falante quer saber se a outra pessoa precisa de ajuda no trabalho ou na situação dela.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Brian",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_15-3.mp3",
      "startTime": 1,
      "startTimestamp": 5.56,
      "finishTimestamp": 7.28
    }
  },
  "commands": [
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "startTime": 1,
      "finishTime": 2.72,
      "dialogue": {
        "text": "How's everything going on your end?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 3.22
    }
  ]
}
```
