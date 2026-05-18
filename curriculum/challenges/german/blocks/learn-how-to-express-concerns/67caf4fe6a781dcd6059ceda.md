---
id: 67caf4fe6a781dcd6059ceda
title: Aufgabe 131
challengeType: 22
dashedName: task-131
lang: en-US
---

<!-- (Audio) Maria: It'd be helpful if we had more regular check-ins. -->

# --instructions--

Hören Sie sich die Audioaufnahme an und vervollständigen Sie den Satz unten.  

# --fillInTheBlank--

## --sentence--

`It'd be BLANK if we had more BLANK check-ins.`  

## --blanks--

`helpful`  

### --feedback--

Das bedeutet, Unterstützung zu bieten oder etwas zu erleichtern.  

---  

`regular`  

### --feedback--

Das bedeutet, dass etwas regelmäßig oder in festgelegten Abständen geschieht.  

# --explanation--

`Helpful` bedeutet, Unterstützung zu bieten oder etwas zu erleichtern. Zum Beispiel:

`It was helpful to have clear instructions before starting the task.` – Das bedeutet, die Anweisungen haben die Aufgabe leichter zu erledigen gemacht.

`Regular` bedeutet, dass etwas regelmäßig oder in festgelegten Abständen geschieht. Zum Beispiel:

`We have regular meetings every Monday.` – Das bedeutet, die Treffen finden regelmäßig montags statt.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Maria",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_12-3.mp3",
      "startTime": 1,
      "startTimestamp": 40.42,
      "finishTimestamp": 42.58
    }
  },
  "commands": [
    {
      "character": "Maria",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Maria",
      "startTime": 1,
      "finishTime": 3.16,
      "dialogue": {
        "text": "It'd be helpful if we had more regular check-ins.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 3.66
    }
  ]
}
```
