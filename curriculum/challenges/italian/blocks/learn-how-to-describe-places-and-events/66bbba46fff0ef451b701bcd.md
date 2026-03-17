---
id: 66bbba46fff0ef451b701bcd
title: Attività 103
challengeType: 19
dashedName: task-103
lang: en-US
---

<!-- Audio Reference:
Tom: Hey Sarah, do you have a moment? I'm struggling with these IDEs.
Sarah: Sure, I'm not busy. What's the problem? -->

# --instructions--

Ascolta l'audio e rispondi alla domanda qui sotto.

# --questions--

## --text--

Sarah è disponibile a parlare con Tom?

## --answers--

No, è occupata e non vuole sapere dei suoi problemi.

### --feedback--

Sarah dice che non è occupata.

---

Sì, è disponibile e vuole sapere qual è il problema.

---

No, non può parlare adesso, ha i suoi problemi.

### --feedback--

Sarah menziona che non è occupata.

---

Sì, ma solo per un momento perché ha i suoi problemi.

### --feedback--

Sarah non limita il tempo; afferma semplicemente di non essere occupata.

## --video-solution--

2

# --explanation--

Invece di dire direttamente che è libera, Sarah usa la forma negativa `I'm not busy` per sottolineare che ha tempo per aiutare.

Questo è un modo educato e indiretto per offrire disponibilità in inglese, comunemente usato per rendere la conversazione più garbata.

La frase successiva, `What's the problem?`, conferma che è disposta ad aiutare invitando Tom a spiegare il problema.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Tom",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      },
      {
        "character": "Sarah",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_1-3.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 6.5
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
      "finishTime": 2.92,
      "dialogue": {
        "text": "Hey Sarah, do you have a moment?",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "startTime": 3.08,
      "finishTime": 5.14,
      "dialogue": {
        "text": "I'm struggling with these IDEs.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 5.34
    },
    {
      "character": "Sarah",
      "opacity": 1,
      "startTime": 5.34
    },
    {
      "character": "Sarah",
      "startTime": 5.54,
      "finishTime": 7.5,
      "dialogue": {
        "text": "Sure, I'm not busy. What's the problem?",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 8
    }
  ]
}
```
