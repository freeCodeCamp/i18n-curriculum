---
id: 67f04ef2be95eedffb5bde99
title: Aufgabe 103
challengeType: 22
dashedName: task-103
lang: en-US
---

<!-- (Audio) Brian: Is there anything else slowing you down? -->

# --instructions--

Hören Sie sich die Audioaufnahme an und vervollständigen Sie den folgenden Satz.

# --fillInTheBlank--

## --sentence--

`Is there anything else BLANK you down?`

## --blanks--

`slowing`

### --feedback--

Gefolgt von `down` bedeutet dies, etwas langsamer als normal zu bewegen oder geschehen zu lassen. Verwenden Sie die `-ing`-Form.

# --explanation--

`To slow down` bedeutet, die Geschwindigkeit zu verringern oder etwas langsamer geschehen zu lassen. In Arbeits- oder Projektkontexten kann es sich auf alles beziehen, was den Fortschritt verzögert. Zum Beispiel:

`Traffic is slowing down the delivery.` – Das bedeutet, dass die Lieferung wegen des Verkehrs länger dauert.  

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
      "filename": "B1_15-3.mp3",
      "startTime": 1,
      "startTimestamp": 23.16,
      "finishTimestamp": 25.38
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
      "finishTime": 3.22,
      "dialogue": {
        "text": "Is there anything else slowing you down?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 3.72
    }
  ]
}
```
