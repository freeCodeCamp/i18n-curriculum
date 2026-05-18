---
id: 67f519febaeacd154eb0f9f1
title: Aufgabe 96
challengeType: 22
dashedName: task-96
lang: en-US
---

<!-- (audio) Jake: For now, let's gather more information and stay vigilant. -->

# --instructions--

Hören Sie sich die Audioaufnahme an und vervollständigen Sie den folgenden Satz.

# --fillInTheBlank--

## --sentence--

`For now, let's gather more information and stay BLANK.`

## --blanks--

`vigilant`

### --feedback--

Dieses Wort bedeutet, wachsam zu sein und sorgfältig nach möglichen Gefahren oder Problemen Ausschau zu halten.

# --explanation--

`Vigilant` bedeutet, aufmerksam und vorsichtig zu sein, um mögliche Bedrohungen zu erkennen. Zum Beispiel:

- `The IT team is always vigilant when monitoring the network.` – Das IT-Team bleibt wachsam und vorsichtig, während es das Netzwerk überprüft.

- `You should be vigilant when clicking on unknown links in emails.` – Sie müssen vorsichtig sein und auf verdächtige E-Mail-Links achten.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Jake",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_17-2.mp3",
      "startTime": 1,
      "startTimestamp": 80.02,
      "finishTimestamp": 83.18
    }
  },
  "commands": [
    {
      "character": "Jake",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jake",
      "startTime": 1,
      "finishTime": 4.16,
      "dialogue": {
        "text": "For now, let's gather more information and stay vigilant.",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "opacity": 0,
      "startTime": 4.66
    }
  ]
}
```
