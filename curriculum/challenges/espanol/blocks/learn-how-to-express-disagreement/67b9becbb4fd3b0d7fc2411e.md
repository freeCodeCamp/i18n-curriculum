---
id: 67b9becbb4fd3b0d7fc2411e
title: Tarea 65
challengeType: 22
dashedName: task-65
lang: en-US
---

<!-- (Audio) David: It seems like it could lead to a lot of delays and miscommunication. -->

# --instructions--

Escucha el audio para completar la oración de abajo.

# --fillInTheBlank--

## --sentence--

`It seems like it could lead to a lot of BLANK and BLANK.`

## --blanks--

`delays`

### --feedback--

Esta palabra se refiere a cosas que toman más tiempo de lo esperado.

---

`miscommunication`

### --feedback--

Esta palabra se refiere a malentendidos causados por información poco clara o incorrecta.

# --explanation--

David está preocupado de que el trabajo remoto asincrónico pueda causar `delays` (respuestas y progreso más lentos) y `miscommunication` (personas que se malentienden).

Como los empleados trabajan en diferentes horarios, los mensajes pueden tardar más en ser respondidos y pueden ocurrir malentendidos si la comunicación no es clara.

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
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
      "filename": "B1_11-2.mp3",
      "startTime": 1,
      "startTimestamp": 24.82,
      "finishTimestamp": 28.84
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
      "finishTime": 5.02,
      "dialogue": {
        "text": "It seems like it could lead to a lot of delays and miscommunication.",
        "align": "center"
      }
    },
    {
      "character": "David",
      "opacity": 0,
      "startTime": 5.52
    }
  ]
}
```
