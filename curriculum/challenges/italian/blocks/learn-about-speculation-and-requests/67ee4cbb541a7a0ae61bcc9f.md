---
id: 67ee4cbb541a7a0ae61bcc9f
title: Attività 4
challengeType: 19
dashedName: task-4
lang: en-US
---

<!-- (audio) Sophie: It's not a big deal, but we should fix it before it causes problems. -->

# --instructions--

Ascolta l'audio e rispondi alla domanda qui sotto.

# --questions--

## --text--

Questo piccolo errore è serio?

## --answers--

No, e non devono fare nulla a riguardo.

### --feedback--

Sophie non dice che sia un problema grave, ma dovrebbero sistemarlo.

---

Sì, romperà l'intero sistema.

### --feedback--

Sophie non dice che sia un problema grave, solo che dovrebbero sistemarlo.

---

Sì, Sophie è molto preoccupata.

### --feedback--

Sophie non è molto preoccupata, ma pensa comunque che dovrebbero sistemarlo.

---

No, ma dovrebbe comunque essere sistemato.

## --video-solution--

4

# --explanation--

`It's not a big deal` significa che il problema non è serio. Per esempio:

- **Monica:** `I can't join the meeting today.`

- **Eva:** `It's not a big deal. I'll take notes for you.` - Saltare la riunione va bene, e questa persona può aiutare.

Sophie dice anche `we should fix it before it causes problems`, cioè è meglio sistemarlo ora prima che diventi serio.

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
      "startTimestamp": 5.72,
      "finishTimestamp": 8.5
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
      "finishTime": 3.78,
      "dialogue": {
        "text": "It's not a big deal, but we should fix it before it causes problems.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.28
    }
  ]
}
```
