---
id: 67cadf5ea48ca37df972fac6
title: Tarefa 124
challengeType: 19
dashedName: task-124
lang: en-US
---

<!-- (Audio) Maria: First, they really need more support. -->

# --instructions--

Ouça o áudio e responda a pergunta abaixo.  

# --questions--

## --text--

O que Maria menciona como o pedido mais importante da equipe?  

## --answers--

Eles precisam de mais ajuda.  

---

Eles querem um prazo maior.  

### --feedback--

Maria não menciona estender o prazo.

---

Eles gostariam de reduzir o número de tarefas.

### --feedback--

Maria não menciona reduzir o número de tarefas.  

---

Eles estão pedindo mais reuniões.  

### --feedback--

Maria não menciona reuniões adicionais.

## --video-solution--

1  

# --explanation--

`First` é usado quando você quer numerar ações em ordem de importância ou tempo. Neste caso, Maria está listando o que a equipe precisa, começando pelo que parece ser o pedido mais importante (ter mais suporte). Outro exemplo:

Primeiro, devemos analisar o problema. Então, podemos discutir soluções.` - Isso significa que analisar o problema vem antes de qualquer outra coisa.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Maria",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_12-3.mp3",
      "startTime": 1,
      "startTimestamp": 25.26,
      "finishTimestamp": 26.92
    }
  },
  "commands": [
    {
      "character": "Maria",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Maria",
      "startTime": 1,
      "finishTime": 2.66,
      "dialogue": {
        "text": "First, they really need more support.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 3.16
    }
  ]
}
```
