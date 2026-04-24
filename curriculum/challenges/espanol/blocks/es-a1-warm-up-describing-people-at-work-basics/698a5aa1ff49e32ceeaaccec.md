---
id: 698a5aa1ff49e32ceeaaccec
title: Tarea 6
challengeType: 22
dashedName: task-6
lang: es
---

<!-- (Audio) Camila: Número de teléfono -->

# --description--

Ahora Camila practica cómo decir `número de teléfono` en español, que significa "número de teléfono".

Fíjate que la palabra `número` lleva tilde en la letra `u` y la palabra `teléfono` lleva tilde en la segunda letra `e`.

# --instructions--

Escucha el audio y escribe la palabra abajo.

# --fillInTheBlank--

## --sentence--

`BLANK de BLANK`

## --blanks--

`Número`

### --feedback--

Esta palabra significa literalmente "número" en español. Recuerda escribir la tilde en la letra `u` y poner en mayúscula la primera letra.

---

`teléfono`

### --feedback--

Esta palabra significa literalmente "teléfono" en español. Recuerda escribir la tilde en la segunda letra `e`.

# --explanation--

`Número de teléfono` significa "número de teléfono" en español.

# --scene--

```json
{
  "setup": {
    "background": "company2-dining.png",
    "characters": [
      {
        "character": "Camila",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_warm_up_describing_people_at_work.mp3",
      "startTime": 1,
      "startTimestamp": 10.45,
      "finishTimestamp": 12.39
    }
  },
  "commands": [
    {
      "character": "Camila",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Camila",
      "startTime": 1,
      "finishTime": 2.94,
      "dialogue": {
        "text": "Número de teléfono",
        "align": "center"
      }
    },
    {
      "character": "Camila",
      "opacity": 0,
      "startTime": 3.44
    }
  ]
}
```
