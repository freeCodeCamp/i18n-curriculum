---
id: 655b275cadbebf5fc0f0db05
title: Tarea 82
challengeType: 22
dashedName: task-82
lang: en-US
---

<!-- (Audio) Maria: On Tuesdays, I learn Japanese. I take online lessons at 7. -->

# --description--

To `take` puede significar diferentes cosas dependiendo de la situación. En el contexto del aprendizaje, to `take` significa asistir o participar en una clase o curso. Por ejemplo:

- Tomo clases en línea a las 7.

- Ella está tomando un curso de programación este semestre. - Aquí, `taking` significa que está inscrita y asistiendo al curso.

Entonces, cuando dices `take lessons` o `take a course`, te refieres a unirte o asistir a ellos, no a tomar algo físicamente.

# --fillInTheBlank--

## --sentence--

`On Tuesdays, I learn Japanese. I BLANK BLANK lessons at 7.`

## --blanks--

`take`

### --feedback--

Este verbo describe la acción de participar en las lecciones.

---

`online`

### --feedback--

Esta palabra se refiere a un entorno virtual.

# --scene--

```json
{
  "setup": {
    "background": "company2-parking.png",
    "characters": [
      {
        "character": "Maria",
        "position": {"x":50,"y":0,"z":1.5},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "2.2-4.mp3",
      "startTime": 1,
      "startTimestamp": 17.14,
      "finishTimestamp": 20.86
    }
  },
  "commands": [
    {
      "character": "Maria",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Maria",
      "startTime": 1,
      "finishTime": 4.72,
      "dialogue": {
        "text": "On Tuesdays, I learn Japanese. I take online lessons at 7.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 5.22
    }
  ]
}
```
