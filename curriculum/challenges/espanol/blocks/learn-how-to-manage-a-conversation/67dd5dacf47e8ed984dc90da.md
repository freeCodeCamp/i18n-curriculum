---
id: 67dd5dacf47e8ed984dc90da
title: Tarea 17
challengeType: 19
dashedName: task-17
showSpeakingButton: true
lang: en-US
---

<!-- (Audio) James: By the way, did we decide on the deadline for the first phase? -->

<!-- SPEAKING -->

# --instructions--

Escucha el audio y responde a la pregunta de abajo.

# --questions--

## --text--

¿Cómo podría Alice responder brevemente que no hay ninguna decisión respecto a la fecha límite en este momento?

## --answers--

`Not yet.`

### --audio-id--

en-b1-67dd5dacf47e8ed984dc90da-SP1

---

`We're still looking for it.`

### --audio-id--

en-b1-67dd5dacf47e8ed984dc90da-SP2

### --feedback--

Esto no está relacionado con la pregunta sobre cómo establecer la fecha límite.

## --video-solution--

1

# --explanation--

`Not yet.` es una forma corta y natural de decir que algo no ha ocurrido o completado hasta el momento presente, pero puede ocurrir en el futuro. Por ejemplo:

- Persona 1: `Have you sent the email?` - Aquí, la persona está preguntando sobre un correo electrónico que debería ser enviado.

- Persona 2: `Not yet.` – Esto significa que el correo electrónico no ha sido enviado, pero que la persona aún planea enviarlo.

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
