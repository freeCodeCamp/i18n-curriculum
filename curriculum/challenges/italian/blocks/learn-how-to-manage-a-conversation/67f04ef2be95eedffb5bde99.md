---
id: 67f04ef2be95eedffb5bde99
title: Attività 103
challengeType: 22
dashedName: task-103
lang: en-US
---

<!-- (Audio) Brian: Is there anything else slowing you down? -->

# --instructions--

Ascolta l'audio e completa la frase qui sotto.

# --fillInTheBlank--

## --sentence--

`Is there anything else BLANK you down?`

## --blanks--

`slowing`

### --feedback--

Seguito da `down`, questo significa far muovere o accadere qualcosa più lentamente del normale. Usa la forma `-ing`.

# --explanation--

`To slow down` significa ridurre la velocità o far accadere qualcosa più lentamente. In contesti di lavoro o progetto, può riferirsi a qualsiasi cosa che rallenti il progresso. Per esempio:

`Traffic is slowing down the delivery.` – Questo significa che la consegna sta impiegando più tempo a causa del traffico.  

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Brian",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_15-3.mp3",
      "startTime": 1,
      "startTimestamp": 23.16,
      "finishTimestamp": 25.38
    }
  },
  "commands": [
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "startTime": 1,
      "finishTime": 3.22,
      "dialogue": {
        "text": "Is there anything else slowing you down?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 3.72
    }
  ]
}
```
