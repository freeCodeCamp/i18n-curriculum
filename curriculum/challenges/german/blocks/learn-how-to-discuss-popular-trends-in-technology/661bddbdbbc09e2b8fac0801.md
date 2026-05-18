---
id: 661bddbdbbc09e2b8fac0801
title: Aufgabe 76
challengeType: 22
dashedName: task-76
lang: en-US
---

<!-- (Audio) Alice: Also, it's used for identity verification at airports and secure facilities. -->

# --description--

Die Präposition `at` gibt einen Punkt auf einer Karte an. Sie zeigt Ihnen einen bestimmten Ort oder eine Position. Sie hilft Ihnen zu verstehen, wo etwas passiert oder wo sich jemand befindet.

Beispiele:

`We'll meet at the coffee shop.` (in diesem Satz wird `at` verwendet, um den Ort anzugeben, an dem das Treffen stattfinden wird – das Café).

`I'll be waiting for you at the bus stop.` (`at` wird hier verwendet, um den Ort anzugeben, an dem jemand warten wird – die Bushaltestelle).

Hören Sie sich den Satz an und füllen Sie die Lücke aus.

# --fillInTheBlank--

## --sentence--

`Also, it's used for identity verification BLANK airports and secure facilities.`

## --blanks--

`at`

### --feedback--

Die Präposition, die Ihnen hilft zu verstehen, wo etwas ist oder passiert.

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
