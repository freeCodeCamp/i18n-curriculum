---
id: 678e4878f7df13bbcdbcdee4
title: Tarea 54
challengeType: 22
dashedName: task-54
lang: en-US
---

<!-- (audio) Jake: It's customizable, which is useful for our different teams. -->

# --instructions--

Escucha el audio para completar la oración de abajo.

# --fillInTheBlank--

## --sentence--

`It's BLANK, which is useful for our different teams.`

## --blanks--

`customizable`

### --feedback--

Esta palabra significa que algo puede ser cambiado o ajustado para cumplir con preferencias o necesidades individuales.

# --explanation--

`Customizable` se refiere a algo que puede ser cambiado o modificado para adaptarse a diferentes preferencias, necesidades o requisitos. Por ejemplo:

El `dashboard` en esta herramienta de gestión de proyectos es personalizable, permitiendo que cada equipo organice sus tareas de la manera que prefiera. Esto significa que el `dashboard` puede modificarse según las necesidades de cada equipo, ayudándolos a organizar su trabajo de forma más eficiente.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Jake",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_9-2.mp3",
      "startTime": 1,
      "startTimestamp": 24.32,
      "finishTimestamp": 27.88
    }
  },
  "commands": [
    {
      "character": "Jake",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jake",
      "startTime": 1,
      "finishTime": 4.56,
      "dialogue": {
        "text": "It's customizable, which is useful for our different teams.",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "opacity": 0,
      "startTime": 5.06
    }
  ]
}
```
