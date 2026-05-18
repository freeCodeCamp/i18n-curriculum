---
id: 67dd5baa84d2fcc56c09dce3
title: Aufgabe 15
challengeType: 22
dashedName: task-15
lang: en-US
---

<!-- (Audio) James: By the way, did we decide on the deadline for the first phase? -->

# --instructions--

Hören Sie sich die Audioaufnahme an und vervollständigen Sie den Satz unten.

# --fillInTheBlank--

## --sentence--

`By the way, did we BLANK on the deadline for the first BLANK?`

## --blanks--

`decide`

### --feedback--

Das bedeutet, eine Wahl zu treffen oder zu einer Entscheidung über etwas zu kommen.

---

`phase`

### --feedback--

Dies bezieht sich auf eine bestimmte Phase oder einen Teil eines Prozesses oder Projekts.

# --explanation--

`To decide` bedeutet, nach Überlegung etwas auszuwählen. Zum Beispiel:

`We need to decide which tools to use for the project.` – Das bedeutet, die Werkzeuge nach Abwägung der Optionen auszuwählen.

Ein `phase` bezeichnet einen Teil oder Schritt in einem größeren Prozess. Zum Beispiel:

`We just finished the testing phase of the software.` – Das bedeutet, dass der Testschritt im Entwicklungsprozess abgeschlossen ist.

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
      "startTimestamp": 17.36,
      "finishTimestamp": 20.64
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
      "finishTime": 4.28,
      "dialogue": {
        "text": "By the way, did we decide on the deadline for the first phase?",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 4.78
    }
  ]
}
```
