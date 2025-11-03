---
id: 660684bfc24bf48cfaaf9cfa
title: Tarefa 8
challengeType: 22
dashedName: task-8
lang: en-US
---

<!-- (Audio) Sophie: Thanks, I'll give it a shot. -->

# --description--

`Give it a shot` significa tentar fazer algo. É como dizer `Try it`.

Por exemplo, se seu amigo estiver hesitante em entrar em uma aula de programação porque acha que pode ser muito difícil, você poderia dizer: `Why not give it a shot? You might enjoy it more than you think.` para incentivá-lo a tentar participar dessa aula.

# --fillInTheBlank--

## --sentence--

`Thanks, BLANK give it a BLANK.`

## --blanks--

`I'll`

### --feedback--

It is short for `I will`. Sophie está expressando sua decisão de tentar o que Brian sugeriu.

---

`shot`

### --feedback--

Neste contexto, significa uma tentativa de fazer algo. Sophie está dizendo que tentará o que Brian recomendou.

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "7.3-1.mp3",
      "startTime": 1,
      "startTimestamp": 24.86,
      "finishTimestamp": 26.28
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 2.42,
      "dialogue": {
        "text": "Thanks, I'll give it a shot.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 2.92
    }
  ]
}
```
