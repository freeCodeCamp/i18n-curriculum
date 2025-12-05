---
id: 67dd5baa84d2fcc56c09dce3
title: Tarea 15
challengeType: 22
dashedName: task-15
lang: en-US
---

<!-- (Audio) James: By the way, did we decide on the deadline for the first phase? -->

# --instructions--

Escucha el audio para completar la oración de abajo.

# --fillInTheBlank--

## --sentence--

`By the way, did we BLANK on the deadline for the first BLANK?`

## --blanks--

`decide`

### --feedback--

Esto significa tomar una decisión o llegar a una conclusión sobre algo.

---

`phase`

### --feedback--

Esto se refiere a una etapa o parte específica de un proceso o proyecto.

# --explanation--

`To decide` significa elegir algo después de pensarlo. Por ejemplo:

`We need to decide which tools to use for the project.` – Esto significa elegir las herramientas después de considerar las opciones.

Una `phase` se refiere a una parte o paso dentro de un proceso más grande. Por ejemplo:

`We just finished the testing phase of the software.` – Esto significa que la etapa de pruebas en el proceso de desarrollo está completa.

# --scene--

```json
{
  "setup": {
    "background": "interview-room2.png",
    "characters": [
      {
        "character": "James",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_15-1.mp3",
      "startTime": 1,
      "startTimestamp": 17.36,
      "finishTimestamp": 20.64
    }
  },
  "commands": [
    {
      "character": "James",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "James",
      "startTime": 1,
      "finishTime": 4.28,
      "dialogue": {
        "text": "By the way, did we decide on the deadline for the first phase?",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 4.78
    }
  ]
}
```
