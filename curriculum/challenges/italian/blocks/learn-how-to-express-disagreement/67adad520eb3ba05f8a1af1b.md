---
id: 67adad520eb3ba05f8a1af1b
title: Attività 33
challengeType: 19
dashedName: task-33
lang: en-US
---

<!-- (Audio) Bob: So maybe we should focus on both. Find a balance between comfort and technology to ensure everyone has what they need. -->

<!-- SPEAKING -->

# --instructions--

Ascolta l'audio e rispondi alla domanda qui sotto.

# --questions--

## --text--

Cosa dovrebbe dire Anna per essere d'accordo con Bob?

## --answers--

`I don't understand.`

### --audio-id--

ENd6da13d0

### --feedback--

Questa frase suggerisce confusione, ma Anna deve mostrare accordo con l'idea di Bob.

---

`That makes sense.`

### --audio-id--

ENc50c4990

## --video-solution--

2

# --explanation--

`That makes sense` è un modo naturale per mostrare accordo. Le persone usano questa frase nelle conversazioni quando accettano o comprendono un suggerimento. Per esempio:

- Persona 1: `We should optimize the code before adding new features to avoid performance issues.`

- Persona 2: `That makes sense. A slow app will frustrate users.` - Questa persona è d'accordo e capisce perché ottimizzare prima il codice è una buona idea.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Bob",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_11-1.mp3",
      "startTime": 1,
      "startTimestamp": 52,
      "finishTimestamp": 58.24
    }
  },
  "commands": [
    {
      "character": "Bob",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Bob",
      "startTime": 1,
      "finishTime": 2.54,
      "dialogue": {
        "text": "So maybe we should focus on both.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "startTime": 2.54,
      "finishTime": 7.24,
      "dialogue": {
        "text": "Find a balance between comfort and technology to ensure everyone has what they need.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 7.74
    }
  ]
}
```
