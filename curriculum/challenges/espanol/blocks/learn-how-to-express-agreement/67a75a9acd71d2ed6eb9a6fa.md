---
id: 67a75a9acd71d2ed6eb9a6fa
title: Tarea 20
challengeType: 22
dashedName: task-20
lang: en-US
---

<!-- (Audio) Linda: Absolutely. And I can also prepare some user scenarios for testing, so we can ensure a smooth user experience. -->

# --instructions--

Escucha el audio para completar la oración de abajo.

# --fillInTheBlank--

## --sentence--

`Absolutely. And I can also prepare some BLANK for testing, so we can ensure a smooth user experience.`

## --blanks--

`user scenarios`

### --feedback--

Esta frase de dos palabras se refiere a diferentes situaciones que representan cómo una persona podría interactuar con un producto.

# --explanation--

`User scenarios` se refiere a diferentes situaciones que describen cómo los usuarios interactúan con un producto para lograr un objetivo. Ayuda a los equipos a probar y mejorar la experiencia del usuario. Por ejemplo:

Creamos escenarios de usuario para ver cómo los clientes navegan el proceso de pago. – Esto significa que el equipo simuló diferentes formas en que los usuarios completan una compra para identificar cualquier problema.  

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Linda",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_10-1.mp3",
      "startTime": 1,
      "startTimestamp": 20.86,
      "finishTimestamp": 26.68
    }
  },
  "commands": [
    {
      "character": "Linda",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Linda",
      "startTime": 1,
      "finishTime": 6.82,
      "dialogue": {
        "text": "Absolutely. And I can also prepare some user scenarios for testing so we can ensure a smooth user experience.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 7.32
    }
  ]
}
```
