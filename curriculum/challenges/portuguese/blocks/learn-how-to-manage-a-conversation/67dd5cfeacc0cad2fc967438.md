---
id: 67dd5cfeacc0cad2fc967438
title: Tarefa 16
challengeType: 19
dashedName: task-16
---

<!-- (Audio) James: By the way, did we decide on the deadline for the first phase? -->

# --instructions--

Ouça o áudio e responda a pergunta abaixo.

# --questions--

## --text--

O que James quer saber?

## --answers--

Se eles concordaram com o prazo para a primeira fase.

---

Se o projeto foi cancelado.

### --feedback--

James não menciona cancelar o projeto.

---

Se Alice é responsável pela primeira fase.

### --feedback--

James não está perguntando sobre responsabilidades.

---

Se a equipe terminou a fase final.

### --feedback--

James não fala sobre a fase final.

## --video-solution--

1

# --explanation--

`By the way` é usado para introduzir um novo tópico relacionado na conversa.Frequentemente traz à tona algo que o falante acabou de lembrar ou quer verificar.Por exemplo:

`By the way, have you seen the updated report?` – Isso introduz uma nova pergunta relacionada ao que já estava sendo discutido.

# --scene--

```json
{
  "setup": {
    "background": "interview-room2.png",
    "characters": [
      {
        "character": "James",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_15-1.mp3",
      "startTime": 1,
      "startTimestamp": 17.36,
      "finishTimestamp": 20.64
    }
  },
  "commands": [
    {
      "character": "James",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "James",
      "startTime": 1,
      "finishTime": 4.28,
      "dialogue": {
        "text": "By the way, did we decide on the deadline for the first phase?",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 4.78
    }
  ]
}
```
