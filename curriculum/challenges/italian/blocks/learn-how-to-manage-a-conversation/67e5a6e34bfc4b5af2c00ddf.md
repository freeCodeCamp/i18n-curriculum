---
id: 67e5a6e34bfc4b5af2c00ddf
title: Attività 51
challengeType: 22
dashedName: task-51
lang: en-US
---

<!-- (Audio) Jessica: Well, we've discovered a critical bug that might affect the user interface. -->

# --instructions--

Ascolta l'audio e completa la frase qui sotto.

# --fillInTheBlank--

## --sentence--

`Well, we've discovered a BLANK bug that might BLANK the user interface.`

## --blanks--

`critical`

### --feedback--

Significa molto serio o importante. Viene spesso usato quando qualcosa richiede attenzione immediata.

---

`affect`

### --feedback--

Significa cambiare o influenzare qualcosa. Spesso descrive come una cosa provoca un cambiamento in un'altra.

# --explanation--

`Critical` significa estremamente importante o serio. Per esempio:

`We have a critical deadline tomorrow.` – Questo significa che la scadenza è molto importante e non può essere mancata.

`To affect` significa avere un'influenza su qualcosa o causare un cambiamento. Per esempio:

`The new policy may affect employee performance.` – Questo significa che la politica potrebbe cambiare il modo in cui i dipendenti lavorano.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Jessica",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_15-2.mp3",
      "startTime": 1,
      "startTimestamp": 10.12,
      "finishTimestamp": 13.52
    }
  },
  "commands": [
    {
      "character": "Jessica",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jessica",
      "startTime": 1,
      "finishTime": 2.72,
      "dialogue": {
        "text": "Well, we've discovered a critical bug",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "startTime": 2.72,
      "finishTime": 4.4,
      "dialogue": {
        "text": "that might affect the user interface.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "opacity": 0,
      "startTime": 4.9
    }
  ]
}
```
