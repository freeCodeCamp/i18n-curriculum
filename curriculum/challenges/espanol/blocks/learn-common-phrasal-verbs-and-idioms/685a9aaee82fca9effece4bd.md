---
id: 685a9aaee82fca9effece4bd
title: Tarea 130
challengeType: 22
dashedName: task-130
lang: en-US
---

<!-- (Audio) Bob: Yes, let's do that. It'll help us manage the attendee list better. Can you draft the invitation? -->

# --instructions--

Escucha el audio para completar la oración de abajo.

# --fillInTheBlank--

## --sentence--

`Yes, let's do that. It'll help us manage the BLANK list better. Can you draft the invitation?`

## --blanks--

`attendee`

### --feedback--

Esto se refiere a una persona que está presente en un evento o reunión.

# --explanation--

Un `attendee` es alguien que asiste o está presente en un evento, como una reunión, seminario o conferencia. Por ejemplo:

Cada asistente recibió un paquete de bienvenida cuando llegó. – Esto significa que cada persona que vino al evento recibió un paquete.

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
      "filename": "B1_24-3.mp3",
      "startTime": 1,
      "startTimestamp": 33.78,
      "finishTimestamp": 39.42
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
      "finishTime": 3.64,
      "dialogue": {
        "text": "Yes, let's do that. It'll help us manage",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "startTime": 3.64,
      "finishTime": 6.64,
      "dialogue": {
        "text": "the attendee list better. Can you draft the invitation?",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 7.14
    }
  ]
}
```
