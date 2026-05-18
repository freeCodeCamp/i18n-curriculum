---
id: 67a75a9acd71d2ed6eb9a6fa
title: Aufgabe 20
challengeType: 22
dashedName: task-20
lang: en-US
---

<!-- (Audio) Linda: Absolutely. And I can also prepare some user scenarios for testing, so we can ensure a smooth user experience. -->

# --instructions--

Hören Sie sich die Audioaufnahme an und vervollständigen Sie den folgenden Satz.

# --fillInTheBlank--

## --sentence--

`Absolutely. And I can also prepare some BLANK for testing, so we can ensure a smooth user experience.`

## --blanks--

`user scenarios`

### --feedback--

Dieser zweiteilige Ausdruck bezieht sich auf verschiedene Situationen, die darstellen, wie eine Person mit einem Produkt interagieren könnte.

# --explanation--

`User scenarios` bezeichnet verschiedene Situationen, die beschreiben, wie Nutzer mit einem Produkt interagieren, um ein Ziel zu erreichen. Es hilft Teams, die Benutzererfahrung zu testen und zu verbessern. Zum Beispiel:

`We created user scenarios to see how customers navigate the checkout process.` – Das bedeutet, dass das Team verschiedene Wege simuliert hat, wie Nutzer einen Kauf abschließen, um mögliche Probleme zu erkennen.  

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
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
      "filename": "B1_10-1.mp3",
      "startTime": 1,
      "startTimestamp": 20.86,
      "finishTimestamp": 26.68
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
      "finishTime": 6.82,
      "dialogue": {
        "text": "Absolutely. And I can also prepare some user scenarios for testing so we can ensure a smooth user experience.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 7.32
    }
  ]
}
```
