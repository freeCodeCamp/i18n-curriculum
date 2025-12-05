---
id: 680ae6fa6f3bb82a094cffcf
title: Tarea 91
challengeType: 19
dashedName: task-91
lang: en-US
---

<!-- (Audio) Riker: The UK and Germany saw the most improvement, even more than we expected. -->

<!-- SPEAKING -->

# --instructions--

Escucha el audio y responde a la pregunta de abajo.

# --questions--

## --text--

¿Qué podría decir María para mostrar que está positivamente sorprendida por los resultados?

## --answers--

`That's impressive.`

---

`Maybe we should lower our expectations.`

### --feedback--

Esto muestra una falta de confianza, no entusiasmo por los resultados.

## --video-solution--

1

# --explanation--

`Impressive` significa que algo merece atención, admiración o respeto porque es excepcionalmente bueno, grande o efectivo. Por ejemplo:

`Your presentation was really impressive! It covered everything clearly and confidently.` – Esto significa que la presentación fue de alta calidad y dejó un fuerte impacto positivo.

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
      "startTimestamp": 18.42,
      "finishTimestamp": 23.1
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
      "finishTime": 3.32,
      "dialogue": {
        "text": "The UK and Germany saw the most improvement,",
        "align": "center"
      }
    },
    {
      "character": "Riker",
      "startTime": 3.72,
      "finishTime": 5.68,
      "dialogue": {
        "text": "even more than we expected.",
        "align": "center"
      }
    },
    {
      "character": "Riker",
      "opacity": 0,
      "startTime": 6.18
    }
  ]
}
```
