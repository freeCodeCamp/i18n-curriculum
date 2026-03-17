---
id: 68443eddeab5bb2d7d6e44bf
title: Attività 45
challengeType: 22
dashedName: task-45
lang: en-US
---

<!-- (Audio) Bob: Last, where should we set up the break room? -->

# --instructions--

Ascolta l'audio e completa la frase qui sotto.

# --fillInTheBlank--

## --sentence--

`Last, where should we BLANK the BLANK?`

## --blanks--

`set up`

### --feedback--

Questa frase di due parole significa organizzare o preparare qualcosa per l'uso.

---

`break room`

### --feedback--

Questa frase di due parole indica uno spazio dove i dipendenti possono rilassarsi dal lavoro.

# --explanation--

`Set up` significa preparare o organizzare qualcosa per l'uso. Per esempio:

`We need to set up the new computers before the meeting.` – Questo significa renderli pronti.

`Break room` è un luogo in un ufficio dove le persone si riposano, mangiano o si rilassano. Per esempio:

`Let's meet in the break room after lunch.` – Questo indica uno spazio destinato a fare una pausa.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Bob",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_22-1.mp3",
      "startTime": 1,
      "startTimestamp": 61.04,
      "finishTimestamp": 63.6
    }
  },
  "commands": [
    {
      "character": "Bob",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Bob",
      "startTime": 1,
      "finishTime": 3.56,
      "dialogue": {
        "text": "Last, where should we set up the break room?",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 4.06
    }
  ]
}
```
