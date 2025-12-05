---
id: 67ee802cf777fd1dcdeac13a
title: Tarea 19
challengeType: 19
dashedName: task-19
lang: en-US
---

<!-- (audio) Sophie: No problem. You should also remember to use comments in your code. -->

# --instructions--

Escucha el audio y responde a la pregunta de abajo.

# --questions--

## --text--

¿Qué requisito menciona Sophie?

## --answers--

Mark debería eliminar las líneas de código innecesarias.

### --feedback--

Sophie no habla sobre eliminar código.

---

Mark debería reescribir completamente su código.

### --feedback--

Sophie no sugiere reescribir todo el código.

---

Mark debería evitar usar bucles.

### --feedback--

Sophie no dice nada sobre evitar los bucles.

---

Mark debería usar notas en su código.

## --video-solution--

4

# --explanation--

Un `comment` es una nota en el código que ayuda a explicar qué hace. Por ejemplo:

- `I added a comment to explain why this loop is necessary.` - Escribiste un comentario para describir por qué se usa cierto ciclo.

- Puedes usar comentarios para dejar notas sobre problemas que necesitan ser corregidos más adelante. - Los comentarios pueden añadirse en el código como recordatorios de cosas que deben ser arregladas o mejoradas.

Los comentarios ayudan a otros a entender el código y te recuerdan detalles importantes cuando revisas tu código más tarde.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_17-1.mp3",
      "startTime": 1,
      "startTimestamp": 25.54,
      "finishTimestamp": 28.48
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 4.02,
      "dialogue": {
        "text": "No problem. You should also remember to use comments in your code.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.52
    }
  ]
}
```
