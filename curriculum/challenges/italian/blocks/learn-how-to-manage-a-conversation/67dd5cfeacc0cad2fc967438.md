---
id: 67dd5cfeacc0cad2fc967438
title: Attività 16
challengeType: 19
dashedName: task-16
lang: en-US
---

<!-- (Audio) James: By the way, did we decide on the deadline for the first phase? -->

# --instructions--

Ascolta l'audio e rispondi alla domanda qui sotto.

# --questions--

## --text--

Cosa vuole sapere James?

## --answers--

Se hanno concordato la scadenza per la prima fase.

---

Se il progetto è stato annullato.

### --feedback--

James non menziona l'annullamento del progetto.

---

Se Alice è responsabile della prima fase.

### --feedback--

James non chiede delle responsabilità.

---

Se il team ha terminato la fase finale.

### --feedback--

James non parla della fase finale.

## --video-solution--

1

# --explanation--

`By the way` viene usato per introdurre un argomento nuovo ma correlato nella conversazione. Spesso porta alla luce qualcosa che il parlante ha appena ricordato o vuole verificare. Per esempio:

`By the way, have you seen the updated report?` – Questo introduce una nuova domanda relativa a ciò di cui si stava già parlando.

# --scene--

```json
{
  "setup": {
    "background": "interview-room2.png",
    "characters": [
      {
        "character": "James",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_15-1.mp3",
      "startTime": 1,
      "startTimestamp": 17.36,
      "finishTimestamp": 20.64
    }
  },
  "commands": [
    {
      "character": "James",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "James",
      "startTime": 1,
      "finishTime": 4.28,
      "dialogue": {
        "text": "By the way, did we decide on the deadline for the first phase?",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 4.78
    }
  ]
}
```
