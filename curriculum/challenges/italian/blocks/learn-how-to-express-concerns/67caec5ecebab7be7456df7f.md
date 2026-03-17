---
id: 67caec5ecebab7be7456df7f
title: Attività 130
challengeType: 19
dashedName: task-130
lang: en-US
---

<!-- (Audio) Maria: They also said the communication isn't great because they often don't hear about changes until it's too late. -->

# --instructions--

Ascolta l'audio e rispondi alla domanda qui sotto.  

# --questions--

## --text--

Quale altro problema ha sollevato il team?

## --answers--

Che ricevono gli aggiornamenti troppo presto.

### --feedback--

Maria menziona esattamente il contrario.

---

Che non vogliono comunicare così tanto.

### --feedback--

Maria non parla della volontà del team di comunicare.  

---

Che spesso non sentono in tempo i cambiamenti.

---

Che pensano che troppe persone siano coinvolte nella comunicazione.

### --feedback--

Maria non menziona il numero di persone coinvolte.

## --video-solution--

3  

# --explanation--

Quando dici qualcosa `isn't great`, stai attenuando un messaggio negativo (invece di dire `it is bad`, per esempio). Questo rende la critica più educata o indiretta. Dai un'occhiata alle seguenti frasi:

- `The design is bad.` - Questa è un'istruzione negativa forte, che spesso suona scortese.

- `The design isn't great. Maybe we can improve it.` - Dirlo così suona meno duro e più costruttivo.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Maria",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_12-3.mp3",
      "startTime": 1,
      "startTimestamp": 34.9,
      "finishTimestamp": 40.12
    }
  },
  "commands": [
    {
      "character": "Maria",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Maria",
      "startTime": 1,
      "finishTime": 3.18,
      "dialogue": {
        "text": "They also said the communication isn't great",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "startTime": 3.18,
      "finishTime": 6.22,
      "dialogue": {
        "text": "because they often don't hear about changes until it's too late.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 6.72
    }
  ]
}
```
