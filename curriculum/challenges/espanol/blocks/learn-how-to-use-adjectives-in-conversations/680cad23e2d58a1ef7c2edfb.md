---
id: 680cad23e2d58a1ef7c2edfb
title: Tarea 19
challengeType: 22
dashedName: task-19
lang: en-US
---

<!-- (Audio) Sarah: Those are the ones. But, we found something even better in your catalog, these high-capacity ones here. -->

# --instructions--

Escucha el audio para completar la oración de abajo.

# --fillInTheBlank--

## --sentence--

`Those are the ones. But, we found something even better in your catalog, BLANK BLANK ones here.`

## --blanks--

`these`

### --feedback--

Esta palabra se usa para señalar elementos específicos que están cerca del hablante.

---

`high-capacity`

### --feedback--

Esta palabra compuesta significa algo que puede manejar una gran cantidad de trabajo, almacenamiento o energía. Recuerda usar `-`.

# --explanation--

`High-capacity` describe algo diseñado para manejar o contener una gran cantidad en comparación con las versiones estándar. Por ejemplo:

Instalamos baterías de alta capacidad en los nuevos dispositivos. – Esto significa que las baterías pueden almacenar más energía y durar más, lo cual es útil en equipos tecnológicos.

# --scene--

```json
{
  "setup": {
    "background": "company3-reception.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_19-1.mp3",
      "startTime": 1,
      "startTimestamp": 27.3,
      "finishTimestamp": 32.68
    }
  },
  "commands": [
    {
      "character": "Sarah",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sarah",
      "startTime": 1,
      "finishTime": 6.38,
      "dialogue": {
        "text": "Those are the ones, but we found something even better in your catalog, these high capacity ones here.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 6.88
    }
  ]
}
```
