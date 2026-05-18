---
id: 67e5a6e34bfc4b5af2c00ddf
title: Aufgabe 51
challengeType: 22
dashedName: task-51
lang: en-US
---

<!-- (Audio) Jessica: Well, we've discovered a critical bug that might affect the user interface. -->

# --instructions--

Hören Sie sich das Audio an und vervollständigen Sie den Satz unten.

# --fillInTheBlank--

## --sentence--

`Well, we've discovered a BLANK bug that might BLANK the user interface.`

## --blanks--

`critical`

### --feedback--

Das bedeutet sehr ernst oder wichtig. Es wird oft verwendet, wenn etwas sofortige Aufmerksamkeit benötigt.

---

`affect`

### --feedback--

Das bedeutet, etwas zu verändern oder zu beeinflussen. Es beschreibt oft, wie eine Sache eine andere verändert.

# --explanation--

`Critical` bedeutet äußerst wichtig oder ernst. Zum Beispiel:

`We have a critical deadline tomorrow.` – Das bedeutet, die Frist ist sehr wichtig und darf nicht verpasst werden.

`To affect` bedeutet, Einfluss auf etwas zu haben oder eine Veränderung zu bewirken. Zum Beispiel:

`The new policy may affect employee performance.` – Das bedeutet, die Richtlinie könnte beeinflussen, wie Mitarbeitende arbeiten.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Jessica",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_15-2.mp3",
      "startTime": 1,
      "startTimestamp": 10.12,
      "finishTimestamp": 13.52
    }
  },
  "commands": [
    {
      "character": "Jessica",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jessica",
      "startTime": 1,
      "finishTime": 2.72,
      "dialogue": {
        "text": "Well, we've discovered a critical bug",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "startTime": 2.72,
      "finishTime": 4.4,
      "dialogue": {
        "text": "that might affect the user interface.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "opacity": 0,
      "startTime": 4.9
    }
  ]
}
```
