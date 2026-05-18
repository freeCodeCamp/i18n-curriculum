---
id: 663a47b234aefeabacb3cf75
title: Aufgabe 27
challengeType: 22
dashedName: task-27
lang: en-US
---

<!-- (Audio) Sophie: Sure. Tom is a tall guy with a friendly smile. -->

# --description--

Ein weiteres unverwechselbares Merkmal, das jemand haben kann, ist seine Körpergröße. Sie können zum Beispiel sagen, dass jemand `tall` oder `short` ist.
Eine `tall`-Person ist jemand, der über dem Durchschnitt in Bezug auf seine Körpergröße liegt. Das Gegenteil ist, wenn jemand `short` ist, also unter dem Durchschnitt.

# --fillInTheBlank--

## --sentence--

`Sure. Tom is a BLANK guy with a friendly smile.`

## --blanks--

`tall`

### --feedback--

Über dem Durchschnitt in Bezug auf die Körpergröße.

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
