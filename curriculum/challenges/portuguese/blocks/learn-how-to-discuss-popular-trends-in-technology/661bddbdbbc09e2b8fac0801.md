---
id: 661bddbdbbc09e2b8fac0801
title: Tarefa 76
challengeType: 22
dashedName: task-76
---

<!-- (Audio) Alice: Also, it's used for identity verification at airports and secure facilities. -->

# --description--

A preposição `at` indica um ponto em um mapa.Ele informa uma localização ou posição específica.Ele ajuda você a entender onde algo está acontecendo ou onde alguém está.

Exemplos:

`We'll meet at the coffee shop.` (nesta frase, `at` é usado para especificar o local onde a reunião acontecerá - a cafeteria).

`I'll be waiting for you at the bus stop.` (`at` é usado aqui para indicar o local onde alguém estará esperando - o ponto de ônibus). 

Ouça a frase e preencha a lacuna.

# --fillInTheBlank--

## --sentence--

`Also, it's used for identity verification BLANK airports and secure facilities.`

## --blanks--

`at`

### --feedback--

A preposição usada para ajudar você a entender onde algo está ou acontece.

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Alice",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "4.2-4.mp3",
      "startTime": 1,
      "startTimestamp": 15.22,
      "finishTimestamp": 19.04
    }
  },
  "commands": [
    {
      "character": "Alice",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Alice",
      "startTime": 1,
      "finishTime": 4.82,
      "dialogue": {
        "text": "Also, it's used for identity verification at airports and secure facilities.",
        "align": "center"
      }
    },
    {
      "character": "Alice",
      "opacity": 0,
      "startTime": 5.32
    }
  ]
}
```
