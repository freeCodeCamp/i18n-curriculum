---
id: 657cfddfaca4b58b1279aaf9
title: Tarea 74
challengeType: 22
dashedName: task-74
lang: en-US
---

<!-- (audio) Sophie: Maria thinks challenges are positive. She encourages us to find solutions together. -->

# --description--

To `encourage` means to give support, confidence, o esperanza a alguien. Es lo que hace un buen entrenador para motivar a su equipo a dar lo mejor de sí.

# --instructions--

Escucha el audio para completar la oración de abajo.

# --fillInTheBlank--

## --sentence--

`Maria thinks challenges are positive. She BLANK us to find solutions together.`

## --blanks--

`encourages`

### --feedback--

Este verbo trata de motivar o inspirar a alguien a hacer algo. Es similar a animar a alguien. No olvides el final `-s`.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "1.3-3.mp3",
      "startTime": 1,
      "startTimestamp": 41.96,
      "finishTimestamp": 46.26
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 5.30,
      "dialogue": {
        "text": "Maria thinks challenges are positive. She encourages us to find solutions together.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 5.80
    }
  ]
}
```
