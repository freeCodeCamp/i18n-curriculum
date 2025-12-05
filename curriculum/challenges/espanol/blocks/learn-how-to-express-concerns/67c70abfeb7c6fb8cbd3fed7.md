---
id: 67c70abfeb7c6fb8cbd3fed7
title: Tarea 57
challengeType: 19
dashedName: task-57
lang: en-US
---

<!-- (Audio) Maria: Hey James, can we talk about my latest meeting with Bob? -->

# --instructions--

Escucha el audio y responde a la pregunta de abajo.  

# --questions--

## --text--

¿Qué quiere discutir Maria con James?  

## --answers--

El horario de Bob para la semana.  

### --feedback--

Maria no menciona el horario de Bob.  

---

Su reunión más reciente con Bob.  

---

Una fecha límite futura del proyecto.  

### --feedback--

Maria no menciona una fecha límite, solo su reunión con Bob.  

---

La solicitud de presupuesto del cliente.  

### --feedback--

Maria no se refiere a una solicitud de cliente en esta oración.  

## --video-solution--

2  

# --explanation--

`Can we talk about...` se usa para introducir un tema de discusión. Es una forma educada de solicitar una conversación sobre algo importante. Por ejemplo:

`Can we talk about the changes to the project timeline?` - Esto significa que el hablante quiere discutir los ajustes en la línea de tiempo del proyecto.

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
      "filename": "B1_12-2.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 2.94
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
      "finishTime": 3.94,
      "dialogue": {
        "text": "Hey James, can we talk about my latest meeting with Bob?",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 4.44
    }
  ]
}
```
