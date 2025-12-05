---
id: 67cbbe41bccb0840a852edfc
title: Tarea 44
challengeType: 22
dashedName: task-44
lang: en-US
---

<!-- (audio) Sophie: That's good to know. I think I'll go with SafeGuard since security is our top priority, but I'll keep in mind the integration challenges. Thanks for your help, Jake. -->

# --instructions--

Escucha el audio para completar la oración de abajo.

# --fillInTheBlank--

## --sentence--

`That's BLANK. I think I'll BLANK SafeGuard since security is our BLANK, but I'll keep in mind the integration challenges. Thanks for your help, Jake.`

## --blanks--

`good to know`

### --feedback--

Esta frase de tres palabras se usa para reconocer y mostrar agradecimiento por recibir información útil o importante. A menudo se usa cuando aprendes algo útil.

---

`go with`

### --feedback--

Esta frase de dos palabras significa elegir o seleccionar algo, especialmente después de considerar diferentes opciones.

---

`top priority`

### --feedback--

Esta frase de dos palabras se refiere a algo que es lo más importante o urgente.

# --explanation--

`Good to know` se usa para mostrar que la información compartida es útil o apreciada. Por ejemplo:

`It's good to know that the software is easy to use.` - Esto significa que el hablante valora aprender que el software es fácil de usar.

`Go with` significa elegir algo, usualmente después de pensar o comparar. Por ejemplo:

`After much discussion, we went with the cheaper option.` - Esto significa que elegiste la opción menos costosa después de considerar diferentes alternativas.

`Top priority` significa que algo es lo más importante a considerar o en lo que debes enfocarte. A menudo se usa en contextos de trabajo o toma de decisiones. Por ejemplo:

`Our top priority right now is improving the website's performance.` - Esto significa que la tarea más importante en este momento es mejorar el rendimiento del sitio web, convirtiéndolo en un enfoque principal.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_13-1.mp3",
      "startTime": 1,
      "startTimestamp": 67.98,
      "finishTimestamp": 75.32
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 7.1,
      "dialogue": {
        "text": "That's good to know. I think I'll go with Safeguard since security is our top priority, but I'll keep in mind the integration challenges.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "startTime": 7.44,
      "finishTime": 8.34,
      "dialogue": {
        "text": "Thanks for your help, Jake.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 8.84
    }
  ]
}
```
