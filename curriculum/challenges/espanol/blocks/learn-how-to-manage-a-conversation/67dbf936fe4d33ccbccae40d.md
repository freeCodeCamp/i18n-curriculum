---
id: 67dbf936fe4d33ccbccae40d
title: Tarea 1
challengeType: 22
dashedName: task-1
lang: en-US
---

<!-- (Audio) Alice: Hey, James. Sorry for the interruption earlier. -->

# --instructions--

Escucha el audio para completar la oración de abajo.

# --fillInTheBlank--

## --sentence--

`Hey, James. BLANK for the interruption earlier.`

## --blanks--

`Sorry`

### --feedback--

Esto se usa para disculparse por algo que ocurrió. No olvides usar mayúscula.

# --explanation--

`To be sorry for something` se usa cuando te disculpas por una acción que pudo haber causado inconvenientes o daño. Por ejemplo:

`I'm sorry for being late to the meeting.` - Esto significa que el hablante lamenta llegar tarde y está pidiendo disculpas. Observa que `being` está en la forma `-ing` porque está justo después de `for` (una preposición).

# --scene--

```json
{
  "setup": {
    "background": "interview-room2.png",
    "characters": [
      {
        "character": "Alice",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_15-1.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 2.55
    }
  },
  "commands": [
    {
      "character": "Alice",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Alice",
      "startTime": 1,
      "finishTime": 3.55,
      "dialogue": {
        "text": "Hey, James. Sorry for the interruption earlier.",
        "align": "center"
      }
    },
    {
      "character": "Alice",
      "opacity": 0,
      "startTime": 4.05
    }
  ]
}
```
