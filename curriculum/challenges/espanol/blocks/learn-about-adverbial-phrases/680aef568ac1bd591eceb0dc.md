---
id: 680aef568ac1bd591eceb0dc
title: Tarea 98
challengeType: 22
dashedName: task-98
lang: en-US
---

<!-- (Audio) Riker: The ads cost more than we thought they would. -->

# --instructions--

Escucha el audio para completar la oración de abajo.

# --fillInTheBlank--

## --sentence--

`The BLANK cost more than we thought they would.`

## --blanks--

`ads`

### --feedback--

Esta es una forma abreviada de algo que significa mensajes o contenido creado para promover un producto, servicio o evento. Usa la forma plural.

# --explanation--

Un `ad` (abreviatura de `advertisement`) es un contenido diseñado para captar la atención de las personas y animarlas a comprar algo, usar un servicio o tomar acción. Los ads pueden aparecer en redes sociales, sitios web, televisión, radio y más. Por ejemplo:

- `They launched a new ad campaign for their latest product.` – Esto significa que la empresa creó y compartió contenido promocional para generar interés en un producto.

- `We saw a lot of online ads for the holiday sale.` – Esto significa que hubo muchos mensajes promocionales sobre la venta en sitios web o aplicaciones.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Riker",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_18-3.mp3",
      "startTime": 1,
      "startTimestamp": 30.7,
      "finishTimestamp": 32.46
    }
  },
  "commands": [
    {
      "character": "Riker",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Riker",
      "startTime": 1,
      "finishTime": 2.76,
      "dialogue": {
        "text": "The ads cost more than we thought they would.",
        "align": "center"
      }
    },
    {
      "character": "Riker",
      "opacity": 0,
      "startTime": 3.26
    }
  ]
}
```
