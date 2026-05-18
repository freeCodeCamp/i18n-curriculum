---
id: 67efd8debbd3992137adbf7f
title: Aufgabe 91
challengeType: 22
dashedName: task-91
lang: en-US
---

<!-- (Audio) Brian: How's everything going on your end? -->

# --instructions--

Hören Sie sich die Audioaufnahme an und vervollständigen Sie den folgenden Satz.

# --fillInTheBlank--

## --sentence--

`How's everything going on your BLANK?`

## --blanks--

`end`

### --feedback--

Vorangestellt von `on your` bezieht sich dies auf die Situation, Seite oder den Ort einer bestimmten Person.

# --explanation--

`On your end` wird verwendet, um sich auf die Situation einer Person oder darauf zu beziehen, was bei ihr gerade passiert, oft im Gesprächs- oder Arbeitskontext. Zum Beispiel:

`Let me know if you need any help on your end.` – Das bedeutet, dass der Sprecher wissen möchte, ob die andere Person bei ihrer Arbeit oder Situation Hilfe benötigt.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Brian",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_15-3.mp3",
      "startTime": 1,
      "startTimestamp": 5.56,
      "finishTimestamp": 7.28
    }
  },
  "commands": [
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "startTime": 1,
      "finishTime": 2.72,
      "dialogue": {
        "text": "How's everything going on your end?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 3.22
    }
  ]
}
```
