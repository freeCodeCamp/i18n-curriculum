---
id: 683d4ae3cbcc8c94e78aade1
title: Tarefa 19
challengeType: 19
dashedName: task-19
---

<!-- (Audio) Bob: Exactly. It's in the back, next to the emergency exit. -->

# --instructions--

Ouça o áudio e responda a pergunta abaixo.

# --questions--

## --text--

O que Bob está explicando?

## --answers--

Que a saída de emergência está bloqueada.

### --feedback--

Bob não diz que a saída está bloqueada - ele apenas menciona sua localização.

---

Que a porta dos fundos precisa de uma nova fechadura.

### --feedback--

Bob não menciona nada sobre travas ou uma porta dos fundos precisando de reparos.

---

Que a sala do servidor precisa ser limpa.

### --feedback--

Não há menção de limpeza na frase de Bob.

---

Que algo está localizado perto da saída de emergência.

## --video-solution--

4

# --explanation--

Bob diz, `Exactly.Está na parte de trás, ao lado da saída de emergência`.Isso significa que ele está confirmando a localização de algo - bem ao lado da saída de emergência.

Ele não fala sobre reparos, limpeza e problemas.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Bob",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_22-1.mp3",
      "startTime": 1,
      "startTimestamp": 16.4,
      "finishTimestamp": 19.72
    }
  },
  "commands": [
    {
      "character": "Bob",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Bob",
      "startTime": 1,
      "finishTime": 4.32,
      "dialogue": {
        "text": "Exactly. It's in the back, next to the emergency exit.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 4.82
    }
  ]
}
```
