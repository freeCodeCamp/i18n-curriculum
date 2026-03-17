---
id: 661bddbdbbc09e2b8fac0801
title: Attività 76
challengeType: 22
dashedName: task-76
lang: en-US
---

<!-- (Audio) Alice: Also, it's used for identity verification at airports and secure facilities. -->

# --description--

La preposizione `at` indica un punto su una mappa. Ti dice una posizione o un luogo specifico. Ti aiuta a capire dove sta succedendo qualcosa o dove si trova qualcuno.

Esempi:

`We'll meet at the coffee shop.` (in questa frase, `at` è usata per specificare il luogo dove si terrà l'incontro - il bar).

`I'll be waiting for you at the bus stop.` (`at` è usata qui per indicare il luogo dove qualcuno aspetterà - la fermata dell'autobus).

Ascolta la frase e completa lo spazio vuoto.

# --fillInTheBlank--

## --sentence--

`Also, it's used for identity verification BLANK airports and secure facilities.`

## --blanks--

`at`

### --feedback--

La preposizione usata per aiutarti a capire dove qualcosa si trova o accade.

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Alice",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "4.2-4.mp3",
      "startTime": 1,
      "startTimestamp": 15.22,
      "finishTimestamp": 19.04
    }
  },
  "commands": [
    {
      "character": "Alice",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Alice",
      "startTime": 1,
      "finishTime": 4.82,
      "dialogue": {
        "text": "Also, it's used for identity verification at airports and secure facilities.",
        "align": "center"
      }
    },
    {
      "character": "Alice",
      "opacity": 0,
      "startTime": 5.32
    }
  ]
}
```
