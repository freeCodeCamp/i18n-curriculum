---
id: 6939b0e1fac80c2b4fdf8ded
title: Tarea 17
challengeType: 22
dashedName: task-17
lang: es
---

<!-- (Audio) Basti: Se escribe B-a-s-t-i. -->

# --description--

En esta tarea, Basti deletrea su apodo letra por letra.

# --instructions--

Escucha el audio para completar la oración de abajo.

# --fillInTheBlank--

## --sentence--

`Se escribe BLANK a s BLANK BLANK.`

## --blanks--

`B`

### --feedback--

Esta es la primera letra que Basti usa para empezar a deletrear su apodo.

---

`t`

### --feedback--

Esta letra viene después de la "s" en "Basti".

---

`i`

### --feedback--

Esta es la letra final en "Basti". Escucha el sonido vocálico al final.

# --explanation--

Basti deletrea su apodo como `B-a-s-t-i`.

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
      "startTimestamp": 22.6,
      "finishTimestamp": 27.5
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
      "finishTime": 5.6,
      "dialogue": {
        "text": "Se escribe B-a-s-t-i.",
        "align": "center"
      }
    },
    {
      "character": "Sebastián",
      "opacity": 0,
      "startTime": 5.9
    }
  ]
}
```
