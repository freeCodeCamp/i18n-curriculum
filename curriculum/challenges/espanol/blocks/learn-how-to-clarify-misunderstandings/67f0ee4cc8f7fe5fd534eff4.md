---
id: 67f0ee4cc8f7fe5fd534eff4
title: Tarea 87
challengeType: 22
dashedName: task-87
lang: en-US
---

<!-- (Audio) Mark: Yeah, that sounds good. Thanks for your help, Lisa. I appreciate it. -->

# --instructions--

Escucha el audio para completar la oración de abajo.

# --fillInTheBlank--

## --sentence--

`Yeah, that BLANK. Thanks for your help, Lisa. I BLANK it.`

## --blanks--

`sounds good`

### --feedback--

Esta frase de dos palabras se usa para mostrar acuerdo o aprobación de una idea o sugerencia. La primera palabra termina con `-s`.

---

`appreciate`

### --feedback--

Esta palabra significa estar agradecido por algo. Muestra agradecimiento por la ayuda, el apoyo o algo hecho para ti.

# --explanation--

`Sounds good` significa que la persona está de acuerdo o aprueba lo que se dijo. Por ejemplo:

`Your idea sounds good.` – Esto significa que el hablante piensa que la idea es buena y está de acuerdo con ella.

`I appreciate` es una forma de decir gracias o mostrar gratitud. Por ejemplo:

`I appreciate your help with the project.` – Esto significa que estás agradecido por la ayuda que recibiste.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Mark",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_16-2.mp3",
      "startTime": 1,
      "startTimestamp": 65.9,
      "finishTimestamp": 69.1
    }
  },
  "commands": [
    {
      "character": "Mark",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Mark",
      "startTime": 1,
      "finishTime": 4.2,
      "dialogue": {
        "text": "Yeah, that sounds good. Thanks for your help, Lisa. I appreciate it.",
        "align": "center"
      }
    },
    {
      "character": "Mark",
      "opacity": 0,
      "startTime": 4.7
    }
  ]
}
```
