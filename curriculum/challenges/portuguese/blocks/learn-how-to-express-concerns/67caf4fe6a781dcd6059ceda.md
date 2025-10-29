---
id: 67caf4fe6a781dcd6059ceda
title: Tarefa 131
challengeType: 22
dashedName: task-131
---

<!-- (Audio) Maria: It'd be helpful if we had more regular check-ins. -->

# --instructions--

Ouça o áudio para completar a frase abaixo.  

# --fillInTheBlank--

## --sentence--

`It'd be BLANK if we had more BLANK check-ins.`  

## --blanks--

`helpful`  

### --feedback--

Isso significa fornecer assistência ou tornar algo mais fácil.  

---  

`regular`  

### --feedback--

Isso significa acontecer de forma consistente ou em intervalos definidos.  

# --explanation--

`Helpful` significa fornecer assistência ou tornar algo mais fácil.Por exemplo:

`It was helpful to have clear instructions before starting the task.` - Isso significa que as instruções tornaram a tarefa mais fácil de completar.

`Regular` significa acontecer de forma consistente ou em intervalos definidos.Por exemplo:

`We have regular meetings every Monday.` - Isso significa que as reuniões acontecem consistentemente às segundas-feiras.

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
