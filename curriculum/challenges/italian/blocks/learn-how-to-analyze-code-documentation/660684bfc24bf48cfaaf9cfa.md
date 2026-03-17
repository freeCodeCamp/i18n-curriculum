---
id: 660684bfc24bf48cfaaf9cfa
title: Attività 8
challengeType: 22
dashedName: task-8
lang: en-US
---

<!-- (Audio) Sophie: Thanks, I'll give it a shot. -->

# --description--

`Give it a shot` significa provare a fare qualcosa. È come dire `Try it`.

Per esempio, se il tuo amico è titubante a iscriversi a un corso di programmazione perché pensa che possa essere troppo difficile, potresti dire `Why not give it a shot? You might enjoy it more than you think.` per incoraggiarlo a provare a iscriversi a questo corso.

# --fillInTheBlank--

## --sentence--

`Thanks, BLANK give it a BLANK.`

## --blanks--

`I'll`

### --feedback--

È l’abbreviazione di `I will`. Sophie sta esprimendo la sua decisione di provare ciò che Brian ha suggerito.

---

`shot`

### --feedback--

In questo contesto significa un tentativo o prova di fare qualcosa. Sophie dice che proverà ciò che Brian ha raccomandato.

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "7.3-1.mp3",
      "startTime": 1,
      "startTimestamp": 24.86,
      "finishTimestamp": 26.28
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 2.42,
      "dialogue": {
        "text": "Thanks, I'll give it a shot.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 2.92
    }
  ]
}
```
