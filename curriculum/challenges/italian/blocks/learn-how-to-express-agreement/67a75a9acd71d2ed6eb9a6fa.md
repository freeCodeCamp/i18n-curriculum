---
id: 67a75a9acd71d2ed6eb9a6fa
title: Attività 20
challengeType: 22
dashedName: task-20
lang: en-US
---

<!-- (Audio) Linda: Absolutely. And I can also prepare some user scenarios for testing, so we can ensure a smooth user experience. -->

# --instructions--

Ascolta l'audio e completa la frase qui sotto.

# --fillInTheBlank--

## --sentence--

`Absolutely. And I can also prepare some BLANK for testing, so we can ensure a smooth user experience.`

## --blanks--

`user scenarios`

### --feedback--

Questa frase di due parole si riferisce a situazioni diverse che rappresentano come una persona potrebbe interagire con un prodotto.

# --explanation--

`User scenarios` indica situazioni diverse che descrivono come gli utenti interagiscono con un prodotto per raggiungere un obiettivo. Aiuta i team a testare e migliorare l'esperienza utente. Per esempio:

`We created user scenarios to see how customers navigate the checkout process.` – Questo significa che il team ha simulato diversi modi in cui gli utenti completano un acquisto per identificare eventuali problemi.  

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
