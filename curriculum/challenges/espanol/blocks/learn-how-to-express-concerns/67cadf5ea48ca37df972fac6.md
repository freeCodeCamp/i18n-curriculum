---
id: 67cadf5ea48ca37df972fac6
title: Tarea 124
challengeType: 19
dashedName: task-124
lang: en-US
---

<!-- (Audio) Maria: First, they really need more support. -->

# --instructions--

Escucha el audio y responde a la pregunta de abajo.  

# --questions--

## --text--

¿Qué menciona Maria como la solicitud más importante del equipo?  

## --answers--

Necesitan más ayuda.  

---

Quieren un plazo más largo.  

### --feedback--

Maria no menciona extender el plazo.

---

Quieren reducir el número de tareas.

### --feedback--

Maria no menciona reducir el número de tareas.  

---

Están pidiendo más reuniones.  

### --feedback--

Maria no menciona reuniones adicionales.

## --video-solution--

1  

# --explanation--

`First` se usa cuando quieres enumerar acciones en orden de importancia o tiempo. En este caso, Maria está listando lo que el equipo necesita, comenzando con lo que parece ser la solicitud más importante (tener más apoyo). Otro ejemplo:

`First, we should analyze the problem. Then, we can discuss solutions.` - Esto significa que analizar el problema viene antes que cualquier otra cosa.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Maria",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_12-3.mp3",
      "startTime": 1,
      "startTimestamp": 25.26,
      "finishTimestamp": 26.92
    }
  },
  "commands": [
    {
      "character": "Maria",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Maria",
      "startTime": 1,
      "finishTime": 2.66,
      "dialogue": {
        "text": "First, they really need more support.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 3.16
    }
  ]
}
```
