---
id: 67baf3ed288e8b06f4ab0dfb
title: Tarefa 76
challengeType: 22
dashedName: task-76
lang: en-US
---

<!-- (Audio) David: It builds team spirit and makes problem-solving easier. -->

# --instructions--

Ouça o áudio para completar a frase abaixo.

# --fillInTheBlank--

## --sentence--

`It builds BLANK and makes BLANK easier.`

## --blanks--

`team spirit`

### --feedback--  

Essas duas palavras juntas referem-se ao senso de unidade e cooperação entre os colegas de trabalho. A primeira palavra se refere a um grupo trabalhando junto e a segunda palavra está relacionada ao entusiasmo ou motivação compartilhados.

---

`problem-solving`

### --feedback--  

Esta palavra composta refere-se ao processo de encontrar soluções para desafios. A primeira parte refere-se a um problema que precisa ser corrigido e a segunda parte é um verbo que significa encontrar uma solução.  Remember to use `-` between the two parts.

# --explanation--

David acredita que trabalhar no escritório ajuda a fortalecer o `team spirit` (um senso de conexão e unidade entre os colegas de trabalho) e melhora o `problem-solving` (encontrar soluções para desafios de forma mais eficiente).

Ele argumenta que estar no mesmo espaço físico facilita para os funcionários colaborarem e se apoiarem.

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "David",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_11-2.mp3",
      "startTime": 1,
      "startTimestamp": 42.52,
      "finishTimestamp": 45.7
    }
  },
  "commands": [
    {
      "character": "David",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "David",
      "startTime": 1,
      "finishTime": 4.18,
      "dialogue": {
        "text": "It builds team spirit and makes problem solving easier.",
        "align": "center"
      }
    },
    {
      "character": "David",
      "opacity": 0,
      "startTime": 4.68
    }
  ]
}
```
