---
id: 67c03f86bccfec0be6de656b
title: Tarefa 113
challengeType: 19
dashedName: task-113
---

<!-- (audio) Anna: I see your point, but flexibility might be better. Think about it. -->

# --instructions--

Ouça o áudio e responda a pergunta abaixo.

# --questions--

## --text--

O que Anna está comunicando?

## --answers--

Ela discorda completamente de Bob e rejeita a preocupação dele.

### --feedback--

Anna reconhece o ponto de Bob antes de dar sua própria opinião.

---

Ela entende a preocupação do Bob mas ainda acha que a flexibilidade é uma opção melhor.

---

Ela não entende a preocupação do Bob.

### --feedback--

Anna entende o argumento de Bob.

---

Ela concorda com Bob e muda de ideia.

### --feedback--

Anna não concorda totalmente com Bob.

## --video-solution--

2

# --explanation--

Anna usa `I see your point, but` para mostrar que ela entende a preocupação do Bob enquanto apresenta uma opinião diferente.

Ela acredita que flexibilidade é uma solução melhor do que se prender a uma categoria.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Anna",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_11-3.mp3",
      "startTime": 1,
      "startTimestamp": 31.78,
      "finishTimestamp": 34.88
    }
  },
  "commands": [
    {
      "character": "Anna",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Anna",
      "startTime": 1,
      "finishTime": 4.1,
      "dialogue": {
        "text": "I see your point, but flexibility might be better. Think about it.",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 4.7
    }
  ]
}
```
