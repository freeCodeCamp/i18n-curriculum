---
id: 67a9efcabf0dac0baa0ec536
title: Tarea 4
challengeType: 22
dashedName: task-4
lang: en-US
---

<!-- (Audio) Bob: It seems most people prefer using it for office furniture. -->

# --instructions--

Escucha el audio para completar la oración de abajo.

# --fillInTheBlank--

## --sentence--

`It seems most people prefer using it for BLANK.`

## --blanks--

`office furniture`

### --feedback--

Piensa en lo que las personas necesitan para mejorar su espacio de trabajo en casa. Esto incluye escritorios, sillas y estantes.

# --explanation--

`Office furniture` se refiere a escritorios, sillas, estantes y otros artículos usados en un espacio de trabajo.

En este diálogo, Bob habla sobre cómo los empleados están eligiendo gastar su estipendio para trabajo remoto. Dado que trabajar desde casa requiere una estructura cómoda y productiva, muchas personas usan el estipendio para comprar muebles de oficina como sillas ergonómicas o escritorios espaciosos.

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
      "filename": "B1_11-1.mp3",
      "startTime": 1,
      "startTimestamp": 4.46,
      "finishTimestamp": 8
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
      "finishTime": 4.54,
      "dialogue": {
        "text": "It seems most people prefer using it for office furniture.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 5.04
    }
  ]
}
```
