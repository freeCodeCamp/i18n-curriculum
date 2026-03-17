---
id: 67c03f86bccfec0be6de656b
title: Attività 113
challengeType: 19
dashedName: task-113
lang: en-US
---

<!-- (audio) Anna: I see your point, but flexibility might be better. Think about it. -->

# --instructions--

Ascolta l'audio e rispondi alla domanda qui sotto.

# --questions--

## --text--

Cosa sta comunicando Anna?

## --answers--

Lei è completamente in disaccordo con Bob e respinge la sua preoccupazione.

### --feedback--

Anna riconosce il punto di Bob prima di esprimere la sua opinione.

---

Lei comprende la preoccupazione di Bob ma pensa comunque che la flessibilità sia un'opzione migliore.

---

Lei non capisce la preoccupazione di Bob.

### --feedback--

Anna comprende l'argomento di Bob.

---

Lei è d'accordo con Bob e cambia idea.

### --feedback--

Anna non è completamente d'accordo con Bob.

## --video-solution--

2

# --explanation--

Anna usa `I see your point, but` per mostrare che comprende la preoccupazione di Bob mentre presenta un'opinione diversa.

Crede che la flessibilità sia una soluzione migliore rispetto a restare fermi su una categoria.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Anna",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_11-3.mp3",
      "startTime": 1,
      "startTimestamp": 31.78,
      "finishTimestamp": 34.88
    }
  },
  "commands": [
    {
      "character": "Anna",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Anna",
      "startTime": 1,
      "finishTime": 4.1,
      "dialogue": {
        "text": "I see your point, but flexibility might be better. Think about it.",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 4.7
    }
  ]
}
```
