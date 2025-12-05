---
id: 67d78c94b686ce3bddcaf8ab
title: Tarea 117
challengeType: 22
dashedName: task-117
lang: en-US
---

<!-- (Audio) Brian: It could save us time and resources. What about timelines? Which option is faster? -->

# --instructions--

Escucha el audio para completar la oración de abajo.

# --fillInTheBlank--

## --sentence--

`It could BLANK and resources. What about BLANK? Which option is faster?`

## --blanks--

`save us time`

### --feedback--

Estas tres palabras juntas significan reducir la cantidad de tiempo necesario para completar una tarea.  

---

`timelines`

### --feedback--

Esta palabra en plural se refiere a cronogramas o fechas límite para completar un proyecto.  

# --explanation--

`Save us time` significa reducir el tiempo requerido para completar algo, haciendo el proceso más eficiente. Por ejemplo:

`Using automation tools can save us time on repetitive tasks.` – Esto significa que las herramientas de automatización ayudan a completar tareas más rápido.  

`Timelines` se refieren a cronogramas o fechas límite que muestran cuándo deben completarse las diferentes partes de un proyecto. Por ejemplo:

`We need to adjust our timelines to finish the project on schedule.` – Esto significa cambiar los plazos para asegurar que el proyecto se complete a tiempo.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Brian",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_13-3.mp3",
      "startTime": 1,
      "startTimestamp": 32.34,
      "finishTimestamp": 37.52
    }
  },
  "commands": [
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "startTime": 1,
      "finishTime": 6.18,
      "dialogue": {
        "text": "It could save us time and resources. What about timelines? Which option is faster?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 6.68
    }
  ]
}
```
