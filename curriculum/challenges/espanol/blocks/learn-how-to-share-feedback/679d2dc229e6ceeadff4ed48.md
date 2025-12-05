---
id: 679d2dc229e6ceeadff4ed48
title: Tarea 92
challengeType: 22
dashedName: task-92
lang: en-US
---

<!-- (Audio) James: Do you think we need to update the software again? If we do, it might delay other projects. -->

# --instructions--

Escucha el audio para completar la oración de abajo.

# --fillInTheBlank--

## --sentence--

`Do you think we need to update the software again? If we BLANK, it might BLANK other projects.`

## --blanks--

`do`

### --feedback--

Esta palabra se usa para evitar repetir el verbo `update` de la oración anterior.

---

`delay`

### --feedback--

Esta palabra significa posponer o hacer que algo ocurra más tarde de lo planeado.

# --explanation--

En lugar de decir `If we update the software, it might delay other projects.`, James lo acorta a `If we do`. La palabra `do` se usa a menudo para evitar repetir el verbo o una frase completa usada en la oración anterior. Por ejemplo:

`She wants to join the meeting, and if she does, she'll need the link.` - En lugar de decir `if she joins the meeting`, puedes usar `does` para reemplazarlo y así evitar la repetición.

`To delay` significa hacer que algo ocurra más tarde de lo planeado. Por ejemplo:

`The flight was delayed due to bad weather.` - Esto significa que el vuelo fue pospuesto y no salió a tiempo.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "James",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_8-3.mp3",
      "startTime": 1,
      "startTimestamp": 26.86,
      "finishTimestamp": 31.46
    }
  },
  "commands": [
    {
      "character": "James",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "James",
      "startTime": 1,
      "finishTime": 2.88,
      "dialogue": {
        "text": "Do you think we need to update the software again?",
        "align": "center"
      }
    },
    {
      "character": "James",
      "startTime": 3.16,
      "finishTime": 5.6,
      "dialogue": {
        "text": "If we do, it might delay other projects.",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 6.1
    }
  ]
}
```
