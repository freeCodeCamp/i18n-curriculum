---
id: 67ddafcebec26b8e5f46745b
title: Attività 31
challengeType: 22
dashedName: task-31
lang: en-US
---

<!-- (Audio) James: Anything else we should discuss before our next meeting? -->

# --instructions--

Ascolta l'audio e completa la frase qui sotto.

# --fillInTheBlank--

## --sentence--

`Anything BLANK we should discuss before our next meeting?`

## --blanks--

`else`

### --feedback--

Significa in aggiunta a qualcosa o oltre a ciò che è già stato menzionato.

# --explanation--

`Else` nell'espressione `anything else` si usa per chiedere se c'è qualcosa in aggiunta a ciò che è già stato detto o fatto. Per esempio:

`Would you like anything else with your order?` - Qui stai chiedendo se l'altra persona desidera qualcosa oltre a ciò che ha già chiesto.

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
