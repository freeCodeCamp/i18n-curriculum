---
id: 6995dd999dec0afeec52dbba
title: Tarefa 13
challengeType: 22
dashedName: task-13
lang: es
---

<!-- (Audio) Luna: Trabaja en la oficina de Medellín. -->

# --description--

A palavra `oficina` significa "escritório".

Luna está usando essa palavra para responder à pergunta de Sebastián.

# --instructions--

Ouça o áudio e complete a frase abaixo.

# --fillInTheBlank--

## --sentence--

`Trabaja en la BLANK de Medellín.`

## --blanks--

`oficina`

### --feedback--

Essa palavra se refere ao lugar onde as pessoas trabalham.

# --explanation--

Luna diz que Carlos `trabaja en la oficina de Medellín`.

Isso significa que ele trabalha no escritório de Medellín.

Você deve escrever a palavra `oficina` para completar a frase.

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
