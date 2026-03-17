---
id: 6857babdeedee54c6acb3636
title: Attività 134
challengeType: 19
dashedName: task-134
lang: en-US
---

<!-- (Audio) Sarah: If you head straight down this corridor and turn left at the break area, you'll see them stored right across from the coffee machine. -->

# --instructions--

Ascolta l'audio e rispondi alla domanda qui sotto.

# --questions--

## --text--

Dove sono conservati ora i monitor?

## --answers--

Alla fine del parcheggio.

### --feedback--

Sarah non menziona il parcheggio.

---

All'interno della stanza IT.

### --feedback--

Sono stati spostati fuori dalla stanza IT in precedenza.

---

Accanto alla postazione di sicurezza.

### --feedback--

Non si fa menzione di una postazione di sicurezza.

---

Proprio vicino alla macchina del caffè.

## --video-solution--

4

# --explanation--

Sarah dà indicazioni chiare che terminano con un punto di riferimento: `the coffee machine`.

Spiega che dopo aver percorso il corridoio e girato a sinistra, i monitor si trovano di fronte a questo punto, rendendo la macchina del caffè il punto di riferimento visibile più vicino per trovarli.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
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
      "filename": "B1_22-3.mp3",
      "startTime": 1,
      "startTimestamp": 12.68,
      "finishTimestamp": 18.22
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
      "finishTime": 6.54,
      "dialogue": {
        "text": "If you head straight down this corridor and turn left at the break area, you'll see them stored right across from the coffee machine.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 7.04
    }
  ]
}
```
