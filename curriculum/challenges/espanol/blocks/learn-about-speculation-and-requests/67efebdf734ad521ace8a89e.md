---
id: 67efebdf734ad521ace8a89e
title: Tarea 57
challengeType: 22
dashedName: task-57
lang: en-US
---

<!-- (audio) Jake: Sure, Jessica. It could be an unpatched vulnerability. -->

# --instructions--

Escucha el audio para completar la oración de abajo.

# --fillInTheBlank--

## --sentence--

`Sure, Jessica. It could be an BLANK.`

## --blanks--

`unpatched vulnerability`

### --feedback--

Esta frase de dos palabras se refiere a una falla de seguridad en un sistema que carece de una solución o actualización para corregirla y que puede ser explotada.

# --explanation--

`Unpatched` significa que algo no ha sido actualizado o corregido.

`Vulnerability` se refiere a una debilidad en un sistema que puede ser explotada.

Juntas, una `unpatched vulnerability` es una debilidad de seguridad que no ha sido corregida ni actualizada. Los hackers pueden explotar estas debilidades para atacar un sistema. Por ejemplo:

`We need to fix the unpatched vulnerability now.` - El equipo sabe del problema de seguridad pero aún no ha sido reparado.

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
      "startTimestamp": 6.72,
      "finishTimestamp": 10.1
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
      "finishTime": 4.38,
      "dialogue": {
        "text": "Sure, Jessica. It could be an unpatched vulnerability.",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "opacity": 0,
      "startTime": 4.88
    }
  ]
}
```
