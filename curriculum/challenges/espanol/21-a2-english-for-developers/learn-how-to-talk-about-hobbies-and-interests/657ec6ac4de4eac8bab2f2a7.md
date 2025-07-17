---
id: 657ec6ac4de4eac8bab2f2a7
title: Tarea 39
challengeType: 22
dashedName: task-39
---

<!-- (Audio) Linda: Ok, it's a bike date, then. -->

# --description--

La palabra `date` puede usarse en diferentes contextos. Aunque a menudo se refiere a una cita romántica entre dos personas, también puede simplemente significar una cita o un evento planeado entre amigos o colegas. Por ejemplo, decir `Let's set a date for our next meeting` usa `date` de una manera no romántica, refiriéndose a elegir un día para una reunión.

# --fillInTheBlank--

## --sentence--

`Ok, it's a BLANK BLANK, then.`

## --blanks--

`bike`

### --feedback--

Esta palabra especifica el tipo de actividad planificada, indicando que es una salida que involucra bicicletas.

---

`date`

### --feedback--

Esta palabra se refiere a una reunión o evento programado.

# --scene--

```json
{
  "setup": {
    "background": "company1-reception.png",
    "characters": [
      {
        "character": "Linda",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.2-2.mp3",
      "startTime": 1,
      "startTimestamp": 44.64,
      "finishTimestamp": 46.58
    }
  },
  "commands": [
    {
      "character": "Linda",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Linda",
      "startTime": 1,
      "finishTime": 2.94,
      "dialogue": {
        "text": "Okay, it's a bike date, then.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 3.44
    }
  ]
}
```
