---
id: 67ee6d7bcacdc02ff7d9beb2
title: Tarea 69
challengeType: 22
dashedName: task-69
lang: en-US
---

<!-- (Audio) Lisa: It could be a JavaScript issue. Maybe there's a problem with the event handling. -->

# --instructions--

Escucha el audio para completar la oración de abajo.

# --fillInTheBlank--

## --sentence--

`It could be a JavaScript issue. Maybe BLANK a BLANK BLANK the BLANK.`

## --blanks--

`there's`

### --feedback--

Esta palabra se usa para hablar sobre la existencia de algo o para decir que algo está presente o sucediendo. Es la contracción de `there is`.

---

`problem`

### --feedback--

Esta palabra se refiere a un problema o dificultad que necesita ser resuelto o corregido.

---

`with`

### --feedback--

Esta preposición muestra la relación o conexión entre dos cosas.

---

`event handling`

### --feedback--

Esta frase de dos palabras se refiere a la forma en que el software o los sitios web responden a acciones, como clics o pulsaciones de teclas, realizadas por el usuario. La segunda palabra termina con `-ing`.

# --explanation--

`There's a problem with` se usa para describir que algo no está funcionando correctamente. Significa que hay un problema o dificultad relacionado con una cosa específica. Por ejemplo:

`There's a problem with the network.` – Esto significa que la red no está funcionando correctamente.

`Event handling` se refiere a cómo un programa o sitio web gestiona las acciones del usuario como clics, pulsaciones de teclado o movimientos del ratón. Por ejemplo:

`There's an issue with event handling.` - Esto significa que el software no responde correctamente a las acciones del usuario.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Lisa",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_16-2.mp3",
      "startTime": 1,
      "startTimestamp": 31.38,
      "finishTimestamp": 35.2
    }
  },
  "commands": [
    {
      "character": "Lisa",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Lisa",
      "startTime": 1,
      "finishTime": 4.82,
      "dialogue": {
        "text": "It could be a JavaScript issue. Maybe there's a problem with the event handling.",
        "align": "center"
      }
    },
    {
      "character": "Lisa",
      "opacity": 0,
      "startTime": 5.32
    }
  ]
}
```
