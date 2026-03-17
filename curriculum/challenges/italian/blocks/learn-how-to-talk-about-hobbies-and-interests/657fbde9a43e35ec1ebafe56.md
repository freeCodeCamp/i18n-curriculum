---
id: 657fbde9a43e35ec1ebafe56
title: Attività 77
challengeType: 19
dashedName: task-77
lang: en-US
---

<!-- (Audio) Sarah: There's a big convention next month. Would you like to come? -->

# --description--

Ascolta l'audio e rispondi alla domanda qui sotto.

# --questions--

## --text--

Cosa comunica la frase `Would you like to come?` in questo contesto?

## --answers--

Rifiutare un invito.

### --feedback--

La frase non significa dire "no". Si tratta di fare un invito.

---

Estendere un invito.

---

Esprimere gratitudine.

### --feedback--

La frase non significa "grazie". Si tratta di invitare qualcuno.

---

Chiedere informazioni.

### --feedback--

La frase non è una domanda per ottenere informazioni, ma un invito cortese a un evento.

## --video-solution--

2

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.2-4.mp3",
      "startTime": 1,
      "startTimestamp": 18.70,
      "finishTimestamp": 21.36
    }
  },
  "commands": [
    {
      "character": "Sarah",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sarah",
      "startTime": 1,
      "finishTime": 3.66,
      "dialogue": {
        "text": "There's a big convention next month. Would you like to come?",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 4.16
    }
  ]
}
```
