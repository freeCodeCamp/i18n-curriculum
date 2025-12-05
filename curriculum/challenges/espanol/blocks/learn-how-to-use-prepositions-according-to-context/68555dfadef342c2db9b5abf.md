---
id: 68555dfadef342c2db9b5abf
title: Tarea 83
challengeType: 22
dashedName: task-83
lang: en-US
---

<!-- (Audio) David: What about testing? The last update brought up some unexpected challenges. -->

# --instructions--

Escucha el audio para completar la oración de abajo.

# --fillInTheBlank--

## --sentence--

`What about testing? The last update BLANK some BLANK challenges.`

## --blanks--

`brought up`

### --feedback--

Esta frase de dos palabras significa que se introdujo o causó que algo apareciera o se convirtiera en un problema. La primera palabra es la forma en pasado de `bring`.

---

`unexpected`

### --feedback--

Esta palabra significa que algo ocurrió que no fue planeado ni predicho. Termina con `-ed`.

# --explanation--

`Brought up` significa causar que algo aparezca, especialmente un problema o inconveniente. Aquí, `brought` es la forma en pasado de `bring`. Por ejemplo:

`The new feature brought up several bugs.` – Esto significa que la característica hizo que se notaran los errores.

`Unexpected` describe algo que sucede sin advertencia ni planificación. Por ejemplo:

`We had an unexpected delay due to server issues.` – Esto significa que la demora no fue anticipada.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "David",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_22-2.mp3",
      "startTime": 1,
      "startTimestamp": 31.32,
      "finishTimestamp": 35.5
    }
  },
  "commands": [
    {
      "character": "David",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "David",
      "startTime": 1,
      "finishTime": 5.18,
      "dialogue": {
        "text": "What about testing? The last update brought up some unexpected challenges.",
        "align": "center"
      }
    },
    {
      "character": "David",
      "opacity": 0,
      "startTime": 5.68
    }
  ]
}
```
