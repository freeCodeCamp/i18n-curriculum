---
id: 67eff3ae8cca9823edafadc6
title: Attività 59
challengeType: 19
dashedName: task-59
lang: en-US
---

<!-- (audio) Jake: Have you checked whether all security updates were applied? -->

# --instructions--

Ascolta l'audio e rispondi alla domanda qui sotto.

# --questions--

## --text--

Di cosa sta chiedendo Jake?

## --answers--

Se gli aggiornamenti sono stati applicati.

---

Se sono stati rilasciati nuovi aggiornamenti di sicurezza.

### --feedback--

Jake non sta chiedendo se esistono nuovi aggiornamenti.

---

Chi è responsabile degli aggiornamenti di sicurezza.

### --feedback--

Jake non sta chiedendo di una persona specifica.

---

Come funzionano gli aggiornamenti di sicurezza.

### --feedback--

Jake presume che Jessica sappia degli aggiornamenti di sicurezza.

## --video-solution--

1

# --explanation--

Jake vuole sapere se qualcuno ha verificato che tutti gli aggiornamenti siano stati installati.

Con `Have you checked...?` chiede se Jessica ha controllato qualcosa.

Con `whether all security updates were applied` chiede se gli aggiornamenti sono stati installati con successo.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Jake",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_17-2.mp3",
      "startTime": 1,
      "startTimestamp": 10.52,
      "finishTimestamp": 13.02
    }
  },
  "commands": [
    {
      "character": "Jake",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jake",
      "startTime": 1,
      "finishTime": 3.5,
      "dialogue": {
        "text": "Have you checked whether all security updates were applied?",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "opacity": 0,
      "startTime": 4
    }
  ]
}
```
