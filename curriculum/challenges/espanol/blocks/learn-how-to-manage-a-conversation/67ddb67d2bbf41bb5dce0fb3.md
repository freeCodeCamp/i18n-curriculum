---
id: 67ddb67d2bbf41bb5dce0fb3
title: Tarea 36
challengeType: 19
dashedName: task-36
lang: en-US
---

<!-- (Audio) James: No problem. Talk to you later. -->

# --instructions--

Escucha el audio y responde a la pregunta de abajo.

# --questions--

## --text--

¿Qué podemos concluir de la respuesta de James?

## --answers--

Él necesita resolver un problema primero.

### --feedback--

James no dice nada sobre otro problema.

---

Está terminando la conversación de manera amigable.

---

Él quiere programar una reunión ahora.

### --feedback--

No hay ninguna mención de programar algo.

---

Él está pidiendo más ayuda.

### --feedback--

James no está haciendo una solicitud.

## --video-solution--

2

# --explanation--

En conversación, a menudo omites palabras cuando el significado es claro. En `Talk to you later`, el sujeto `I'll` (contracción de `I will`) se omite. La oración completa sería `I'll talk to you later`. Este tipo de omisión es común en el habla casual. Otro ejemplo:

`See you tomorrow!` - Esta es una forma más corta de decir `I'll see you tomorrow`.

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
      "startTimestamp": 44.74,
      "finishTimestamp": 46.5
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
      "finishTime": 2.76,
      "dialogue": {
        "text": "No problem. Talk to you later.",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 3.26
    }
  ]
}
```
