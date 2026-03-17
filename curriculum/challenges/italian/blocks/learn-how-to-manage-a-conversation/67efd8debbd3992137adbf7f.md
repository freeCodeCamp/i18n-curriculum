---
id: 67efd8debbd3992137adbf7f
title: Attività 91
challengeType: 22
dashedName: task-91
lang: en-US
---

<!-- (Audio) Brian: How's everything going on your end? -->

# --instructions--

Ascolta l'audio e completa la frase qui sotto.

# --fillInTheBlank--

## --sentence--

`How's everything going on your BLANK?`

## --blanks--

`end`

### --feedback--

Preceduto da `on your`, questo si riferisce alla situazione, al lato o alla posizione di una persona specifica.

# --explanation--

`On your end` si usa per riferirsi alla situazione di qualcuno o a ciò che sta succedendo con quella persona, spesso in un contesto di conversazione o lavoro. Per esempio:

`Let me know if you need any help on your end.` – Questo significa che chi parla vuole sapere se l'altra persona ha bisogno di aiuto con il suo lavoro o la sua situazione.

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
      "startTimestamp": 5.56,
      "finishTimestamp": 7.28
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
      "finishTime": 2.72,
      "dialogue": {
        "text": "How's everything going on your end?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 3.22
    }
  ]
}
```
