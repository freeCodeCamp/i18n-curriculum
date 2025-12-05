---
id: 67d7dcfb9afa344d0e95fa4f
title: Tarea 122
challengeType: 22
dashedName: task-122
lang: en-US
---

<!-- (Audio) Sarah: However, outsourcing can lead to communication issues, which might delay the project. -->

# --instructions--

Escucha el audio para completar la oración de abajo.

# --fillInTheBlank--

## --sentence--

`However, outsourcing can BLANK communication issues, which might BLANK the project.`

## --blanks--

`lead to`

### --feedback--

Esta frase de dos palabras significa causar o resultar en que algo ocurra.  

---

`delay`

### --feedback--

Esto significa hacer que algo tome más tiempo de lo esperado.  

# --explanation--

`Lead to` significa causar que algo suceda o resulte en un determinado resultado. Por ejemplo:

`Poor planning can lead to missed deadlines.` – Esto significa que si la planificación no se hace bien, es posible que no se cumplan los plazos.  

`Delay` significa hacer que algo tome más tiempo de lo esperado o posponerlo. Por ejemplo:

`The software release was delayed due to unexpected bugs.` – Esto significa que el lanzamiento se retrasó debido a problemas técnicos.  

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_13-3.mp3",
      "startTime": 1,
      "startTimestamp": 46.98,
      "finishTimestamp": 51.34
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
      "finishTime": 5.36,
      "dialogue": {
        "text": "However, outsourcing can lead to communication issues which might delay the project.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 5.86
    }
  ]
}
```
