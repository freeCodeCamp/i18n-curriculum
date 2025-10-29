---
id: 67d7dcfb9afa344d0e95fa4f
title: Tarefa 122
challengeType: 22
dashedName: task-122
---

<!-- (Audio) Sarah: However, outsourcing can lead to communication issues, which might delay the project. -->

# --instructions--

Ouça o áudio para completar a frase abaixo.

# --fillInTheBlank--

## --sentence--

`However, outsourcing can BLANK communication issues, which might BLANK the project.`

## --blanks--

`lead to`

### --feedback--

Esta frase de duas palavras significa causar ou resultar em algo acontecendo.  

---

`delay`

### --feedback--

Isso significa fazer algo levar mais tempo do que o esperado.  

# --explanation--

`Lead to` significa causar algo a acontecer ou resultar em um determinado resultado.Por exemplo:

`Poor planning can lead to missed deadlines.` – Isso significa que se o planejamento não for feito corretamente, os prazos podem não ser cumpridos.  

`Delay` significa fazer algo levar mais tempo do que o esperado ou adiá-lo.Por exemplo:

`The software release was delayed due to unexpected bugs.` – Isso significa que o lançamento foi adiado por causa de problemas técnicos.  

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_13-3.mp3",
      "startTime": 1,
      "startTimestamp": 46.98,
      "finishTimestamp": 51.34
    }
  },
  "commands": [
    {
      "character": "Sarah",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sarah",
      "startTime": 1,
      "finishTime": 5.36,
      "dialogue": {
        "text": "However, outsourcing can lead to communication issues which might delay the project.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 5.86
    }
  ]
}
```
