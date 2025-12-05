---
id: 67caf4fe6a781dcd6059ceda
title: Tarea 131
challengeType: 22
dashedName: task-131
lang: en-US
---

<!-- (Audio) Maria: It'd be helpful if we had more regular check-ins. -->

# --instructions--

Escucha el audio para completar la oración de abajo.  

# --fillInTheBlank--

## --sentence--

`It'd be BLANK if we had more BLANK check-ins.`  

## --blanks--

`helpful`  

### --feedback--

Esto significa proporcionar asistencia o facilitar algo.  

---  

`regular`  

### --feedback--

Esto significa que ocurre de manera constante o en intervalos establecidos.  

# --explanation--

`Helpful` significa proporcionar asistencia o hacer algo más fácil. Por ejemplo:

`It was helpful to have clear instructions before starting the task.` - Esto significa que las instrucciones hicieron que la tarea fuera más fácil de completar.

`Regular` significa que ocurre de manera consistente o en intervalos establecidos. Por ejemplo:

`We have regular meetings every Monday.` - Esto significa que las reuniones ocurren consistentemente los lunes.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Maria",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_12-3.mp3",
      "startTime": 1,
      "startTimestamp": 40.42,
      "finishTimestamp": 42.58
    }
  },
  "commands": [
    {
      "character": "Maria",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Maria",
      "startTime": 1,
      "finishTime": 3.16,
      "dialogue": {
        "text": "It'd be helpful if we had more regular check-ins.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 3.66
    }
  ]
}
```
