---
id: 67dd5cfeacc0cad2fc967438
title: Tarea 16
challengeType: 19
dashedName: task-16
lang: en-US
---

<!-- (Audio) James: By the way, did we decide on the deadline for the first phase? -->

# --instructions--

Escucha el audio y responde a la pregunta de abajo.

# --questions--

## --text--

¿Qué quiere saber James?

## --answers--

Si acordaron la fecha límite para la primera fase.

---

Si el proyecto ha sido cancelado.

### --feedback--

James no menciona cancelar el proyecto.

---

Si Alice es responsable de la primera fase.

### --feedback--

James no está preguntando sobre responsabilidades.

---

Si el equipo terminó la fase final.

### --feedback--

James no habla sobre la fase final.

## --video-solution--

1

# --explanation--

`By the way` se usa para introducir un tema nuevo pero relacionado en la conversación. A menudo menciona algo que el hablante acaba de recordar o quiere verificar. Por ejemplo:

`By the way, have you seen the updated report?` – Esto introduce una nueva pregunta relacionada con lo que ya se estaba discutiendo.

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
