---
id: 68eff70d0ade1c408ecbfeb4
title: Attività 6
challengeType: 22
dashedName: task-6
lang: es
---

<!-- (Audio) Julieta: d -->

# --description--

La lettera `d` si chiama `de`.

All'inizio di una parola o dopo `l` o `n`, il suo suono è più forte, come nella parola `dos` ("two"). Tuttavia, è più dolce tra le vocali, come nella parola `idea` ("idea").

Un esempio è `doctor` ("doctor").

# --instructions--

Ascolta l'audio e scrivi la lettera nello spazio vuoto qui sotto.

# --fillInTheBlank--

## --sentence--

`BLANK`

## --blanks--

`d`

### --feedback--

Questa è la quarta lettera dell'alfabeto.

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
          "y": 18,
          "z": 1.5
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
