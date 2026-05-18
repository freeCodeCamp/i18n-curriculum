---
id: 67ddafcebec26b8e5f46745b
title: Aufgabe 31
challengeType: 22
dashedName: task-31
lang: en-US
---

<!-- (Audio) James: Anything else we should discuss before our next meeting? -->

# --instructions--

Hören Sie sich die Audioaufnahme an und vervollständigen Sie den Satz unten.

# --fillInTheBlank--

## --sentence--

`Anything BLANK we should discuss before our next meeting?`

## --blanks--

`else`

### --feedback--

Das bedeutet „zusätzlich zu etwas“ oder „außer dem, was bereits erwähnt wurde“.

# --explanation--

`Else` im Ausdruck `anything else` wird verwendet, um zu fragen, ob es etwas zusätzlich zu dem gibt, was bereits gesagt oder getan wurde. Zum Beispiel:

`Would you like anything else with your order?` – Hier fragen Sie, ob die andere Person etwas zusätzlich zu dem möchte, was sie bereits verlangt hat.

# --scene--

```json
{
  "setup": {
    "background": "interview-room2.png",
    "characters": [
      {
        "character": "James",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_15-1.mp3",
      "startTime": 1,
      "startTimestamp": 39.22,
      "finishTimestamp": 42.22
    }
  },
  "commands": [
    {
      "character": "James",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "James",
      "startTime": 1,
      "finishTime": 4,
      "dialogue": {
        "text": "Anything else we should discuss before our next meeting?",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 4.5
    }
  ]
}
```
