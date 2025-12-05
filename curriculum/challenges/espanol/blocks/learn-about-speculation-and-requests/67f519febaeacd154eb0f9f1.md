---
id: 67f519febaeacd154eb0f9f1
title: Tarea 96
challengeType: 22
dashedName: task-96
lang: en-US
---

<!-- (audio) Jake: For now, let's gather more information and stay vigilant. -->

# --instructions--

Escucha el audio para completar la oración de abajo.

# --fillInTheBlank--

## --sentence--

`For now, let's gather more information and stay BLANK.`

## --blanks--

`vigilant`

### --feedback--

Esta palabra significa estar alerta y observar cuidadosamente posibles peligros o problemas.

# --explanation--

`Vigilant` significa estar atento y cauteloso para detectar posibles amenazas. Por ejemplo:

- El equipo de TI siempre está alerta y cuidadoso al revisar la red.

- Debes ser vigilante al hacer clic en enlaces desconocidos en correos electrónicos. Necesitas tener cuidado y prestar atención a los enlaces sospechosos en los correos.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
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
      "filename": "B1_17-2.mp3",
      "startTime": 1,
      "startTimestamp": 80.02,
      "finishTimestamp": 83.18
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
      "finishTime": 4.16,
      "dialogue": {
        "text": "For now, let's gather more information and stay vigilant.",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "opacity": 0,
      "startTime": 4.66
    }
  ]
}
```
