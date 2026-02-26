---
id: 693aebb31ed98f7aea7d1a5d
title: Tarefa 26
challengeType: 19
dashedName: task-26
lang: es
---

<!-- (Audio) Basti: Y mi número es +502 4489 2201. -->

# --description--

Nesta tarefa, você ouvirá Basti compartilhar seu número de telefone completo, incluindo o código do país. O número é falado claramente em dígitos agrupados. 

# --instructions--

Ouça o áudio e responda a pergunta abaixo. 

# --questions--

## --text--

Qual dos seguintes é o número de telefone do Basti?

## --answers--

+502 4489 2201

---

+502 4489 2102

### --feedback--

Os dígitos finais não são o que Basti diz.

---

+520 4489 2201

### --feedback--

O código do país que Basti diz não é 520.

---

+502 4498 2201

### --feedback--

Há um pequeno erro nos quatro dígitos do meio.

## --video-solution--

1

# --explanation--

`Y mi número es +502 4489 2201`, significa "And my number is +502 4489 2201".

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
      "startTimestamp": 64.86,
      "finishTimestamp": 74.84
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
      "finishTime": 10.98,
      "dialogue": {
        "text": "Y mi número es +502 4489 2201.",
        "align": "center"
      }
    },
    {
      "character": "Sebastián",
      "opacity": 0,
      "startTime": 11.48
    }
  ]
}
```
