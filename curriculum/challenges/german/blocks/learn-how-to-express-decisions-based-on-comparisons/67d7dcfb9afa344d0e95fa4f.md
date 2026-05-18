---
id: 67d7dcfb9afa344d0e95fa4f
title: Aufgabe 122
challengeType: 22
dashedName: task-122
lang: en-US
---

<!-- (Audio) Sarah: However, outsourcing can lead to communication issues, which might delay the project. -->

# --instructions--

Hören Sie sich die Audioaufnahme an und vervollständigen Sie den folgenden Satz.

# --fillInTheBlank--

## --sentence--

`However, outsourcing can BLANK communication issues, which might BLANK the project.`

## --blanks--

`lead to`

### --feedback--

Dieser zweiteilige Ausdruck bedeutet, etwas zu verursachen oder dazu zu führen, dass etwas passiert.

---

`delay`

### --feedback--

Das bedeutet, etwas länger dauern zu lassen als erwartet.

# --explanation--

`Lead to` bedeutet, etwas zu verursachen oder zu einem bestimmten Ergebnis zu führen. Zum Beispiel:

`Poor planning can lead to missed deadlines.` – Das bedeutet, dass wenn die Planung nicht gut gemacht wird, Termine möglicherweise nicht eingehalten werden.

`Delay` bedeutet, etwas länger dauern zu lassen als erwartet oder zu verschieben. Zum Beispiel:

`The software release was delayed due to unexpected bugs.` – Das bedeutet, dass der Start wegen technischer Probleme verschoben wurde.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_13-3.mp3",
      "startTime": 1,
      "startTimestamp": 46.98,
      "finishTimestamp": 51.34
    }
  },
  "commands": [
    {
      "character": "Sarah",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sarah",
      "startTime": 1,
      "finishTime": 5.36,
      "dialogue": {
        "text": "However, outsourcing can lead to communication issues which might delay the project.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 5.86
    }
  ]
}
```
