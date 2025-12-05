---
id: 678e5a7c4de8c4ccf4ed6ca9
title: Tarea 66
challengeType: 22
dashedName: task-66
lang: en-US
---

<!-- (audio) Jake: Okay, let's agree to disagree. -->

# --instructions--

Escucha el audio para completar la oración de abajo.

# --fillInTheBlank--

## --sentence--

`Okay, let's BLANK to BLANK.`

## --blanks--

`agree`

### --feedback--

Esta palabra significa tener la misma opinión o alcanzar un entendimiento mutuo. 

---

`disagree`

### --feedback--

Esta palabra significa tener una opinión diferente o no estar de acuerdo.

# --explanation--

`Agree` significa estar de acuerdo o tener la misma opinión que alguien. Por ejemplo:  

`We both agree that improving security is important.` - Esto significa que compartes la misma opinión sobre seguridad con otra persona.

`Disagree` significa tener una opinión diferente o no estar de acuerdo. Por ejemplo:  

`Jake and Maria disagree on which software to use.` - Esto muestra que Jake y Maria tienen opiniones diferentes sobre la elección del software.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Jake",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_9-2.mp3",
      "startTime": 1,
      "startTimestamp": 56.0,
      "finishTimestamp": 58.28
    }
  },
  "commands": [
    {
      "character": "Jake",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jake",
      "startTime": 1,
      "finishTime": 3.28,
      "dialogue": {
        "text": "Okay, let's agree to disagree.",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "opacity": 0,
      "startTime": 3.78
    }
  ]
}
```
