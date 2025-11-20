---
id: 68fa8b4ecf2cf649ff55f7fd
title: Tarefa 2
challengeType: 19
dashedName: task-2
lang: es
---

# --instructions--

Ouça o áudio e responda a pergunta abaixo.

# --questions--

## --text--

Qual é a letra **segunda** pronunciada neste áudio?

## --answers--

`b`

### --feedback--

A letra `b` tem um som diferente.

---

`x`

---

`z`

### --feedback--

A letra `z` tem um som diferente.

---

`m`

### --feedback--

A letra `m` tem um som diferente.

## --video-solution--

2

# --explanation--

Estas são as três letras pronunciadas no áudio: `b`, `x` e `z`.

A letra `x` é a segunda. Portanto, `x` é a resposta correta.

# --scene--

```json
{
  "setup": {
    "background": "living-room.png",
    "characters": [
      {
        "character": "Julieta",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_alphabet_practice.mp3",
      "startTime": 1,
      "startTimestamp": 8,
      "finishTimestamp": 12.96
    }
  },
  "commands": [
    {
      "character": "Julieta",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Julieta",
      "startTime": 1,
      "finishTime": 1.67,
      "dialogue": {
        "text": "b",
        "align": "center"
      }
    },
    {
      "character": "Julieta",
      "startTime": 3.26,
      "finishTime": 4.05,
      "dialogue": {
        "text": "x",
        "align": "center"
      }
    },
    {
      "character": "Julieta",
      "startTime": 5.21,
      "finishTime": 5.96,
      "dialogue": {
        "text": "z",
        "align": "center"
      }
    },
    {
      "character": "Julieta",
      "opacity": 0,
      "startTime": 6.46
    }
  ]
}
```
