---
id: 67a9efcabf0dac0baa0ec536
title: Tarefa 4
challengeType: 22
dashedName: task-4
lang: en-US
---

<!-- (Audio) Bob: It seems most people prefer using it for office furniture. -->

# --instructions--

Ouça o áudio para completar a frase abaixo.

# --fillInTheBlank--

## --sentence--

`It seems most people prefer using it for BLANK.`

## --blanks--

`office furniture`

### --feedback--

Pense no que as pessoas precisam para melhorar seu espaço de trabalho em casa. Isso inclui mesas, cadeiras e prateleiras.

# --explanation--

`Office furniture` refere-se a mesas, cadeiras, prateleiras e outros itens usados em um espaço de trabalho.

Neste diálogo, Bob está falando sobre como os funcionários estão escolhendo gastar seu subsídio para trabalho remoto. Como trabalhar de casa requer um ambiente confortável e produtivo, muitas pessoas usam o auxílio para comprar móveis de escritório como cadeiras ergonômicas ou mesas espaçosas.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Bob",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_11-1.mp3",
      "startTime": 1,
      "startTimestamp": 4.46,
      "finishTimestamp": 8
    }
  },
  "commands": [
    {
      "character": "Bob",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Bob",
      "startTime": 1,
      "finishTime": 4.54,
      "dialogue": {
        "text": "It seems most people prefer using it for office furniture.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 5.04
    }
  ]
}
```
