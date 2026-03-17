---
id: 67ddb23caaa58aa09eabf0f8
title: Attività 33
challengeType: 22
dashedName: task-33
lang: en-US
---

<!-- (Audio) Alice: I think that's it for now. Thanks for your help. -->

# --instructions--

Ascolta l'audio e completa la frase qui sotto.

# --fillInTheBlank--

## --sentence--

`I think that's it for BLANK. Thanks for your help.`

## --blanks--

`now`

### --feedback--

Significa "al momento" e indica che la situazione potrebbe cambiare in seguito.

# --explanation--

`For now` significa "in questo momento" o "per ora". Suggerisce che le cose sono concluse al momento, ma potrebbero succedere altre cose più avanti. Per esempio:

`Let's stop working here for now and continue tomorrow.` - Questo significa che stanno facendo una pausa adesso, ma riprenderanno più tardi.

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
      "startTimestamp": 42.46,
      "finishTimestamp": 44.64
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
      "finishTime": 3.18,
      "dialogue": {
        "text": "I think that's it for now. Thanks for your help.",
        "align": "center"
      }
    },
    {
      "character": "Alice",
      "opacity": 0,
      "startTime": 3.68
    }
  ]
}
```
