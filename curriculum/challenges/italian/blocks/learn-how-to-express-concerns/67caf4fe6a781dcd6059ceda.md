---
id: 67caf4fe6a781dcd6059ceda
title: Attività 131
challengeType: 22
dashedName: task-131
lang: en-US
---

<!-- (Audio) Maria: It'd be helpful if we had more regular check-ins. -->

# --instructions--

Ascolta l'audio e completa la frase qui sotto.  

# --fillInTheBlank--

## --sentence--

`It'd be BLANK if we had more BLANK check-ins.`  

## --blanks--

`helpful`  

### --feedback--

Significa fornire assistenza o rendere qualcosa più facile.  

---  

`regular`  

### --feedback--

Significa che avviene in modo costante o a intervalli regolari.  

# --explanation--

`Helpful` significa fornire assistenza o rendere qualcosa più facile. Per esempio:

`It was helpful to have clear instructions before starting the task.` - Questo significa che le istruzioni hanno reso l'attività più facile da completare.

`Regular` significa che avviene in modo costante o a intervalli regolari. Per esempio:

`We have regular meetings every Monday.` - Questo significa che le riunioni avvengono regolarmente il lunedì.

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
