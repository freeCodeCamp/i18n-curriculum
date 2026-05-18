---
id: 67acaebb95dabb0ee05500f7
title: Aufgabe 21
challengeType: 22
dashedName: task-21
lang: en-US
---

<!-- (Audio) Anna: If people are working with outdated computers, it can be a setback for productivity. -->

# --instructions--

Hören Sie sich die Audioaufnahme an und vervollständigen Sie den folgenden Satz.

# --fillInTheBlank--

## --sentence--

`If people are working with outdated computers, it can be a BLANK for productivity.`

## --blanks--

`setback`

### --feedback--

Dieses Wort bedeutet ein Hindernis oder etwas, das den Fortschritt verlangsamt.

# --explanation--

Ein `setback` ist etwas, das den Fortschritt verzögert oder verhindert. Langsame oder ineffiziente Computer können dazu führen, dass Aufgaben länger dauern und die Effizienz sinkt. Zum Beispiel:

- `The project faced a setback due to a critical bug.` – Das Projekt wurde wegen eines schwerwiegenden Softwareproblems verzögert oder hatte Schwierigkeiten.

- `Losing important data was a major setback for the team.` – Datenverlust verursachte Probleme und verlangsamte die Arbeit des Teams.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Anna",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_11-1.mp3",
      "startTime": 1,
      "startTimestamp": 35.78,
      "finishTimestamp": 39.68
    }
  },
  "commands": [
    {
      "character": "Anna",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Anna",
      "startTime": 1,
      "finishTime": 4.9,
      "dialogue": {
        "text": "If people are working with outdated computers, it can be a setback for productivity.",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 5.4
    }
  ]
}
```
