---
id: 67ddb23caaa58aa09eabf0f8
title: Tarefa 33
challengeType: 22
dashedName: task-33
lang: en-US
---

<!-- (Audio) Alice: I think that's it for now. Thanks for your help. -->

# --instructions--

Ouça o áudio para completar a frase abaixo.

# --fillInTheBlank--

## --sentence--

`I think that's it for BLANK. Thanks for your help.`

## --blanks--

`now`

### --feedback--

Isso significa no momento atual e mostra que a situação pode mudar depois.

# --explanation--

`For now` significa neste momento ou por enquanto. Sugere que as coisas estão completas no momento, mas mais pode acontecer depois. Por exemplo:

`Let's stop working here for now and continue tomorrow.` - Isso significa que eles estão fazendo uma pausa no momento, mas continuarão mais tarde.

# --scene--

```json
{
  "setup": {
    "background": "interview-room2.png",
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
      "filename": "B1_15-1.mp3",
      "startTime": 1,
      "startTimestamp": 42.46,
      "finishTimestamp": 44.64
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
      "finishTime": 3.18,
      "dialogue": {
        "text": "I think that's it for now. Thanks for your help.",
        "align": "center"
      }
    },
    {
      "character": "Alice",
      "opacity": 0,
      "startTime": 3.68
    }
  ]
}
```
