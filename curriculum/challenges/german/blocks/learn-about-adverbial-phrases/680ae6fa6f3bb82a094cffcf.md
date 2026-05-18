---
id: 680ae6fa6f3bb82a094cffcf
title: Aufgabe 91
challengeType: 19
dashedName: task-91
lang: en-US
---

<!-- (Audio) Riker: The UK and Germany saw the most improvement, even more than we expected. -->

<!-- SPEAKING -->

# --instructions--

Hören Sie sich die Audioaufnahme an und beantworten Sie die folgende Frage.

# --questions--

## --text--

Was könnte Maria sagen, um zu zeigen, dass sie von den Ergebnissen positiv überrascht ist?

## --answers--

`That's impressive.`

### --audio-id--

EN70c3200b

---

`Maybe we should lower our expectations.`

### --audio-id--

EN342dc19a

### --feedback--

Das zeigt mangelndes Selbstvertrauen, nicht Begeisterung über die Ergebnisse.

## --video-solution--

1

# --explanation--

`Impressive` bedeutet, dass etwas Aufmerksamkeit, Bewunderung oder Respekt verdient, weil es ungewöhnlich gut, groß oder effektiv ist. Zum Beispiel:

`Your presentation was really impressive! It covered everything clearly and confidently.` – Das bedeutet, die Präsentation war von hoher Qualität und hinterließ einen starken positiven Eindruck.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Riker",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_18-3.mp3",
      "startTime": 1,
      "startTimestamp": 18.42,
      "finishTimestamp": 23.1
    }
  },
  "commands": [
    {
      "character": "Riker",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Riker",
      "startTime": 1,
      "finishTime": 3.32,
      "dialogue": {
        "text": "The UK and Germany saw the most improvement,",
        "align": "center"
      }
    },
    {
      "character": "Riker",
      "startTime": 3.72,
      "finishTime": 5.68,
      "dialogue": {
        "text": "even more than we expected.",
        "align": "center"
      }
    },
    {
      "character": "Riker",
      "opacity": 0,
      "startTime": 6.18
    }
  ]
}
```
