---
id: 67a75a9acd71d2ed6eb9a6fa
title: Tarefa 20
challengeType: 22
dashedName: task-20
---

<!-- (Audio) Linda: Absolutely. And I can also prepare some user scenarios for testing, so we can ensure a smooth user experience. -->

# --instructions--

Ouça o áudio para completar a frase abaixo.

# --fillInTheBlank--

## --sentence--

`Absolutely. And I can also prepare some BLANK for testing, so we can ensure a smooth user experience.`

## --blanks--

`user scenarios`

### --feedback--

Esta frase de duas palavras refere-se a diferentes situações que representam como uma pessoa pode interagir com um produto.

# --explanation--

`User scenarios` refere-se a diferentes situações que descrevem como os usuários interagem com um produto para alcançar um objetivo.Ele ajuda as equipes a testar e melhorar a experiência do usuário.Por exemplo:

`We created user scenarios to see how customers navigate the checkout process.` – Isso significa que a equipe simulou diferentes maneiras pelas quais os usuários completam uma compra para identificar quaisquer problemas.  

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Linda",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_10-1.mp3",
      "startTime": 1,
      "startTimestamp": 20.86,
      "finishTimestamp": 26.68
    }
  },
  "commands": [
    {
      "character": "Linda",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Linda",
      "startTime": 1,
      "finishTime": 6.82,
      "dialogue": {
        "text": "Absolutely. And I can also prepare some user scenarios for testing so we can ensure a smooth user experience.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 7.32
    }
  ]
}
```
