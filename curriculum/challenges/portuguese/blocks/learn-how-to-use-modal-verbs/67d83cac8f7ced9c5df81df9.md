---
id: 67d83cac8f7ced9c5df81df9
title: Tarefa 144
challengeType: 22
dashedName: task-144
lang: en-US
---

<!-- (audio) Lisa: This will help us understand the extent of the breach and what they might have taken. -->

# --instructions--

Ouça o áudio para completar a frase abaixo.

# --fillInTheBlank--

## --sentence--

`This will help us understand the extent of the breach and what they BLANK BLANK.`

## --blanks--

`might`

### --feedback--

Este verbo modal expressa possibilidade ou incerteza sobre um evento passado.

---

`have taken`

### --feedback--

Este verbo está na forma `Past Perfect`, usada para falar sobre algo que poderia ter acontecido no passado. Use duas palavras.

# --explanation--  

`Might` expressa possibilidade.  

`Have taken` é a forma `Past Perfect` de `take`, usada para falar sobre uma possível ação passada. Por exemplo:

O atacante pode ter levado arquivos sensíveis. - Você não sabe ao certo, mas é possível.

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
      "filename": "B1_14-3.mp3",
      "startTime": 1,
      "startTimestamp": 53.8,
      "finishTimestamp": 57.7
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
      "finishTime": 4.9,
      "dialogue": {
        "text": "This will help us understand the extent of the breach and what they might have taken.",
        "align": "center"
      }
    },
    {
      "character": "Lisa",
      "opacity": 0,
      "startTime": 5.4
    }
  ]
}
```
