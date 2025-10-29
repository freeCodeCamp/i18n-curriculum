---
id: 67c70abfeb7c6fb8cbd3fed7
title: Tarefa 57
challengeType: 19
dashedName: task-57
---

<!-- (Audio) Maria: Hey James, can we talk about my latest meeting with Bob? -->

# --instructions--

Ouça o áudio e responda a pergunta abaixo.  

# --questions--

## --text--

O que Maria quer discutir com James?  

## --answers--

Agenda do Bob para a semana.  

### --feedback--

Maria não menciona a agenda do Bob.  

---

A reunião mais recente dela com Bob.  

---

Um prazo futuro do projeto.  

### --feedback--

Maria não menciona um prazo, apenas sua reunião com Bob.  

---

A solicitação de orçamento do cliente.  

### --feedback--

Maria não se refere a uma solicitação do cliente nesta frase.  

## --video-solution--

2  

# --explanation--

`Can we talk about...` é usado para introduzir um tópico para discussão.É uma forma educada de solicitar uma conversa sobre algo importante.Por exemplo:

`Can we talk about the changes to the project timeline?` - Isso significa que o falante quer discutir os ajustes no cronograma do projeto.

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
      "filename": "B1_12-2.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 2.94
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
      "finishTime": 3.94,
      "dialogue": {
        "text": "Hey James, can we talk about my latest meeting with Bob?",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 4.44
    }
  ]
}
```
