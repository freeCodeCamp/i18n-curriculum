---
id: 66b56cb9ff3bfb183fa1b7db
title: Tarea 83
challengeType: 22
dashedName: task-83
lang: en-US
---

<!-- (Audio) Anna: When do you think this new module will be ready? -->

# --instructions--

Escucha el audio para completar la oración de abajo.

# --fillInTheBlank--

## --sentence--

`When do you think BLANK BLANK BLANK will be ready?`

## --blanks--

`this`

### --feedback--

Esta palabra se usa para especificar el módulo que se está discutiendo actualmente.

---

`new`

### --feedback--

Algo reciente.

---

`module`

### --feedback--

Una parte o sección específica del programa de entrenamiento.

# --explanation--

`Module` se refiere a una unidad o sección de un curso o programa de capacitación. Por ejemplo:

- El nuevo `module` sobre ciberseguridad se añadirá la próxima semana.

Presta atención a cómo se usan las palabras `this`, `new` y `module`. `This` se usa para especificar el módulo del que están hablando, `new` indica que es una adición reciente, y `module` se refiere a una sección del entrenamiento.

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
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
      "filename": "B1_1-2.mp3",
      "startTime": 1,
      "startTimestamp": 47.12,
      "finishTimestamp": 48.96
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
      "finishTime": 2.84,
      "dialogue": {
        "text": "When do you think this new module will be ready?",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 3.34
    }
  ]
}
```
