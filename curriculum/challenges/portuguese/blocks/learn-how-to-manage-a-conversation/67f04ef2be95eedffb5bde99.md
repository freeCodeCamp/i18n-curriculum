---
id: 67f04ef2be95eedffb5bde99
title: Tarefa 103
challengeType: 22
dashedName: task-103
lang: en-US
---

<!-- (Audio) Brian: Is there anything else slowing you down? -->

# --instructions--

Ouça o áudio para completar a frase abaixo.

# --fillInTheBlank--

## --sentence--

`Is there anything else BLANK you down?`

## --blanks--

`slowing`

### --feedback--

Seguido por `down`, isso significa fazer algo se mover ou acontecer mais devagar que o normal. Use a forma `-ing`.

# --explanation--

`To slow down` significa reduzir a velocidade ou fazer algo acontecer mais lentamente. Em contextos de trabalho ou projeto, pode se referir a qualquer coisa que atrase o progresso. Por exemplo:

`Traffic is slowing down the delivery.` – Isso significa que a entrega está demorando mais por causa do trânsito.  

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
