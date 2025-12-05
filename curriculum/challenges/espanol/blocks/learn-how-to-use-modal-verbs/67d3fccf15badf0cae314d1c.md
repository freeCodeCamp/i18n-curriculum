---
id: 67d3fccf15badf0cae314d1c
title: Tarea 7
challengeType: 22
dashedName: task-7
lang: en-US
---

<!-- (Audio) Mark: Sure, Jessica. What do I need to do? -->

# --instructions--

Escucha el audio para completar la oración de abajo.

# --fillInTheBlank--

## --sentence--

`Sure, Jessica. What do I BLANK to BLANK?`

## --blanks--

`need`

### --feedback--

Este verbo muestra necesidad, lo que significa que algo es requerido.

---

`do`

### --feedback--

Este verbo sigue a `need` cuando preguntas sobre una acción.

# --explanation--

`Need to` se usa cuando se pregunta sobre acciones necesarias. Va seguido de la forma base del verbo (`do`). Por ejemplo:

- `We need to do more testing before releasing the app.` - Es necesario probar la app antes de lanzarla.

- `We need to do some updates to fix the bugs.` - Es necesario actualizar el sistema para resolver problemas.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Mark",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_14-1.mp3",
      "startTime": 1,
      "startTimestamp": 7,
      "finishTimestamp": 9.08
    }
  },
  "commands": [
    {
      "character": "Mark",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Mark",
      "startTime": 1,
      "finishTime": 3.08,
      "dialogue": {
        "text": "Sure, Jessica. What do I need to do?",
        "align": "center"
      }
    },
    {
      "character": "Mark",
      "opacity": 0,
      "startTime": 3.58
    }
  ]
}
```
