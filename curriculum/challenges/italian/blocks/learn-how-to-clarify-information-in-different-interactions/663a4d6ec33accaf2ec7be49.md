---
id: 663a4d6ec33accaf2ec7be49
title: Attività 28
challengeType: 22
dashedName: task-28
lang: en-US
---

<!-- (Audio) Sophie: Sure. Tom is a tall guy with a friendly smile. -->

# --description--

Un `smile` è ciò che succede quando sollevi gli angoli della bocca per mostrare felicità. È qualcosa che fai con il viso quando sei felice o vuoi essere gentile.

`Friendly` descrive qualcuno che è gentile, simpatico e con cui è facile parlare. Una persona amichevole fa sentire gli altri a proprio agio e felici.

`A friendly smile` è un sorriso che mostra che sei gentile e accogliente. Fa sentire bene gli altri e mostra che vuoi essere amico.

Ascolta il dialogo e completa gli spazi vuoti.

# --fillInTheBlank--

## --sentence--

`Sure. Tom is a tall guy with a BLANK BLANK.`

## --blanks--

`friendly`

### --feedback--

Questo spazio vuoto descrive qualcuno che è gentile, con cui è facile parlare e accogliente.

---

`smile`

### --feedback--

L'azione che fai quando vuoi mostrare felicità con la bocca.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "4.3-2.mp3",
      "startTime": 1,
      "startTimestamp": 15.12,
      "finishTimestamp": 17.74
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
      "finishTime": 3.62,
      "dialogue": {
        "text": "Sure. Tom is a tall guy with a friendly smile.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.12
    }
  ]
}
```
