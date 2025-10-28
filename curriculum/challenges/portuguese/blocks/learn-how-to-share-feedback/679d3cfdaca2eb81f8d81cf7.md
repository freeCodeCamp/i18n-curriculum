---
id: 679d3cfdaca2eb81f8d81cf7
title: Tarefa 97
challengeType: 19
dashedName: task-97
---

<!-- (Audio) Maria: Can you look into it and see what's causing the problem? -->

# --instructions--

Ouça o áudio e responda a pergunta abaixo.

# --questions--

## --text--

O que Maria está pedindo para James fazer?

## --answers--

Para corrigir o problema imediatamente.

### --feedback--

Maria não está pedindo para James corrigir o problema imediatamente.

---

Para reportar o problema ao cliente.

### --feedback--

Maria não menciona informar o cliente.

---

Para investigar o problema.

---

Para ignorar o problema por enquanto.

### --feedback--

Maria não está pedindo para James ignorar o problema.

## --video-solution--

3

# --explanation--

`Can` é comumente usado para fazer pedidos educados, pedindo a alguém para fazer algo de maneira informal.Por exemplo:

`Can you send me the report by noon?` - Esta é uma forma educada de pedir para alguém enviar um relatório.

Neste diálogo, Maria está pedindo para James investigar o problema.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
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
      "filename": "B1_8-3.mp3",
      "startTime": 1,
      "startTimestamp": 35.5,
      "finishTimestamp": 37.56
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
      "finishTime": 3.06,
      "dialogue": {
        "text": "Can you look into it and see what's causing the problem?",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 3.56
    }
  ]
}
```
