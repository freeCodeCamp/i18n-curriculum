---
id: 67caefd11f4cf72cbf5bdd46
title: Tarea 37
challengeType: 22
dashedName: task-37
lang: en-US
---

<!-- (audio) Jake: Not really. SafeGuard is more focused on security, so it might not integrate as easily with other platforms. -->

# --instructions--

Escucha el audio para completar la oración de abajo.

# --fillInTheBlank--

## --sentence--

`BLANK. SafeGuard is more focused on security, so it might not integrate as easily with other platforms.`

## --blanks--

`Not really`

### --feedback--

Esta frase de dos palabras es una forma informal de decir "no" o "no exactamente". A menudo se usa cuando quieres estar en desacuerdo de manera educada o dar una respuesta más suave y menos directa. La primera letra de la primera palabra está en mayúscula.

# --explanation--

`Not really` se usa comúnmente para dar una respuesta negativa, pero en un tono más suave. Es más informal que simplemente decir `No`. Por ejemplo:

Persona 1: `Do you think this software is user-friendly?`

Persona 2: `Not really.`

Esto significa que no es muy amigable para el usuario, pero el hablante podría no estar completamente seguro.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Jake",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_13-1.mp3",
      "startTime": 1,
      "startTimestamp": 56.88,
      "finishTimestamp": 62.58
    }
  },
  "commands": [
    {
      "character": "Jake",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jake",
      "startTime": 1,
      "finishTime": 6.7,
      "dialogue": {
        "text": "Not really. Safeguard is more focused on security, so it might not integrate as easily with other platforms.",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "opacity": 0,
      "startTime": 7.2
    }
  ]
}
```
