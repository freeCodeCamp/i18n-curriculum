---
id: 67325f4cff0ac10ffe3e5bec
title: Tarea 114
challengeType: 19
dashedName: task-114
lang: en-US
---

<!-- (audio) James: It's interesting to think about it. I used to just write code without thinking much about the end user. -->

# --instructions--

Escucha el audio y responde a la pregunta de abajo.

# --questions--

## --text--

¿Qué está describiendo James sobre su enfoque para programar?

## --answers--

Un hábito que tenía en el pasado.

---

Algo que él planea hacer en el futuro.

### --feedback--

James no está hablando de planes futuros; está reflexionando sobre algo que hizo antes.

---

Un hábito que continúa ahora.

### --feedback--

James usa la frase `used to`, que muestra que está describiendo algo que hacía en el pasado, no actualmente.

---

Un proceso que él nunca siguió.

### --feedback--

James describe un hábito que tuvo una vez, así que no es algo que nunca hizo.

## --video-solution--

1

# --explanation--

James dice, `I used to just write code without thinking much about the end user.` 

`Used to` indica un hábito o acción pasada que ya no es verdad. 

Esta oración muestra que él anteriormente escribió código sin considerar al usuario final, pero desde entonces ha cambiado su enfoque.

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
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
      "filename": "B1_3-3.mp3",
      "startTime": 1,
      "startTimestamp": 29.28,
      "finishTimestamp": 34.44
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
      "finishTime": 2.84,
      "dialogue": {
        "text": "It's interesting to think about it.",
        "align": "center"
      }
    },
    {
      "character": "James",
      "startTime": 2.92,
      "finishTime": 6.16,
      "dialogue": {
        "text": "I used to just write code without thinking much about the end user,",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 6.66
    }
  ]
}
```
