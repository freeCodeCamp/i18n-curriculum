---
id: 67d78c94b686ce3bddcaf8ab
title: Attività 117
challengeType: 22
dashedName: task-117
lang: en-US
---

<!-- (Audio) Brian: It could save us time and resources. What about timelines? Which option is faster? -->

# --instructions--

Ascolta l'audio e completa la frase qui sotto.

# --fillInTheBlank--

## --sentence--

`It could BLANK and resources. What about BLANK? Which option is faster?`

## --blanks--

`save us time`

### --feedback--

Queste tre parole insieme significano ridurre la quantità di tempo necessaria per completare un'attività.  

---

`timelines`

### --feedback--

Questa parola al plurale si riferisce a orari o scadenze per completare un progetto.  

# --explanation--

`Save us time` significa ridurre il tempo richiesto per completare qualcosa, rendendo il processo più efficiente. Per esempio:

`Using automation tools can save us time on repetitive tasks.` – Questo significa che gli strumenti di automazione aiutano a completare le attività più velocemente.  

`Timelines` si riferiscono a orari o scadenze che indicano quando diverse parti di un progetto devono essere completate. Per esempio:

`We need to adjust our timelines to finish the project on schedule.` – Questo significa modificare le scadenze per assicurarsi che il progetto venga completato in tempo.

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
