---
id: 67dd5baa84d2fcc56c09dce3
title: Attività 15
challengeType: 22
dashedName: task-15
lang: en-US
---

<!-- (Audio) James: By the way, did we decide on the deadline for the first phase? -->

# --instructions--

Ascolta l'audio e completa la frase qui sotto.

# --fillInTheBlank--

## --sentence--

`By the way, did we BLANK on the deadline for the first BLANK?`

## --blanks--

`decide`

### --feedback--

Questo significa fare una scelta o arrivare a una conclusione su qualcosa.

---

`phase`

### --feedback--

Si riferisce a una fase o parte specifica di un processo o progetto.

# --explanation--

`To decide` significa scegliere qualcosa dopo averci pensato. Per esempio:

`We need to decide which tools to use for the project.` – Questo significa scegliere gli strumenti dopo aver considerato le opzioni.

Un `phase` indica una parte o un passaggio in un processo più ampio. Per esempio:

`We just finished the testing phase of the software.` – Questo significa che il passaggio di test nel processo di sviluppo è completo.

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
