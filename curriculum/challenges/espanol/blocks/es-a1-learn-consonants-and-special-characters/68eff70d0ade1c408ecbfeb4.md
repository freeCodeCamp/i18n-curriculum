---
id: 68eff70d0ade1c408ecbfeb4
title: Tarea 6
challengeType: 22
dashedName: task-6
lang: es
---

<!-- (Audio) Julieta: d -->

# --description--

La letra `d` se llama `de` (se pronuncia `deh`).

Al comienzo de una palabra o después de `l` o `n`, su sonido es más fuerte, como en la palabra `dos` ("two"). Sin embargo, es más suave entre vocales, como en la palabra `idea` ("idea").

Un ejemplo es `doctor` ("doctor").

# --fillInTheBlank--

## --sentence--

`Write the letter: BLANK`

## --blanks--

`d`

### --feedback--

Esta es la cuarta letra del alfabeto.

# --scene--

```json
{
  "setup": {
    "background": "living-room.png",
    "characters": [
      {
        "character": "Julieta",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_alphabet.mp3",
      "startTime": 1,
      "startTimestamp": 8.39,
      "finishTimestamp": 9.39
    }
  },
  "commands": [
    {
      "character": "Julieta",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Julieta",
      "startTime": 1,
      "finishTime": 2,
      "dialogue": {
        "text": "d",
        "align": "center"
      }
    },
    {
      "character": "Julieta",
      "opacity": 0,
      "startTime": 2.5
    }
  ]
}
```
