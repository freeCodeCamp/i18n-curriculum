---
id: 66c4ef1cb275e86febc9fe2c
title: Tarea 113
challengeType: 22
dashedName: task-113
lang: en-US
---

<!-- Audio Reference:
Sarah: It should, but it's not displaying because the live server extension might not be running. -->

<!-- Audio Reference:
Sarah: It should, but it's not displaying because the live server extension might not be running. -->

# --instructions--

Escucha el audio para completar la oración de abajo.

# --fillInTheBlank--

## --sentence--

`It should, but it's not BLANK because the live server extension might not be BLANK.`

## --blanks--

`displaying`

### --feedback--

La acción de mostrar o renderizar algo. Esta palabra termina en `-ing`.

---

`running`

### --feedback--

Indica que la extensión está activa y funcionando. Esta palabra termina en `-ing`.

# --explanation--

Un gerundio es una forma verbal que termina en `-ing` y funciona como un sustantivo. En esta oración, `displaying` y `running` son gerundios que describen acciones en curso. Por ejemplo:

- `Updating the software is essential.` - Aquí, `Updating` es un gerundio que describe una acción.

En la oración de Sarah, `displaying` y `running` describen acciones relacionadas con la extensión del servidor en vivo y cómo funciona.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
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
      "filename": "B1_1-3.mp3",
      "startTime": 1,
      "startTimestamp": 12.62,
      "finishTimestamp": 16.66
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
      "finishTime": 2.62,
      "dialogue": {
        "text": "It should, but it's not displaying",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "startTime": 2.62,
      "finishTime": 5.04,
      "dialogue": {
        "text": "because the live server extension might not be running.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 5.54
    }
  ]
}
```
