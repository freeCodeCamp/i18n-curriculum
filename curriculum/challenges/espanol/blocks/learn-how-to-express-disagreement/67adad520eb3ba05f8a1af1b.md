---
id: 67adad520eb3ba05f8a1af1b
title: Tarea 33
challengeType: 19
dashedName: task-33
lang: en-US
---

<!-- (Audio) Bob: So maybe we should focus on both. Find a balance between comfort and technology to ensure everyone has what they need. -->

<!-- SPEAKING -->

# --instructions--

Escucha el audio y responde a la pregunta de abajo.

# --questions--

## --text--

¿Qué debería decir Anna para estar de acuerdo con Bob?

## --answers--

`I don't understand.`

### --feedback--

Esta frase sugiere confusión, pero Anna necesita mostrar acuerdo con la idea de Bob.

---

`That makes sense.`

## --video-solution--

2

# --explanation--

`That makes sense` es una forma natural de mostrar acuerdo. Las personas usan esta frase en conversaciones cuando aceptan o entienden una sugerencia. Por ejemplo:

- Persona 1: `We should optimize the code before adding new features to avoid performance issues.`

- Persona 2: `That makes sense. A slow app will frustrate users.` - Esta persona está de acuerdo y entiende por qué optimizar el código primero es una buena idea.

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
      "filename": "B1_11-1.mp3",
      "startTime": 1,
      "startTimestamp": 52,
      "finishTimestamp": 58.24
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
      "finishTime": 2.54,
      "dialogue": {
        "text": "So maybe we should focus on both.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "startTime": 2.54,
      "finishTime": 7.24,
      "dialogue": {
        "text": "Find a balance between comfort and technology to ensure everyone has what they need.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 7.74
    }
  ]
}
```
