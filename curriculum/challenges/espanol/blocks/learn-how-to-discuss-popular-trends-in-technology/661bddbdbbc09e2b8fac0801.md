---
id: 661bddbdbbc09e2b8fac0801
title: Tarea 76
challengeType: 22
dashedName: task-76
lang: en-US
---

<!-- (Audio) Alice: Also, it's used for identity verification at airports and secure facilities. -->

# --description--

La preposición `at` indica un punto en un mapa. Te indica una ubicación o posición específica. Te ayuda a entender dónde está ocurriendo algo o dónde está alguien.

Ejemplos:

`We'll meet at the coffee shop.` (en esta oración, `at` se utiliza para especificar el lugar donde tendrá lugar la reunión - la cafetería).

`I'll be waiting for you at the bus stop.` (`at` se utiliza aquí para indicar el lugar donde alguien estará esperando - la parada del autobús). 

Escucha el audio y llena los espacios en blanco.

# --fillInTheBlank--

## --sentence--

`Also, it's used for identity verification BLANK airports and secure facilities.`

## --blanks--

`at`

### --feedback--

La preposición utilizada para ayudarte a entender dónde está algo o sucede algo.

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Alice",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "4.2-4.mp3",
      "startTime": 1,
      "startTimestamp": 15.22,
      "finishTimestamp": 19.04
    }
  },
  "commands": [
    {
      "character": "Alice",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Alice",
      "startTime": 1,
      "finishTime": 4.82,
      "dialogue": {
        "text": "Also, it's used for identity verification at airports and secure facilities.",
        "align": "center"
      }
    },
    {
      "character": "Alice",
      "opacity": 0,
      "startTime": 5.32
    }
  ]
}
```
