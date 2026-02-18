---
id: 67dd5dacf47e8ed984dc90da
title: Tarefa 17
challengeType: 19
dashedName: task-17
showSpeakingButton: true
lang: en-US
---

<!-- (Audio) James: By the way, did we decide on the deadline for the first phase? -->

<!-- SPEAKING -->

# --instructions--

Ouça o áudio e responda a pergunta abaixo.

# --questions--

## --text--

Como Alice poderia responder brevemente que não há decisão sobre o prazo no momento?

## --answers--

`Not yet.`

### --audio-id--

en-b1-67dd5dacf47e8ed984dc90da-SP1

---

`We're still looking for it.`

### --audio-id--

en-b1-67dd5dacf47e8ed984dc90da-SP2

### --feedback--

Isso não está relacionado à pergunta sobre como definir o prazo.

## --video-solution--

1

# --explanation--

`Not yet.` é uma forma curta e natural de dizer que algo não aconteceu ou foi concluído até o momento presente, mas pode acontecer no futuro. Por exemplo:

- Pessoa 1: `Have you sent the email?` - Aqui, a pessoa está perguntando sobre um email que deveria ser enviado.

- Pessoa 2: `Not yet.` – Isso significa que o email ainda não foi enviado, mas que a pessoa ainda planeja enviá-lo.

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
