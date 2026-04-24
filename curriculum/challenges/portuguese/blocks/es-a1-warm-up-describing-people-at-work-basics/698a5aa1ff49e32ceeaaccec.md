---
id: 698a5aa1ff49e32ceeaaccec
title: Tarefa 6
challengeType: 22
dashedName: task-6
lang: es
---

<!-- (Audio) Camila: Número de teléfono -->

# --description--

Agora Camila está praticando como dizer `número de teléfono` em espanhol, que significa "número de telefone".

Note que a palavra `número` tem um acento na letra `u` e a palavra `teléfono` tem um acento na segunda letra `e`.

# --instructions--

Ouça o áudio e escreva a palavra abaixo.

# --fillInTheBlank--

## --sentence--

`BLANK de BLANK`

## --blanks--

`Número`

### --feedback--

Essa palavra significa literalmente "número" em espanhol. Lembre-se de colocar o acento na letra `u` e de escrever a primeira letra maiúscula.

---

`teléfono`

### --feedback--

Essa palavra significa literalmente "telefone" em espanhol. Lembre-se de colocar o acento na segunda letra `e`.

# --explanation--

`Número de teléfono` significa "número de telefone" em espanhol.

# --scene--

```json
{
  "setup": {
    "background": "company2-dining.png",
    "characters": [
      {
        "character": "Camila",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_warm_up_describing_people_at_work.mp3",
      "startTime": 1,
      "startTimestamp": 10.45,
      "finishTimestamp": 12.39
    }
  },
  "commands": [
    {
      "character": "Camila",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Camila",
      "startTime": 1,
      "finishTime": 2.94,
      "dialogue": {
        "text": "Número de teléfono",
        "align": "center"
      }
    },
    {
      "character": "Camila",
      "opacity": 0,
      "startTime": 3.44
    }
  ]
}
```
