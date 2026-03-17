---
id: 657fb5afeeba2de5d01dda0e
title: Attività 81
challengeType: 19
dashedName: task-81
lang: en-US
---

<!-- (Audio) Tom: Thanks for the invite, Sarah. I appreciate it, but I'm not really into sci-fi. -->

# --description--

Ascolta l'audio e rispondi alla domanda qui sotto.

# --questions--

## --text--

Come risponde Tom all'invito di Sarah alla convention di fantascienza?

## --answers--

Accetta immediatamente.

### --feedback--

Tom non accetta l'invito. Menziona la sua mancanza di interesse per la fantascienza.

---

Rifiuta cortesemente.

---

Mostra disinteresse.

### --feedback--

Anche se Tom esprime una mancanza di interesse, la sua risposta riguarda più il rifiutare cortesemente l'invito che il semplice mostrare disinteresse.

---

Ignora l'invito.

### --feedback--

Tom riconosce l'invito e risponde, quindi non lo ignora.

## --video-solution--

2

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Tom",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.2-4.mp3",
      "startTime": 1,
      "startTimestamp": 22.06,
      "finishTimestamp": 26.54
    }
  },
  "commands": [
    {
      "character": "Tom",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Tom",
      "startTime": 1,
      "finishTime": 5.48,
      "dialogue": {
        "text": "Thanks for the invite, Sarah. I appreciate it, but I'm not really into sci-fi.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 5.98
    }
  ]
}
```
