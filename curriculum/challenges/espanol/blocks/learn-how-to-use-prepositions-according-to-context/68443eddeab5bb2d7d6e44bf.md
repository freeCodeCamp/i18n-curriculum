---
id: 68443eddeab5bb2d7d6e44bf
title: Tarea 45
challengeType: 22
dashedName: task-45
lang: en-US
---

<!-- (Audio) Bob: Last, where should we set up the break room? -->

# --instructions--

Escucha el audio para completar la oración de abajo.

# --fillInTheBlank--

## --sentence--

`Last, where should we BLANK the BLANK?`

## --blanks--

`set up`

### --feedback--

Esta frase de dos palabras significa organizar o preparar algo para su uso.

---

`break room`

### --feedback--

Esta frase de dos palabras se refiere a un espacio donde los empleados pueden relajarse del trabajo.

# --explanation--

`Set up` significa preparar o arreglar algo para su uso. Por ejemplo:

`We need to set up the new computers before the meeting.` – Esto significa prepararlos.

`Break room` es un lugar en una oficina donde las personas descansan, comen o se relajan. Por ejemplo:

`Let's meet in the break room after lunch.` – Esto se refiere a un espacio destinado para tomar un descanso.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Bob",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_22-1.mp3",
      "startTime": 1,
      "startTimestamp": 61.04,
      "finishTimestamp": 63.6
    }
  },
  "commands": [
    {
      "character": "Bob",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Bob",
      "startTime": 1,
      "finishTime": 3.56,
      "dialogue": {
        "text": "Last, where should we set up the break room?",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 4.06
    }
  ]
}
```
