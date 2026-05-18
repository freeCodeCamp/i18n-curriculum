---
id: 68eff70d0ade1c408ecbfeb4
title: Aufgabe 6
challengeType: 22
dashedName: task-6
lang: es
---

<!-- (Audio) Julieta: d -->

# --description--

Der Buchstabe `d` wird `de` genannt.

Am Anfang eines Wortes oder nach `l` oder `n` ist sein Laut stärker, wie im Wort `dos` („two“). Dazwischen, zwischen Vokalen, ist er weicher, wie im Wort `idea` („idea“).

Ein Beispiel ist `doctor` („doctor“).

# --instructions--

Hören Sie sich die Audioaufnahme an und schreiben Sie den Buchstaben in das untenstehende Leerfeld.

# --fillInTheBlank--

## --sentence--

`BLANK`

## --blanks--

`d`

### --feedback--

Dies ist der vierte Buchstabe im Alphabet.

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
