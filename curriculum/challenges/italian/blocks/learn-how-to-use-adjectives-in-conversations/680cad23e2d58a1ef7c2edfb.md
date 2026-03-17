---
id: 680cad23e2d58a1ef7c2edfb
title: Attività 19
challengeType: 22
dashedName: task-19
lang: en-US
---

<!-- (Audio) Sarah: Those are the ones. But, we found something even better in your catalog, these high-capacity ones here. -->

# --instructions--

Ascolta l’audio e completa la frase qui sotto.

# --fillInTheBlank--

## --sentence--

`Those are the ones. But, we found something even better in your catalog, BLANK BLANK ones here.`

## --blanks--

`these`

### --feedback--

Questa parola si usa per indicare elementi specifici che sono vicini a chi parla.

---

`high-capacity`

### --feedback--

Questa parola composta indica qualcosa che può gestire una grande quantità di lavoro, archiviazione o energia. Ricorda di usare `-`.

# --explanation--

`High-capacity` descrive qualcosa progettato per gestire o contenere una quantità maggiore rispetto alle versioni standard. Per esempio:

`We installed high-capacity batteries in the new devices.` – Questo significa che le batterie possono immagazzinare più energia e durare più a lungo, cosa utile nei dispositivi tecnologici.

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
