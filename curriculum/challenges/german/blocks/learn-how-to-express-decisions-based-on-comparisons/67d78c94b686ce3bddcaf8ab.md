---
id: 67d78c94b686ce3bddcaf8ab
title: Aufgabe 117
challengeType: 22
dashedName: task-117
lang: en-US
---

<!-- (Audio) Brian: It could save us time and resources. What about timelines? Which option is faster? -->

# --instructions--

Hören Sie sich die Audioaufnahme an und vervollständigen Sie den folgenden Satz.

# --fillInTheBlank--

## --sentence--

`It could BLANK and resources. What about BLANK? Which option is faster?`

## --blanks--

`save us time`

### --feedback--

Diese drei Wörter zusammen bedeuten, die benötigte Zeit zur Erledigung einer Aufgabe zu verkürzen.

---

`timelines`

### --feedback--

Dieses Wort im Plural bezieht sich auf Zeitpläne oder Fristen zur Fertigstellung eines Projekts.

# --explanation--

`Save us time` bedeutet, die benötigte Zeit zur Fertigstellung von etwas zu verkürzen und den Prozess effizienter zu gestalten. Zum Beispiel:

`Using automation tools can save us time on repetitive tasks.` – Das bedeutet, dass Automatisierungstools helfen, Aufgaben schneller zu erledigen.

`Timelines` beziehen sich auf Zeitpläne oder Fristen, die zeigen, wann verschiedene Teile eines Projekts abgeschlossen sein sollten. Zum Beispiel:

`We need to adjust our timelines to finish the project on schedule.` – Das bedeutet, die Fristen zu ändern, um sicherzustellen, dass das Projekt rechtzeitig fertiggestellt wird.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Brian",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_13-3.mp3",
      "startTime": 1,
      "startTimestamp": 32.34,
      "finishTimestamp": 37.52
    }
  },
  "commands": [
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "startTime": 1,
      "finishTime": 6.18,
      "dialogue": {
        "text": "It could save us time and resources. What about timelines? Which option is faster?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 6.68
    }
  ]
}
```
