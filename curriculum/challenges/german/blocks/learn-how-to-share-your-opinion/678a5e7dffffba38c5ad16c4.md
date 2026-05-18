---
id: 678a5e7dffffba38c5ad16c4
title: Aufgabe 17
challengeType: 22
dashedName: task-17
lang: en-US
---

<!-- (audio) Linda: In my case, I prefer Python because it's great for data analysis. Plus, it's really good for building prototypes quickly. -->

# --instructions--

Hören Sie sich die Audioaufnahme an und vervollständigen Sie den Satz unten.

# --fillInTheBlank--

## --sentence--

`In my case, I prefer Python because it's BLANK data analysis. Plus, it's really BLANK building prototypes quickly.`

## --blanks--

`great for`

### --feedback--

Dieser zweiteilige Ausdruck bedeutet, dass etwas sehr gut für einen bestimmten Zweck geeignet oder effektiv ist.

---

`good for`

### --feedback--

Dieser zweiteilige Ausdruck bedeutet, dass etwas für eine bestimmte Aufgabe oder Situation geeignet oder vorteilhaft ist.

# --explanation--

Sowohl `great for` als auch `good for` bedeuten, dass etwas sehr hilfreich, geeignet oder effektiv für einen bestimmten Zweck ist. Zum Beispiel:

- `This new software is great for managing large projects.` – Das bedeutet, die Software ist sehr gut geeignet und effektiv für die Verwaltung großer Projekte.

- `Cloud storage is good for backing up large volumes of data.` – Das bedeutet, Cloud-Speicher ist hoch effektiv und gut geeignet, um große Datenmengen sicher zu speichern.

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Linda",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_9-1.mp3",
      "startTime": 1,
      "startTimestamp": 16.04,
      "finishTimestamp": 21.9
    }
  },
  "commands": [
    {
      "character": "Linda",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Linda",
      "startTime": 1,
      "finishTime": 4.3,
      "dialogue": {
        "text": "In my case, I prefer Python because it's great for data analysis.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "startTime": 4.64,
      "finishTime": 6.86,
      "dialogue": {
        "text": "Plus it's really good for building prototypes quickly.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 7.36
    }
  ]
}
```
