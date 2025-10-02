---
id: 657fbde9a43e35ec1ebafe56
title: Tarefa 77
challengeType: 19
dashedName: task-77
---

<!-- (Audio) Sarah: There's a big convention next month. Would you like to come? -->

# --description--

Ouça o áudio e responda à pergunta.

# --questions--

## --text--

O que a frase `Would you like to come?` transmite neste contexto?

## --answers--

Recusando um convite

### --feedback--

A frase não é uma resposta indicando recusa; em vez disso, é um convite sendo feito.

---

Estendendo um convite

---

Expressando gratidão

### --feedback--

A frase é mais sobre fazer um convite do que expressar agradecimento.

---

Solicitando informações

### --feedback--

A frase não está buscando informação; na verdade, é um convite para participar de um evento.

## --video-solution--

2

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.2-4.mp3",
      "startTime": 1,
      "startTimestamp": 18.70,
      "finishTimestamp": 21.36
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
      "finishTime": 3.66,
      "dialogue": {
        "text": "There's a big convention next month. Would you like to come?",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 4.16
    }
  ]
}
```
