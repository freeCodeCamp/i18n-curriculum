---
id: 67cafac07dc081eefb4d7adb
title: Tarea 135
challengeType: 19
dashedName: task-135
lang: en-US
---

<!-- (Audio) Bob: That makes sense. Could you set up a weekly meeting to discuss progress and keep everyone in the loop? -->

# --instructions--

Escucha el audio y responde a la pregunta de abajo.  

# --questions--

## --text--

¿Cuál es el objetivo de tener reuniones semanales?

## --answers--

Para reducir la cantidad de tareas que tiene el equipo.

### --feedback--

Bob no menciona reducir tareas.  

---

Para evitar hacer cualquier cambio en el proyecto.

### --feedback--

Bob no sugiere que eviten hacer cambios.

---

Para aumentar el número de reuniones sin un objetivo claro.

### --feedback--

Bob tiene un objetivo específico y lo menciona.

---

Para asegurarte de que todos estén actualizados sobre el proyecto.

## --video-solution--

4  

# --explanation--

`To keep someone in the loop` significa mantenerlo informado sobre actualizaciones y decisiones importantes. Por ejemplo:

`Please keep me in the loop about any changes to the schedule.` - Esto significa que la persona quiere estar informada si algo cambia.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Bob",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_12-3.mp3",
      "startTime": 1,
      "startTimestamp": 43.3,
      "finishTimestamp": 48.18
    }
  },
  "commands": [
    {
      "character": "Bob",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Bob",
      "startTime": 1,
      "finishTime": 3.26,
      "dialogue": {
        "text": "That makes sense. Could you set up a weekly meeting",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "startTime": 3.26,
      "finishTime": 5.88,
      "dialogue": {
        "text": "to discuss progress and keep everyone in the loop?",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 6.38
    }
  ]
}
```
