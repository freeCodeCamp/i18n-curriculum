---
id: 66b56cb9ff3bfb183fa1b7db
title: Tarefa 83
challengeType: 22
dashedName: task-83
---

<!-- (Audio) Anna: When do you think this new module will be ready? -->

# --instructions--

Ouça o áudio para completar a frase abaixo.

# --fillInTheBlank--

## --sentence--

`When do you think BLANK BLANK BLANK will be ready?`

## --blanks--

`this`

### --feedback--

Esta palavra é usada para especificar o módulo que está sendo discutido no momento.

---

`new`

### --feedback--

Algo recente.

---

`module`

### --feedback--

Uma parte ou seção específica do programa de treinamento.

# --explanation--

`Module` refere-se a uma unidade ou seção de um curso ou programa de treinamento.Por exemplo:

- O novo `module` sobre cibersegurança será adicionado na próxima semana. - Aqui, `module` refere-se a uma parte específica do treinamento focada em cibersegurança.

Preste atenção em como as palavras `this`, `new` e `module` são usadas. `This` é usado para especificar o módulo sobre o qual estão falando, `new` mostra que é uma adição recente e `module` se refere a uma seção do treinamento.

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Anna",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_1-2.mp3",
      "startTime": 1,
      "startTimestamp": 47.12,
      "finishTimestamp": 48.96
    }
  },
  "commands": [
    {
      "character": "Anna",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Anna",
      "startTime": 1,
      "finishTime": 2.84,
      "dialogue": {
        "text": "When do you think this new module will be ready?",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 3.34
    }
  ]
}
```
