---
id: 67f04ef2be95eedffb5bde99
title: Tarea 103
challengeType: 22
dashedName: task-103
lang: en-US
---

<!-- (Audio) Brian: Is there anything else slowing you down? -->

# --instructions--

Escucha el audio para completar la oración de abajo.

# --fillInTheBlank--

## --sentence--

`Is there anything else BLANK you down?`

## --blanks--

`slowing`

### --feedback--

Seguido de `down`, esto significa hacer que algo se mueva o suceda más lentamente de lo normal. Usa la forma `-ing`.

# --explanation--

`To slow down` significa reducir la velocidad o hacer que algo ocurra más despacio. En contextos de trabajo o proyectos, puede referirse a cualquier cosa que retrase el progreso. Por ejemplo:

`Traffic is slowing down the delivery.` – Esto significa que la entrega está tomando más tiempo debido al tráfico.  

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
