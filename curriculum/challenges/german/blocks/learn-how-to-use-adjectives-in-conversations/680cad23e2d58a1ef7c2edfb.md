---
id: 680cad23e2d58a1ef7c2edfb
title: Aufgabe 19
challengeType: 22
dashedName: task-19
lang: en-US
---

<!-- (Audio) Sarah: Those are the ones. But, we found something even better in your catalog, these high-capacity ones here. -->

# --instructions--

Hören Sie sich die Audioaufnahme an und vervollständigen Sie den folgenden Satz.

# --fillInTheBlank--

## --sentence--

`Those are the ones. But, we found something even better in your catalog, BLANK BLANK ones here.`

## --blanks--

`these`

### --feedback--

Dieses Wort wird verwendet, um auf bestimmte Gegenstände hinzuweisen, die sich in der Nähe des Sprechers befinden.

---

`high-capacity`

### --feedback--

Dieses zusammengesetzte Wort bedeutet etwas, das eine große Menge Arbeit, Speicher oder Energie bewältigen kann. Denken Sie daran, `-` zu verwenden.

# --explanation--

`High-capacity` beschreibt etwas, das so konzipiert ist, dass es im Vergleich zu Standardversionen eine große Menge verwalten oder aufnehmen kann. Zum Beispiel:

`We installed high-capacity batteries in the new devices.` – Das bedeutet, dass die Batterien mehr Energie speichern und länger halten können, was in technischer Ausrüstung nützlich ist.

# --scene--

```json
{
  "setup": {
    "background": "company3-reception.png",
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
      "filename": "B1_19-1.mp3",
      "startTime": 1,
      "startTimestamp": 27.3,
      "finishTimestamp": 32.68
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
      "finishTime": 6.38,
      "dialogue": {
        "text": "Those are the ones, but we found something even better in your catalog, these high capacity ones here.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 6.88
    }
  ]
}
```
