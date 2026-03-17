---
id: 663a47b234aefeabacb3cf75
title: Attività 27
challengeType: 22
dashedName: task-27
lang: en-US
---

<!-- (Audio) Sophie: Sure. Tom is a tall guy with a friendly smile. -->

# --description--

Un'altra caratteristica distintiva che una persona può avere è la sua altezza. Puoi dire, per esempio, che qualcuno è `tall` o `short`.
Una persona `tall` è qualcuno che supera la media in termini di altezza. L'opposto si ha quando qualcuno è `short`, cioè quando questa persona è sotto la media.

# --fillInTheBlank--

## --sentence--

`Sure. Tom is a BLANK guy with a friendly smile.`

## --blanks--

`tall`

### --feedback--

Sopra la media in termini di altezza.

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
