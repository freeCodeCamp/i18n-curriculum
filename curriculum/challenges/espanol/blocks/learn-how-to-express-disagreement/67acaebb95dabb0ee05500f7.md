---
id: 67acaebb95dabb0ee05500f7
title: Tarea 21
challengeType: 22
dashedName: task-21
lang: en-US
---

<!-- (Audio) Anna: If people are working with outdated computers, it can be a setback for productivity. -->

# --instructions--

Escucha el audio para completar la oración de abajo.

# --fillInTheBlank--

## --sentence--

`If people are working with outdated computers, it can be a BLANK for productivity.`

## --blanks--

`setback`

### --feedback--

Esta palabra significa un obstáculo o algo que ralentiza el progreso.

# --explanation--

Un `setback` es algo que retrasa o impide el progreso. Las computadoras lentas o ineficientes pueden hacer que las tareas tomen más tiempo, reduciendo la eficiencia. Por ejemplo:

- `The project faced a setback due to a critical bug.` - El proyecto se retrasó o tuvo problemas debido a un error crítico de software.

- `Losing important data was a major setback for the team.` - Perder datos creó dificultades y ralentizó el trabajo del equipo.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Anna",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_11-1.mp3",
      "startTime": 1,
      "startTimestamp": 35.78,
      "finishTimestamp": 39.68
    }
  },
  "commands": [
    {
      "character": "Anna",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Anna",
      "startTime": 1,
      "finishTime": 4.9,
      "dialogue": {
        "text": "If people are working with outdated computers, it can be a setback for productivity.",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 5.4
    }
  ]
}
```
