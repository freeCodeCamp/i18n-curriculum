---
id: 67d3fccf15badf0cae314d1c
title: Tarefa 7
challengeType: 22
dashedName: task-7
---

<!-- (Audio) Mark: Sure, Jessica. What do I need to do? -->

# --instructions--

Ouça o áudio para completar a frase abaixo.

# --fillInTheBlank--

## --sentence--

`Sure, Jessica. What do I BLANK to BLANK?`

## --blanks--

`need`

### --feedback--

Este verbo indica necessidade, significando que algo é obrigatório.

---

`do`

### --feedback--

Este verbo segue `need` para quando se pergunta sobre uma ação.

# --explanation--

`Need to` é usado quando se pergunta sobre ações necessárias.É seguido pela forma base do verbo (`do`).Por exemplo:

- `We need to do more testing before releasing the app.` - É necessário testar o app antes de lançá-lo.

- `We need to do some updates to fix the bugs.` - É necessário atualizar o sistema para resolver problemas.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Mark",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_14-1.mp3",
      "startTime": 1,
      "startTimestamp": 7,
      "finishTimestamp": 9.08
    }
  },
  "commands": [
    {
      "character": "Mark",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Mark",
      "startTime": 1,
      "finishTime": 3.08,
      "dialogue": {
        "text": "Sure, Jessica. What do I need to do?",
        "align": "center"
      }
    },
    {
      "character": "Mark",
      "opacity": 0,
      "startTime": 3.58
    }
  ]
}
```
