---
id: 68fa8b4ecf2cf649ff55f7fd
title: Attività 2
challengeType: 19
dashedName: task-2
lang: es
---

# --instructions--

Ascolta l'audio e rispondi alla domanda qui sotto.

# --questions--

## --text--

Qual è la **seconda** lettera pronunciata in questo audio?

## --answers--

`b`

### --feedback--

La lettera `b` ha un suono diverso.

---

`x`

---

`z`

### --feedback--

La lettera `z` ha un suono diverso.

---

`m`

### --feedback--

La lettera `m` ha un suono diverso.

## --video-solution--

2

# --explanation--

Queste sono le tre lettere pronunciate nell'audio: `b`, `x`, `z`.

La lettera `x` è la seconda. Quindi, `x` è la risposta corretta.

# --scene--

```json
{
  "setup": {
    "background": "living-room.png",
    "characters": [
      {
        "character": "Julieta",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_alphabet_practice.mp3",
      "startTime": 1,
      "startTimestamp": 8,
      "finishTimestamp": 12.96
    }
  },
  "commands": [
    {
      "character": "Julieta",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Julieta",
      "startTime": 1,
      "finishTime": 1.67,
      "dialogue": {
        "text": "b",
        "align": "center"
      }
    },
    {
      "character": "Julieta",
      "startTime": 3.26,
      "finishTime": 4.05,
      "dialogue": {
        "text": "x",
        "align": "center"
      }
    },
    {
      "character": "Julieta",
      "startTime": 5.21,
      "finishTime": 5.96,
      "dialogue": {
        "text": "z",
        "align": "center"
      }
    },
    {
      "character": "Julieta",
      "opacity": 0,
      "startTime": 6.46
    }
  ]
}
```
