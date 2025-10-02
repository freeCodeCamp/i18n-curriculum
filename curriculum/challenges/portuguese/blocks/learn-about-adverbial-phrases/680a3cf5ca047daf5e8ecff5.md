---
id: 680a3cf5ca047daf5e8ecff5
title: Tarefa 66
challengeType: 22
dashedName: task-66
---

<!-- (Audio) Sophie: This way, we can understand the limits better before we launch it fully. -->

# --instructions--

Ouça o áudio para completar a frase abaixo.

# --fillInTheBlank--

## --sentence--

`This way, we can understand the limits better BLANK we launch it fully.`

## --blanks--

`before`

### --feedback--

Isto é usado para mostrar que algo acontece antes no tempo do que outra coisa.

# --explanation--

`Before` é usado para mostrar que uma ação acontece antes de outra.Por exemplo:

- `Please save your work before you close the program.` – Isso significa que a gravação deve acontecer antes de fechar o programa.

- `He always checks his code carefully before submitting it.` – Isso significa que a verificação acontece primeiro, antes da ação de enviar.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
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
      "filename": "B1_18-2.mp3",
      "startTime": 1,
      "startTimestamp": 40.52,
      "finishTimestamp": 43.78
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
      "finishTime": 3.06,
      "dialogue": {
        "text": "This way, we can understand the limits better",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "startTime": 3.06,
      "finishTime": 4.26,
      "dialogue": {
        "text": "before we launch it fully.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.76
    }
  ]
}
```
