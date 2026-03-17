---
id: 67ee802cf777fd1dcdeac13a
title: Attività 19
challengeType: 19
dashedName: task-19
lang: en-US
---

<!-- (audio) Sophie: No problem. You should also remember to use comments in your code. -->

# --instructions--

Ascolta l'audio e rispondi alla domanda qui sotto.

# --questions--

## --text--

Quale requisito menziona Sophie?

## --answers--

Mark dovrebbe eliminare righe di codice non necessarie.

### --feedback--

Sophie non parla di eliminare codice.

---

Mark dovrebbe riscrivere completamente il suo codice.

### --feedback--

Sophie non suggerisce di riscrivere tutto il codice.

---

Mark dovrebbe evitare di usare loop.

### --feedback--

Sophie non dice nulla riguardo evitare i loop.

---

Mark dovrebbe usare note nel suo codice.

## --video-solution--

4

# --explanation--

Un `comment` è una nota nel codice che aiuta a spiegare cosa fa. Per esempio:

- `I added a comment to explain why this loop is necessary.` - Hai scritto un commento per descrivere perché si usa un certo loop.

- `You can use comments to leave notes about issues that need fixing later.` - I commenti possono essere aggiunti nel codice come promemoria per cose da correggere o migliorare.

I commenti aiutano gli altri a capire il codice e ti ricordano dettagli importanti quando rivedi il codice in seguito.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
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
      "filename": "B1_17-1.mp3",
      "startTime": 1,
      "startTimestamp": 25.54,
      "finishTimestamp": 28.48
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
      "finishTime": 4.02,
      "dialogue": {
        "text": "No problem. You should also remember to use comments in your code.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.52
    }
  ]
}
```
