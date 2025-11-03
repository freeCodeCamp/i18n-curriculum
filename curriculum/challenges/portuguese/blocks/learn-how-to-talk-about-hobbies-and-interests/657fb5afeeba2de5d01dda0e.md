---
id: 657fb5afeeba2de5d01dda0e
title: Tarefa 81
challengeType: 19
dashedName: task-81
lang: en-US
---

<!-- (Audio) Tom: Thanks for the invite, Sarah. I appreciate it, but I'm not really into sci-fi. -->

# --description--

Ouça o áudio e responda a pergunta abaixo.

# --questions--

## --text--

Como Tom responde ao convite de Sarah para a convenção de ficção científica?

## --answers--

Aceita imediatamente.

### --feedback--

Tom não aceita o convite. Ele menciona sua falta de interesse em sci-fi.

---

Recusa educadamente.

---

Mostra desinteresse.

### --feedback--

Enquanto Tom expressa falta de interesse, sua resposta é mais sobre recusar o convite educadamente do que apenas mostrar desinteresse.

---

Ignora o convite.

### --feedback--

Tom reconhece o convite e responde, então ele não o ignora.

## --video-solution--

2

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Tom",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.2-4.mp3",
      "startTime": 1,
      "startTimestamp": 22.06,
      "finishTimestamp": 26.54
    }
  },
  "commands": [
    {
      "character": "Tom",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Tom",
      "startTime": 1,
      "finishTime": 5.48,
      "dialogue": {
        "text": "Thanks for the invite, Sarah. I appreciate it, but I'm not really into sci-fi.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 5.98
    }
  ]
}
```
