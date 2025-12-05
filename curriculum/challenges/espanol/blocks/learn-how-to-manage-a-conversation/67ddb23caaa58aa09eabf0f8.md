---
id: 67ddb23caaa58aa09eabf0f8
title: Tarea 33
challengeType: 22
dashedName: task-33
lang: en-US
---

<!-- (Audio) Alice: I think that's it for now. Thanks for your help. -->

# --instructions--

Escucha el audio para completar la oración de abajo.

# --fillInTheBlank--

## --sentence--

`I think that's it for BLANK. Thanks for your help.`

## --blanks--

`now`

### --feedback--

Esto significa en el momento actual y muestra que la situación podría cambiar más adelante.

# --explanation--

`For now` significa en este momento o por el momento. Sugiere que las cosas están completas por ahora, pero que podría pasar más adelante. Por ejemplo:

`Let's stop working here for now and continue tomorrow.` - Esto significa que están haciendo una pausa por el momento, pero continuarán más tarde.

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
