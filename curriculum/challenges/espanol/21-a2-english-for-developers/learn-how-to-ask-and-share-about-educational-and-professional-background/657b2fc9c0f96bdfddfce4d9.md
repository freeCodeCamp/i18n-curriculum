---
id: 657b2fc9c0f96bdfddfce4d9
title: Task 90
challengeType: 22
dashedName: task-90
---

<!-- (Audio) Anna: I took a course in organizational psychology, and it piqued my interest in the workplace and employee dynamics. -->

# --description--

En este ejercicio, explorarás la frase `pique one's interest`. Esta frase significa estimular o despertar la curiosidad o el interés de alguien en algo. A menudo implica que el tema es tan interesante que llama la atención y hace que uno quiera aprender más sobre él. Junto a esta frase, llenarás los espacios en blanco con palabras familiares que ya has aprendido.

# --fillInTheBlank--

## --sentence--

`I BLANK a course in organizational BLANK, and it BLANK my interest in the workplace and employee dynamics.`

## --blanks--

`took`

### --feedback--

Esta palabra se refiere a la acción de participar o completar un curso.

---

`psychology`

### --feedback--

Esta palabra describe el estudio de la mente y el comportamiento, particularmente en un entorno laboral en este contexto.

---

`piqued`

### --feedback--

Esta palabra significa despertar o estimular el interés o la curiosidad. Debe correctamente usar su tiempo pasado simple.

# --scene--

```json
{
  "setup": {
    "background": "company2-parking.png",
    "characters": [
      {
        "character": "Anna",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.1-5.mp3",
      "startTime": 1,
      "startTimestamp": 13.14,
      "finishTimestamp": 18.62
    }
  },
  "commands": [
    {
      "character": "Anna",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Anna",
      "startTime": 1,
      "finishTime": 6.48,
      "dialogue": {
        "text": "I took a course in organizational psychology and it piqued my interest in the workplace and employee dynamics.",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 6.98
    }
  ]
}
```
