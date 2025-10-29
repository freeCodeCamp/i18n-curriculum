---
id: 67ddb67d2bbf41bb5dce0fb3
title: Tarefa 36
challengeType: 19
dashedName: task-36
---

<!-- (Audio) James: No problem. Talk to you later. -->

# --instructions--

Ouça o áudio e responda a pergunta abaixo.

# --questions--

## --text--

O que podemos concluir da resposta de James?

## --answers--

Ele precisa resolver um problema primeiro.

### --feedback--

James não diz nada sobre outro problema.

---

Ele está encerrando a conversa de forma amigável.

---

Ele quer agendar uma reunião agora.

### --feedback--

Não há menção de agendar nada.

---

Ele está pedindo mais ajuda.

### --feedback--

James não está fazendo uma solicitação.

## --video-solution--

2

# --explanation--

Em uma conversa, você frequentemente omite palavras quando o significado está claro.Em `Talk to you later`, o sujeito `I'll` (contração de `I will`) é omitido.A frase completa seria `I'll talk to you later`.Esse tipo de omissão é comum na fala casual.Outro exemplo:

`See you tomorrow!` - Esta é uma forma mais curta de dizer `I'll see you tomorrow`.

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
      "startTimestamp": 44.74,
      "finishTimestamp": 46.5
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
      "finishTime": 2.76,
      "dialogue": {
        "text": "No problem. Talk to you later.",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 3.26
    }
  ]
}
```
