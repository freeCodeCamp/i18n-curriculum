---
id: 67d83cac8f7ced9c5df81df9
title: Tarea 144
challengeType: 22
dashedName: task-144
lang: en-US
---

<!-- (audio) Lisa: This will help us understand the extent of the breach and what they might have taken. -->

# --instructions--

Escucha el audio para completar la oración de abajo.

# --fillInTheBlank--

## --sentence--

`This will help us understand the extent of the breach and what they BLANK BLANK.`

## --blanks--

`might`

### --feedback--

Este verbo modal expresa posibilidad o incertidumbre sobre un evento pasado.

---

`have taken`

### --feedback--

Este verbo es la forma `Past Perfect`, usada para hablar de algo que podría haber ocurrido en el pasado. Usa dos palabras.

# --explanation--  

`Might` expresa posibilidad.  

`Have taken` es la forma `Past Perfect` de `take`, usada para hablar de una posible acción pasada. Por ejemplo:

`The attacker might have taken sensitive files.` - No lo sabes con certeza, pero es posible.

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
