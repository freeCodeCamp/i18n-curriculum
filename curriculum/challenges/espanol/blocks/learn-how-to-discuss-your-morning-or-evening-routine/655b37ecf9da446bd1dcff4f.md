---
id: 655b37ecf9da446bd1dcff4f
title: Tarea 96
challengeType: 22
dashedName: task-96
lang: en-US
---

<!-- (Audio) Sophie: On Sunday, I have a lazy morning. I just stay at home and play some video games on my console. In the evening, I make dinner and go to sleep early because on Monday it's back to work again. -->

# --description--

Escucha el audio para completar la oración de abajo.

# --fillInTheBlank--

## --sentence--

`On Sunday, I have a BLANK morning. I just stay at home and play some video games on my console. In the evening, I make dinner and go to sleep BLANK because on Monday it's back to work again.`

## --blanks--

`lazy`

### --feedback--

Este adjetivo describe la naturaleza relajada del domingo por la mañana de Sophie.

---

`early`

### --feedback--

Esta palabra indica la hora que Sophie elige para ir a dormir el domingo por la noche.

# --scene--

```json
{
  "setup": {
    "background": "company1-reception.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "2.2-5.mp3",
      "startTime": 1,
      "startTimestamp": 27.14,
      "finishTimestamp": 36.80
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
      "finishTime": 5.5,
      "dialogue": {
        "text": "On Sunday, I have a lazy morning. I just stay at home and play some video games on my console.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "startTime": 6.14,
      "finishTime": 10.66,
      "dialogue": {
        "text": "In the evening, I make dinner and go to sleep early because on Monday it's back to work again.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 11.16
    }
  ]
}
```
