---
id: 657dbdae2bd6f60bda3226cc
title: Aufgabe 81
challengeType: 22
dashedName: task-81
lang: en-US
---

<!-- (audio) Tom: Tell me about our team meetings, Sophie. Do they happen every week? -->

# --description--

Wenn Sie wissen möchten, wie oft etwas passiert, können Sie `every` gefolgt von einem Zeitabschnitt wie `day`, `week` oder `year` verwenden.

Im Dialog fragt Tom nach der Häufigkeit der Team-Meetings.

# --instructions--

Hören Sie sich die Audioaufnahme an und vervollständigen Sie den folgenden Satz.

# --fillInTheBlank--

## --sentence--

`Tell me about our team meetings, Sophie. Do they happen BLANK week?`

## --blanks--

`every`

### --feedback--

Dieses Wort wird verwendet, um zu fragen, ob die Meetings wöchentlich stattfinden.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Tom",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "1.3-4.mp3",
      "startTime": 1,
      "startTimestamp": 0.00,
      "finishTimestamp": 3.70
    }
  },
  "commands": [
    {
      "character": "Tom",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Tom",
      "startTime": 1,
      "finishTime": 4.70,
      "dialogue": {
        "text": "Tell me about our team meetings, Sophie. Do they happen every week?",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 5.20
    }
  ]
}
```
