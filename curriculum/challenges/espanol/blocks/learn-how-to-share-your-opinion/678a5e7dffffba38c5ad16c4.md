---
id: 678a5e7dffffba38c5ad16c4
title: Tarea 17
challengeType: 22
dashedName: task-17
lang: en-US
---

<!-- (audio) Linda: In my case, I prefer Python because it's great for data analysis. Plus, it's really good for building prototypes quickly. -->

# --instructions--

Escucha el audio para completar la oración de abajo.

# --fillInTheBlank--

## --sentence--

`In my case, I prefer Python because it's BLANK data analysis. Plus, it's really BLANK building prototypes quickly.`

## --blanks--

`great for`

### --feedback--

Esta frase de dos palabras significa que algo es muy adecuado o efectivo para un propósito particular.

---

`good for`

### --feedback--

Esta frase de dos palabras significa que algo es adecuado o beneficioso para una tarea o situación específica.

# --explanation--

Tanto `great for` como `good for` significan que algo es muy útil, adecuado o efectivo para un propósito específico. Por ejemplo:

- `This new software is great for managing large projects.` - Esto significa que el software es muy adecuado y efectivo para gestionar proyectos grandes.

- `Cloud storage is good for backing up large volumes of data.` - Esto significa que el almacenamiento en la nube es altamente efectivo y adecuado para guardar de forma segura grandes cantidades de datos.

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Linda",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_9-1.mp3",
      "startTime": 1,
      "startTimestamp": 16.04,
      "finishTimestamp": 21.9
    }
  },
  "commands": [
    {
      "character": "Linda",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Linda",
      "startTime": 1,
      "finishTime": 4.3,
      "dialogue": {
        "text": "In my case, I prefer Python because it's great for data analysis.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "startTime": 4.64,
      "finishTime": 6.86,
      "dialogue": {
        "text": "Plus it's really good for building prototypes quickly.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 7.36
    }
  ]
}
```
