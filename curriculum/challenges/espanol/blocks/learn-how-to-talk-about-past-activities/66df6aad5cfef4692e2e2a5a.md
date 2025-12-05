---
id: 66df6aad5cfef4692e2e2a5a
title: Tarea 74
challengeType: 22
dashedName: task-74
lang: en-US
---

<!--
AUDIO REFERENCE:
Linda: Not yet, but I anticipate we'll start receiving more detailed reports as more users navigate the updated interface.
-->

# --instructions--

Escucha el audio para completar la oración de abajo.

# --fillInTheBlank--

## --sentence--

`Not yet, but I anticipate we'll start receiving more detailed reports BLANK BLANK BLANK BLANK the updated interface.`

## --blanks--

`as`

### --feedback--

Una palabra que muestra dos acciones ocurriendo al mismo tiempo o una acción dependiendo de otra.

---

`more`

### --feedback--

Una palabra que indica una cantidad o número mayor.

---

`users`

### --feedback--

Una palabra que se refiere a las personas que navegan por la interfaz actualizada.

---

`navigate`

### --feedback--

Una palabra que significa moverse alrededor o a través de algo, como un sitio web o una app.

# --explanation--

`As` puede usarse para significar "mientras" o "cuando", indicando que una acción ocurrirá mientras otra acción está teniendo lugar. Por ejemplo:

- `As I was walking home, they called me.` - Te llamaron mientras caminabas a casa.

- Mejorarás en la codificación mientras practiques más.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
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
      "filename": "B1_3-2.mp3",
      "startTime": 1,
      "startTimestamp": 34.22,
      "finishTimestamp": 40.44
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
      "finishTime": 4.82,
      "dialogue": {
        "text": "Not yet, but I anticipate we'll start receiving more detailed reports",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "startTime": 4.82,
      "finishTime": 7.22,
      "dialogue": {
        "text": "as more users navigate the updated interface.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 7.72
    }
  ]
}
```
