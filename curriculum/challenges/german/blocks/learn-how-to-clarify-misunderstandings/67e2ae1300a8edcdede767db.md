---
id: 67e2ae1300a8edcdede767db
title: Aufgabe 4
challengeType: 22
dashedName: task-4
lang: en-US
---

<!-- (Audio) Mark: Can I ask you about a few of them? -->

# --instructions--

Hören Sie sich die Audiodatei an und vervollständigen Sie den folgenden Satz.

# --fillInTheBlank--

## --sentence--

`Can I BLANK you BLANK a few of them?`

## --blanks--

`ask`

### --feedback--

Dieses Verb wird verwendet, wenn jemand Informationen oder Erlaubnis einholen möchte.

---

`about`

### --feedback--

Diese Präposition verbindet ein verwandtes Thema oder einen Gegenstand.

# --explanation--

`Ask about` bedeutet, Informationen zu einem bestimmten Thema anzufragen. Zum Beispiel:

`I asked about the new feature.` – Sie wollten Informationen über die Funktion.

`Can I ask you about...` ist eine höfliche Art, eine Frage zu beginnen, wenn Sie Informationen oder Hilfe wünschen. Es zeigt, dass Sie um Erlaubnis bitten, über ein bestimmtes Thema zu sprechen. Zum Beispiel:

`Can I ask you about the project deadline?` – Das bedeutet, Sie möchten über die Frist sprechen und mehr Details erhalten.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Mark",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_16-1.mp3",
      "startTime": 1,
      "startTimestamp": 5.58,
      "finishTimestamp": 7.08
    }
  },
  "commands": [
    {
      "character": "Mark",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Mark",
      "startTime": 1,
      "finishTime": 2.5,
      "dialogue": {
        "text": "Can I ask you about a few of them?",
        "align": "center"
      }
    },
    {
      "character": "Mark",
      "opacity": 0,
      "startTime": 3
    }
  ]
}
```
