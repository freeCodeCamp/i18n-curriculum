---
id: 67ed38f77f1fbd02acdcf5ff
title: Aufgabe 53
challengeType: 22
dashedName: task-53
lang: en-US
---

<!-- (Audio) Lisa: Sure, Mark. What's going on? -->

# --instructions--

Hören Sie sich die Audioaufnahme an und vervollständigen Sie den folgenden Satz.

# --fillInTheBlank--

## --sentence--

`Sure, Mark. What's BLANK?`

## --blanks--

`going on`

### --feedback--

Diese zweiteilige Phrase wird verwendet, um zu fragen, was gerade passiert oder wie die Lage ist. Das erste Wort endet mit `-ing`.

# --explanation--

`What's going on?` ist eine gebräuchliche Art, jemanden zu fragen, was gerade passiert, wie die Lage ist oder welches Problem beziehungsweise Ereignis stattfindet. Zum Beispiel:

`What's going on at the meeting?` – Jemand fragt, was während der Besprechung passiert.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Lisa",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_16-2.mp3",
      "startTime": 1,
      "startTimestamp": 7.62,
      "finishTimestamp": 9.1
    }
  },
  "commands": [
    {
      "character": "Lisa",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Lisa",
      "startTime": 1,
      "finishTime": 2.48,
      "dialogue": {
        "text": "Sure, Mark. What's going on?",
        "align": "center"
      }
    },
    {
      "character": "Lisa",
      "opacity": 0,
      "startTime": 2.98
    }
  ]
}
```
