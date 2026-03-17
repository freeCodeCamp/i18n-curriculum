---
id: 67f36533ffaeffe3ac2dad2b
title: Attività 131
challengeType: 19
dashedName: task-131
lang: en-US
---

<!-- (Audio) Jessica: Oh, that might be a mix-up. The budget tracking feature is planned for the next update, not this one. -->

# --instructions--

Ascolta l'audio e rispondi alla domanda qui sotto.

# --questions--

## --text--

Cosa sta spiegando Jessica?

## --answers--

C'è stato un problema con la pianificazione dell'aggiornamento attuale.

### --feedback--

Jessica parla del momento in cui sarà disponibile la funzionalità, non della pianificazione dell'aggiornamento stesso.

---

La funzionalità di monitoraggio del budget sarà nel prossimo aggiornamento, non in quello attuale.

---

La funzionalità di monitoraggio del budget è stata rimossa dall'aggiornamento attuale.

### --feedback--

Jessica non dice che la funzionalità è stata rimossa.

---

La funzionalità è stata inclusa per errore in questo aggiornamento.

### --feedback--

Jessica non dice che la funzionalità è stata inclusa per errore.

## --video-solution--

2

# --explanation--

Jessica dice, `The budget tracking feature is planned for the next update`, spiegando che la funzionalità non è inclusa nell'aggiornamento attuale ma sarà aggiunta nel prossimo.

Questo chiarisce la confusione riguardo al momento in cui sarà disponibile la funzionalità.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
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
      "filename": "B1_16-3.mp3",
      "startTime": 1,
      "startTimestamp": 60.98,
      "finishTimestamp": 65.76
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
      "finishTime": 2.32,
      "dialogue": {
        "text": "Oh, that might be a mix-up.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "startTime": 2.58,
      "finishTime": 5.78,
      "dialogue": {
        "text": "The budget tracking feature is planned for the next update, not this one.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "opacity": 0,
      "startTime": 6.28
    }
  ]
}
```
