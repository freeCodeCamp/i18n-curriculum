---
id: 693aebb31ed98f7aea7d1a5d
title: Attività 26
challengeType: 19
dashedName: task-26
lang: es
---

<!-- (Audio) Basti: Y mi número es +502 4489 2201. -->

# --description--

In questa attività, sentirai Basti condividere il suo numero di telefono completo, incluso il prefisso internazionale. Il numero viene pronunciato in gruppi di cifre.

# --instructions--

Ascolta l'audio e rispondi alla domanda qui sotto.

# --questions--

## --text--

Quale dei seguenti è il numero di telefono di Basti?

## --answers--

+502 4489 2201

---

+502 4489 2102

### --feedback--

Le cifre finali non corrispondono a quelle che dice Basti.

---

+520 4489 2201

### --feedback--

Il prefisso internazionale che dice Basti non è 520.

---

+502 4498 2201

### --feedback--

C'è un piccolo errore nelle quattro cifre centrali.

## --video-solution--

1

# --explanation--

`Y mi número es +502 4489 2201`, significa "E il mio numero è +502 4489 2201".

# --scene--

```json
{
  "setup": {
    "background": "desk.png",
    "characters": [
      {
        "character": "Sebastián",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_basti_personal_details.mp3",
      "startTime": 1,
      "startTimestamp": 64.86,
      "finishTimestamp": 74.84
    }
  },
  "commands": [
    {
      "character": "Sebastián",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sebastián",
      "startTime": 1,
      "finishTime": 10.98,
      "dialogue": {
        "text": "Y mi número es +502 4489 2201.",
        "align": "center"
      }
    },
    {
      "character": "Sebastián",
      "opacity": 0,
      "startTime": 11.48
    }
  ]
}
```
