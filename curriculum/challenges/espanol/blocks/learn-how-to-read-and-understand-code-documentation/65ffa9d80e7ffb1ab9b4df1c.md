---
id: 65ffa9d80e7ffb1ab9b4df1c
title: Tarea 11
challengeType: 22
dashedName: task-11
lang: en-US
---

<!-- (Audio) Sarah: Once you've found the section you need, you should start by reading the introductory paragraphs to get an overview of what the documentation covers. -->

# --description--

Escucha el audio para completar la oración.

# --fillInTheBlank--

## --sentence--

`BLANK you've BLANK the section you need, you should start by reading the BLANK paragraphs to get an overview of what the documentation BLANK.`

## --blanks--

`Once`

### --feedback--

Indica que la acción a seguir ocurre tan pronto como se encuentra la sección. Capitaliza esta palabra. 

---

`found`

### --feedback--

Se usa aquí para significar localizar o descubrir la sección necesaria en la documentación.

---

`introductory`

### --feedback--

Esta palabra se refiere a los párrafos iniciales que proporcionan una comprensión básica de la sección.

---

`covers`

### --feedback--

Significa lo que la documentación incluye o aborda en términos de contenido.

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "7.2-1.mp3",
      "startTime": 1,
      "startTimestamp": 20.68,
      "finishTimestamp": 27.82
    }
  },
  "commands": [
    {
      "character": "Sarah",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sarah",
      "startTime": 1,
      "finishTime": 8.14,
      "dialogue": {
        "text": "Once you've found the section you need, you should start by reading the introductory paragraphs to get an overview of what the documentation covers.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 8.64
    }
  ]
}
```
