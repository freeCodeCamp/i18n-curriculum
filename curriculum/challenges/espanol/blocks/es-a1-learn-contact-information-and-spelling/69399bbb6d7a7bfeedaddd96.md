---
id: 69399bbb6d7a7bfeedaddd96
title: Tarea 13
challengeType: 22
dashedName: task-13
lang: es
---

<!-- (Audio) Basti: Me llamo Sebastián Ávila Gómez. -->

# --description--

El verbo `escribir` significa "to write". Cuando los hablantes de español quieren explicar cómo se escribe o se deletrea una palabra, a menudo usan la expresión `se escribe`.

Esta forma proviene del verbo `escribir` y se usa comúnmente antes de deletrear nombres, correos electrónicos u otras palabras letra por letra. Por ejemplo:

- `Carlos se escribe C-a-r-l-o-s.` – Carlos se escribe C-a-r-l-o-s.

- `Mi apellido se escribe con z.` – Mi apellido se escribe con z.

# --instructions--

Escucha el audio para completar la oración de abajo.

# --fillInTheBlank--

## --sentence--

`Hola, buenas noches.`

`Me llamo Sebastián Ávila Gómez.`

`Sebastián BLANK BLANK S-e-b-a-s-t-i-á-n, con acento en la última a.`

## --blanks--

`se`

### --feedback--

Esta pequeña palabra es parte de una expresión común usada al explicar cómo se escribe algo.

---

`escribe`

### --feedback--

Esta forma verbal proviene de `escribir` y se usa cuando se deletrea una palabra.

# --explanation--

`Se escribe` se usa cuando se explica cómo se escribe una palabra o un nombre.

Proviene del verbo `escribir` y se usa comúnmente antes de deletrear algo letra por letra.

# --scene--

```json
{
  "setup": {
    "background": "interview-room2.png",
    "characters": [
      {
        "character": "Sebastián",
        "position": {
          "x": 50,
          "y": 25,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_basti_personal_details.mp3",
      "startTime": 1,
      "startTimestamp": 0.81,
      "finishTimestamp": 16.5
    }
  },
  "commands": [
    {
      "character": "Sebastián",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sebastián",
      "startTime": 1,
      "finishTime": 2.41,
      "dialogue": {
        "text": "Hola, buenas noches.",
        "align": "center"
      }
    },
    {
      "character": "Sebastián",
      "startTime": 3.32,
      "finishTime": 6.25,
      "dialogue": {
        "text": "Me llamo Sebastián Ávila Gómez.",
        "align": "center"
      }
    },
    {
      "character": "Sebastián",
      "startTime": 7.36,
      "finishTime": 16.69,
      "dialogue": {
        "text": "Sebastián se escribe s-e-b-a-s-t-i-á-n, con acento en la última a.",
        "align": "center"
      }
    },
    {
      "character": "Sebastián",
      "opacity": 0,
      "startTime": 17.19
    }
  ]
}
```
