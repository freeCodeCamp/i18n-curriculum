---
id: 65d6bc21bbb3fb20d47cd7ed
title: Tarea 43
challengeType: 22
dashedName: task-43
lang: en-US
---

<!-- (Audio) Tom: I don't really know her, to be honest. What's her role?
-->

# --description--

Preguntar `What's her role?` es una forma de averiguar el trabajo o posición de alguien en un grupo o proyecto. `Role` significa la parte o trabajo que alguien realiza en una situación particular. Por ejemplo, si el `role` de alguien en una escuela es maestro, significa que su trabajo es enseñar a los estudiantes.

# --fillInTheBlank--

## --sentence--

`I don't really know her, to be honest. What's BLANK BLANK?`

## --blanks--

`her`

### --feedback--

Esta palabra muestra que Tom está hablando sobre el trabajo o la parte de una persona femenina en algo.

---

`role`

### --feedback--

Esta palabra significa el trabajo o posición que alguien tiene en una situación.

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
      "startTimestamp": 15.98,
      "finishTimestamp": 18.96
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
      "finishTime": 3.98,
      "dialogue": {
        "text": "I don't really know much about her to be honest. What's her role?",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 4.48
    }
  ]
}
```
