---
id: 67baf3ed288e8b06f4ab0dfb
title: Tarea 76
challengeType: 22
dashedName: task-76
lang: en-US
---

<!-- (Audio) David: It builds team spirit and makes problem-solving easier. -->

# --instructions--

Escucha el audio para completar la oración de abajo.

# --fillInTheBlank--

## --sentence--

`It builds BLANK and makes BLANK easier.`

## --blanks--

`team spirit`

### --feedback--  

Estas dos palabras juntas se refieren al sentido de unidad y cooperación entre compañeros de trabajo. La primera palabra se refiere a un grupo que trabaja junto, y la segunda palabra está relacionada con el entusiasmo o la motivación compartida.

---

`problem-solving`

### --feedback--  

Esta palabra compuesta se refiere al proceso de encontrar soluciones a desafíos. La primera parte se refiere a un problema que necesita ser arreglado, y la segunda parte es un verbo que significa encontrar una solución. Recuerda usar `-` entre las dos partes.

# --explanation--

David cree que trabajar en la oficina ayuda a fortalecer el `team spirit` (un sentido de conexión y unidad entre compañeros de trabajo) y mejora el `problem-solving` (encontrar soluciones a los desafíos de manera más eficiente).

Él argumenta que estar en el mismo espacio físico facilita que los empleados colaboren y se apoyen mutuamente.

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
