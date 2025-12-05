---
id: 67fea5eff4f7ddccd1fe2bb9
title: Tarea 22
challengeType: 22
dashedName: task-22
lang: en-US
---

<!-- (Audio) Sarah: We might also consider having weekly updates for parts of the project where changes are less frequent. -->

# --instructions--

Escucha el audio para completar la oración de abajo.

# --fillInTheBlank--

## --sentence--

`We might also consider having BLANK updates for parts of the project where changes are less frequent.`

## --blanks--

`weekly`

### --feedback--

Esto se refiere a algo que ocurre una vez a la semana.

# --explanation--

`Weekly` se usa para describir algo que ocurre solo una vez cada semana. Indica la frecuencia de un evento o acción que sucede semanalmente. Por ejemplo:

El equipo tiene reuniones semanales para discutir el progreso del proyecto. – Esto significa que las reuniones ocurren cada semana.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
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
      "filename": "B1_18-1.mp3",
      "startTime": 1,
      "startTimestamp": 44.62,
      "finishTimestamp": 49.14
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
      "finishTime": 3.2,
      "dialogue": {
        "text": "We might also consider having weekly updates",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "startTime": 3.2,
      "finishTime": 5.52,
      "dialogue": {
        "text": "for parts of the project where changes are less frequent.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 6.02
    }
  ]
}
```
