---
id: 67ddafcebec26b8e5f46745b
title: Tarefa 31
challengeType: 22
dashedName: task-31
---

<!-- (Audio) James: Anything else we should discuss before our next meeting? -->

# --instructions--

Ouça o áudio para completar a frase abaixo.

# --fillInTheBlank--

## --sentence--

`Anything BLANK we should discuss before our next meeting?`

## --blanks--

`else`

### --feedback--

Isso significa além de algo ou diferente do que já foi mencionado.

# --explanation--

`Else` na expressão `anything else` é usado para perguntar se há algo além do que já foi dito ou feito.Por exemplo:

`Would you like anything else with your order?` - Aqui, você está perguntando se a outra pessoa quer algo além do que ela já pediu.

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
