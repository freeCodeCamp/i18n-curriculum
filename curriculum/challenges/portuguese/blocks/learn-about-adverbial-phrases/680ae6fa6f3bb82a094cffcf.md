---
id: 680ae6fa6f3bb82a094cffcf
title: Tarefa 91
challengeType: 19
dashedName: task-91
---

<!-- (Audio) Riker: The UK and Germany saw the most improvement, even more than we expected. -->

<!-- SPEAKING -->

# --instructions--

Ouça o áudio e responda a pergunta abaixo.

# --questions--

## --text--

O que Maria poderia dizer para mostrar que ela está positivamente surpresa com os resultados?

## --answers--

`That's impressive.`

---

`Maybe we should lower our expectations.`

### --feedback--

Isso mostra falta de confiança e não empolgação com os resultados.

## --video-solution--

1

# --explanation--

`Impressive` significa que algo é digno de atenção, admiração ou respeito porque é incomumente bom, grande ou eficaz.Por exemplo:

Sua apresentação foi realmente impressionante!Cobriu tudo de forma clara e confiante.` – Isso significa que a apresentação foi de alta qualidade e deixou um forte impacto positivo.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Riker",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_18-3.mp3",
      "startTime": 1,
      "startTimestamp": 18.42,
      "finishTimestamp": 23.1
    }
  },
  "commands": [
    {
      "character": "Riker",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Riker",
      "startTime": 1,
      "finishTime": 3.32,
      "dialogue": {
        "text": "The UK and Germany saw the most improvement,",
        "align": "center"
      }
    },
    {
      "character": "Riker",
      "startTime": 3.72,
      "finishTime": 5.68,
      "dialogue": {
        "text": "even more than we expected.",
        "align": "center"
      }
    },
    {
      "character": "Riker",
      "opacity": 0,
      "startTime": 6.18
    }
  ]
}
```
