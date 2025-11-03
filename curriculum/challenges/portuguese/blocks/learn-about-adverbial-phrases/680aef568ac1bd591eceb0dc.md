---
id: 680aef568ac1bd591eceb0dc
title: Tarefa 98
challengeType: 22
dashedName: task-98
lang: en-US
---

<!-- (Audio) Riker: The ads cost more than we thought they would. -->

# --instructions--

Ouça o áudio para completar a frase abaixo.

# --fillInTheBlank--

## --sentence--

`The BLANK cost more than we thought they would.`

## --blanks--

`ads`

### --feedback--

Esta é uma forma abreviada para algo que significa mensagens ou conteúdo criado para promover um produto, serviço ou evento. Use a forma plural.

# --explanation--

Um `ad` (abreviação de `advertisement`) é um conteúdo criado para chamar a atenção das pessoas e incentivá-las a comprar algo, usar um serviço ou tomar uma ação. Anúncios podem aparecer em redes sociais, sites, TV, rádio e mais. Por exemplo:

- `They launched a new ad campaign for their latest product.` – Isso significa que a empresa criou e compartilhou conteúdo promocional para aumentar o interesse em um produto.

- `We saw a lot of online ads for the holiday sale.` – Isso significa que havia muitas mensagens promocionais sobre a venda em sites ou aplicativos.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Riker",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_18-3.mp3",
      "startTime": 1,
      "startTimestamp": 30.7,
      "finishTimestamp": 32.46
    }
  },
  "commands": [
    {
      "character": "Riker",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Riker",
      "startTime": 1,
      "finishTime": 2.76,
      "dialogue": {
        "text": "The ads cost more than we thought they would.",
        "align": "center"
      }
    },
    {
      "character": "Riker",
      "opacity": 0,
      "startTime": 3.26
    }
  ]
}
```
