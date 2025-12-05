---
id: 67caec5ecebab7be7456df7f
title: Tarea 130
challengeType: 19
dashedName: task-130
lang: en-US
---

<!-- (Audio) Maria: They also said the communication isn't great because they often don't hear about changes until it's too late. -->

# --instructions--

Escucha el audio y responde a la pregunta de abajo.  

# --questions--

## --text--

¿Qué otro problema planteó el equipo?

## --answers--

Que reciban actualizaciones demasiado pronto.

### --feedback--

María menciona exactamente lo contrario.

---

Que no quieren comunicarse tanto.

### --feedback--

Maria no menciona la disposición del equipo para comunicarse.  

---

Que a menudo no escuchan sobre los cambios a tiempo.

---

Que piensen que demasiadas personas están involucradas en la comunicación.

### --feedback--

Maria no menciona el número de personas involucradas.

## --video-solution--

3  

# --explanation--

Cuando dices que algo `isn't great`, estás suavizando un mensaje negativo (en lugar de decir `it is bad`, por ejemplo). Hace que la crítica suene más educada o indirecta. Echa un vistazo a las siguientes oraciones:

- `The design is bad.` - Esta es una afirmación negativa fuerte, que a menudo suena descortés.

- El diseño no es el mejor. Quizás podamos mejorarlo.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Maria",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_12-3.mp3",
      "startTime": 1,
      "startTimestamp": 34.9,
      "finishTimestamp": 40.12
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
      "finishTime": 3.18,
      "dialogue": {
        "text": "They also said the communication isn't great",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "startTime": 3.18,
      "finishTime": 6.22,
      "dialogue": {
        "text": "because they often don't hear about changes until it's too late.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 6.72
    }
  ]
}
```
