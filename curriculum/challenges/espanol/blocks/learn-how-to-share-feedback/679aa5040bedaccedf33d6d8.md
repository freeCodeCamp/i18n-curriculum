---
id: 679aa5040bedaccedf33d6d8
title: Tarea 45
challengeType: 19
dashedName: task-45
lang: en-US
---

<!-- (Audio) Brian: If we all agreed on everything, we might miss important details, don't you think? -->

# --instructions--

Escucha el audio y responde a la pregunta de abajo.

# --questions--

## --text--

¿Por qué Brian piensa que no es bueno cuando todos piensan igual?

## --answers--

Porque podrían pasar por alto detalles importantes.

---

Porque haría que la toma de decisiones fuera más rápida.

### --feedback--

Brian no está diciendo que el acuerdo sea beneficioso.

---

Porque los desacuerdos siempre causan problemas.

### --feedback--

Brian en realidad está diciendo que cierto desacuerdo es útil, no que cause problemas.

---

Porque nadie compartiría sus opiniones.

### --feedback--

Brian no está hablando de personas que se niegan a compartir sus opiniones.

## --video-solution--

1

# --explanation--

La estructura `if + verb in the Simple Past` seguida de `might` en la cláusula de consecuencia se usa para describir una situación hipotética con un resultado posible. Por ejemplo:

`If you studied more, you might pass the exam.` - Esto significa que hay una posibilidad de aprobar si estudias más.

En este diálogo, `If we all agreed on everything, we might miss important details` expresa una posible consecuencia negativa de un acuerdo completo.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Brian",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_8-2.mp3",
      "startTime": 1,
      "startTimestamp": 15.4,
      "finishTimestamp": 19.24
    }
  },
  "commands": [
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "startTime": 1,
      "finishTime": 3.98,
      "dialogue": {
        "text": "If we all agreed on everything, we might miss important details,",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "startTime": 4.26,
      "finishTime": 4.84,
      "dialogue": {
        "text": "don't you think?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 5.34
    }
  ]
}
```
