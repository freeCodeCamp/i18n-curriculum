---
id: 67e2ae1300a8edcdede767db
title: Tarea 4
challengeType: 22
dashedName: task-4
lang: en-US
---

<!-- (Audio) Mark: Can I ask you about a few of them? -->

# --instructions--

Escucha el audio para completar la oración de abajo.

# --fillInTheBlank--

## --sentence--

`Can I BLANK you BLANK a few of them?`

## --blanks--

`ask`

### --feedback--

Este verbo se usa cuando alguien quiere obtener información o permiso.

---

`about`

### --feedback--

Esta preposición conecta un tema o sujeto relacionado.

# --explanation--

`Ask about` significa solicitar información relacionada con un tema específico. Por ejemplo:

`I asked about the new feature.` – Querías información sobre la característica. 

`Can I ask you about...` es una forma educada de empezar una pregunta cuando quieres información o ayuda. Muestra que estás pidiendo permiso para hablar sobre un tema específico. Por ejemplo:

`Can I ask you about the project deadline?` – Esto significa que quieres hablar sobre la fecha límite y obtener más detalles.  

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Mark",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_16-1.mp3",
      "startTime": 1,
      "startTimestamp": 5.58,
      "finishTimestamp": 7.08
    }
  },
  "commands": [
    {
      "character": "Mark",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Mark",
      "startTime": 1,
      "finishTime": 2.5,
      "dialogue": {
        "text": "Can I ask you about a few of them?",
        "align": "center"
      }
    },
    {
      "character": "Mark",
      "opacity": 0,
      "startTime": 3
    }
  ]
}
```
