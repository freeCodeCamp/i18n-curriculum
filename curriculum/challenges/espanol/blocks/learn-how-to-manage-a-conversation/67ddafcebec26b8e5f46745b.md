---
id: 67ddafcebec26b8e5f46745b
title: Tarea 31
challengeType: 22
dashedName: task-31
lang: en-US
---

<!-- (Audio) James: Anything else we should discuss before our next meeting? -->

# --instructions--

Escucha el audio para completar la oración de abajo.

# --fillInTheBlank--

## --sentence--

`Anything BLANK we should discuss before our next meeting?`

## --blanks--

`else`

### --feedback--

Esto significa además de algo o distinto a lo que ya se ha mencionado.

# --explanation--

`Else` en la expresión `anything else` se usa para preguntar si hay algo además de lo que ya se ha dicho o hecho. Por ejemplo:

`Would you like anything else with your order?` - Aquí, estás preguntando si la otra persona quiere algo además de lo que ya pidió.

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
      "startTimestamp": 39.22,
      "finishTimestamp": 42.22
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
      "finishTime": 4,
      "dialogue": {
        "text": "Anything else we should discuss before our next meeting?",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 4.5
    }
  ]
}
```
