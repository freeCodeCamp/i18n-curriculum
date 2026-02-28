---
id: 699eff4a6eefcef5c1d1059a
title: Tarea 24
challengeType: 22
dashedName: task-24
lang: es
---

<!-- (Audio) Basti: El dominio es q-u-e-t-z-a-l punto g-t. -->

# --description--

La palabra `dominio` se refiere a la parte principal de una dirección web, usualmente la sección que viene después del `@` en un correo electrónico o después de `www` en un sitio web.

Se usa comúnmente al dar o confirmar direcciones de correo electrónico y URLs. Por ejemplo:

`El dominio es gmail punto com.` – El dominio es gmail.com.

`¿Cuál es el dominio?` – ¿Cuál es el dominio?

# --instructions--

Escucha el audio para completar la oración de abajo.

# --fillInTheBlank--

## --sentence--

`El BLANK es q-u-e-t-z-a-l punto g-t.`

## --blanks--

`dominio`

### --feedback--

Este sustantivo se refiere a la parte principal de una dirección web o de correo electrónico.

# --explanation--

`Dominio` es un sustantivo usado para nombrar la parte del dominio de una dirección de correo electrónico o sitio web.

Aparece comúnmente cuando las personas escriben o confirman información de contacto digital.

# --scene--

```json
{
  "setup": {
    "background": "desk.png",
    "characters": [
      {
        "character": "Sebastián",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_basti_personal_details.mp3",
      "startTime": 1,
      "startTimestamp": 54.95,
      "finishTimestamp": 64.01
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
      "finishTime": 10.06,
      "dialogue": {
        "text": "El dominio es q-u-e-t-z-a-l punto g-t.",
        "align": "center"
      }
    },
    {
      "character": "Sebastián",
      "opacity": 0,
      "startTime": 10.56
    }
  ]
}
```
