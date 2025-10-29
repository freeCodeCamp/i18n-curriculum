---
id: 65d5d1bdbd0a7f4e3edb6c8e
title: Tarefa 35
challengeType: 19
dashedName: task-35
---

<!-- (Audio) Tom: Hey, have you ever worked with Anna from HR? -->

# --description--

Ouça o áudio e responda à pergunta.

# --questions--

## --text--

Sobre o que Tom está perguntando?

## --answers--

Se Anna trabalha no RH

### --feedback--

A pergunta do Tom é especificamente sobre se a pessoa já trabalhou com a Anna, não sobre o papel da Anna.

---

Se Alice teve alguma experiência trabalhando com Anna.

---

Se você gosta de trabalhar em RH

### --feedback--

A questão é sobre a experiência passada com Anna, não sobre sentimentos pessoais ao trabalhar em RH.

---

Se Anna já trabalhou

### --feedback--

O foco da pergunta de Tom é na experiência do ouvinte com Anna, não no histórico de trabalho de Anna.

## --video-solution--

2

# --scene--

```json
{
  "setup": {
    "background": "company1-reception.png",
    "characters": [
      {
        "character": "Tom",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.3-2.mp3",
      "startTime": 1,
      "startTimestamp": 0.00,
      "finishTimestamp": 2.88
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
      "finishTime": 3.88,
      "dialogue": {
        "text": "Hey, have you ever worked with Anna from HR?",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 4.38
    }
  ]
}
```
