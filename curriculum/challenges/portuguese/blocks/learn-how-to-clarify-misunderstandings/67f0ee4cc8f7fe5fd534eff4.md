---
id: 67f0ee4cc8f7fe5fd534eff4
title: Tarefa 87
challengeType: 22
dashedName: task-87
---

<!-- (Audio) Mark: Yeah, that sounds good. Thanks for your help, Lisa. I appreciate it. -->

# --instructions--

Ouça o áudio para completar a frase abaixo.

# --fillInTheBlank--

## --sentence--

`Yeah, that BLANK. Thanks for your help, Lisa. I BLANK it.`

## --blanks--

`sounds good`

### --feedback--

Esta frase de duas palavras é usada para mostrar concordância ou aprovação de uma ideia ou sugestão. A primeira palavra termina com `-s`.

---

`appreciate`

### --feedback--

Esta palavra significa estar grato por algo.Ele mostra agradecimento por ajuda, suporte ou algo feito para você.

# --explanation--

`Sounds good` significa que o falante concorda ou aprova o que foi dito.Por exemplo:

`Your idea sounds good.` – Isso significa que o falante acha que a ideia é boa e concorda com ela.

`I appreciate` é uma forma de dizer obrigado ou demonstrar gratidão.Por exemplo:

`I appreciate your help with the project.` – Isso significa que você está grato pela ajuda que recebeu.

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
      "filename": "B1_16-2.mp3",
      "startTime": 1,
      "startTimestamp": 65.9,
      "finishTimestamp": 69.1
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
      "finishTime": 4.2,
      "dialogue": {
        "text": "Yeah, that sounds good. Thanks for your help, Lisa. I appreciate it.",
        "align": "center"
      }
    },
    {
      "character": "Mark",
      "opacity": 0,
      "startTime": 4.7
    }
  ]
}
```
