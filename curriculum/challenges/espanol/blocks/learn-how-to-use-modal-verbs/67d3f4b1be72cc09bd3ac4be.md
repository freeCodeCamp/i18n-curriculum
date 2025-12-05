---
id: 67d3f4b1be72cc09bd3ac4be
title: Tarea 4
challengeType: 22
dashedName: task-4
lang: en-US
---

<!-- (Audio) Jessica: There are a few things you must do to ensure compliance. -->

# --instructions--

Escucha el audio para completar la oración de abajo.

# --fillInTheBlank--

## --sentence--

`There are a few things you BLANK BLANK to ensure compliance.`

## --blanks--

`must`

### --feedback--

Este verbo modal expresa necesidad u obligación.

---

`do`

### --feedback--

Este verbo sigue a `must` para indicar una acción que es obligatoria.

# --explanation--

`Must` es un verbo modal usado para expresar necesidad u obligación. Por ejemplo:

- `You must wear a seatbelt while driving.` - Es obligatorio.

- `We must submit the report by Friday.` - Es necesario.

Los verbos modales siempre van seguidos de la forma base del verbo (sin `to`).

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Jessica",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_14-1.mp3",
      "startTime": 1,
      "startTimestamp": 4.02,
      "finishTimestamp": 6.62
    }
  },
  "commands": [
    {
      "character": "Jessica",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jessica",
      "startTime": 1,
      "finishTime": 3.6,
      "dialogue": {
        "text": "There are a few things you must do to ensure compliance.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "opacity": 0,
      "startTime": 4.1
    }
  ]
}
```
