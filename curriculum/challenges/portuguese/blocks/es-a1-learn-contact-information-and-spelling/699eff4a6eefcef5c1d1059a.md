---
id: 699eff4a6eefcef5c1d1059a
title: Tarefa 24
challengeType: 22
dashedName: task-24
lang: es
---

<!-- (Audio) Basti: El dominio es q-u-e-t-z-a-l punto g-t. -->

# --description--

A palavra `dominio` refere-se à parte principal de um endereço web, geralmente a seção que vem depois do `@` em um e-mail ou depois do `www` em um site.

É comumente usado ao fornecer ou confirmar endereços de e-mail e URLs. Por exemplo:

`El dominio es gmail punto com.` – O domínio é gmail.com.

`¿Cuál es el dominio?` – Qual é o domínio?

# --instructions--

Ouça o áudio para completar a frase abaixo.

# --fillInTheBlank--

## --sentence--

`El BLANK es q-u-e-t-z-a-l punto g-t.`

## --blanks--

`dominio`

### --feedback--

Este substantivo refere-se à parte principal de um endereço web ou de e-mail.

# --explanation--

`Dominio` é um substantivo usado para nomear a parte do domínio de um endereço de e-mail ou site.

Isso aparece comumente quando as pessoas soletram ou confirmam informações de contato digital.

# --scene--

```json
{
  "setup": {
    "background": "desk.png",
    "characters": [
      {
        "character": "Sebastián",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_basti_personal_details.mp3",
      "startTime": 1,
      "startTimestamp": 54.95,
      "finishTimestamp": 64.01
    }
  },
  "commands": [
    {
      "character": "Sebastián",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sebastián",
      "startTime": 1,
      "finishTime": 10.06,
      "dialogue": {
        "text": "El dominio es q-u-e-t-z-a-l punto g-t.",
        "align": "center"
      }
    },
    {
      "character": "Sebastián",
      "opacity": 0,
      "startTime": 10.56
    }
  ]
}
```
