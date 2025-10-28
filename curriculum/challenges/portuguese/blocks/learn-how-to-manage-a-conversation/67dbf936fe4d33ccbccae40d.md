---
id: 67dbf936fe4d33ccbccae40d
title: Tarefa 1
challengeType: 22
dashedName: task-1
---

<!-- (Audio) Alice: Hey, James. Sorry for the interruption earlier. -->

# --instructions--

Ouça o áudio para completar a frase abaixo.

# --fillInTheBlank--

## --sentence--

`Hey, James. BLANK for the interruption earlier.`

## --blanks--

`Sorry`

### --feedback--

Isto é usado para pedir desculpas por algo que aconteceu.Não esqueça de usar maiúsculas.

# --explanation--

`To be sorry for something` é usado ao pedir desculpas por uma ação que pode ter causado inconveniência ou dano.Por exemplo:

`I'm sorry for being late to the meeting.` - Isso significa que o falante se arrepende de chegar atrasado e está pedindo desculpas.Note que `being` está na forma `-ing` pois está logo após `for` (uma preposição).

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
