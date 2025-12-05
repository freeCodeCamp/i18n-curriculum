---
id: 6751bdd2f78adbed1ea0fa51
title: Tarea 24
challengeType: 19
dashedName: task-24
lang: en-US
---

<!-- (Audio) Brian: Do you think we'll need to update the users about the downtime? -->

# --instructions--

Escucha el audio y responde a la pregunta de abajo.

# --questions--

## --text--

¿Cuál es la preocupación de Brian?

## --answers--

Si los usuarios necesitan ser informados sobre el tiempo de inactividad.

---

Si el tiempo de inactividad dura demasiado.

### --feedback--

Brian no está preguntando sobre la duración del downtime.

---

Si los usuarios experimentarán problemas técnicos.

### --feedback--

Brian no menciona problemas técnicos en su preocupación.

---

Si el tiempo de inactividad afectará el rendimiento del servidor.

### --feedback--

La preocupación de Brian no es sobre el rendimiento del servidor.

## --video-solution--

1

# --explanation--

Brian está preguntando si debería actualizar a los usuarios sobre el tiempo de inactividad, mostrando que su preocupación es la comunicación con los usuarios más que la duración del tiempo de inactividad, problemas técnicos o el rendimiento del servidor.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
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
      "filename": "B1_6-1.mp3",
      "startTime": 1,
      "startTimestamp": 38.78,
      "finishTimestamp": 41.26
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
      "finishTime": 3.48,
      "dialogue": {
        "text": "Do you think we'll need to update the users about the downtime?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 3.98
    }
  ]
}
```
