---
id: 68fa8b4ecf2cf649ff55f7fd
title: Tarea 2
challengeType: 19
dashedName: task-2
lang: es
---

# --instructions--

Escucha el audio y responde a la pregunta de abajo.

# --questions--

## --text--

¿Cuál es la letra **segunda** pronunciada en este audio?

## --answers--

`b`

### --feedback--

La letra `b` tiene un sonido diferente.

---

`x`

---

`z`

### --feedback--

La letra `z` tiene un sonido diferente.

---

`m`

### --feedback--

La letra `m` tiene un sonido diferente.

## --video-solution--

2

# --explanation--

Estas son las tres letras pronunciadas en el audio: `b`, `x`, `z`.

La letra `x` es la segunda. Por lo tanto, `x` es la respuesta correcta.

# --scene--

```json
{
  "setup": {
    "background": "living-room.png",
    "characters": [
      {
        "character": "Julieta",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_alphabet_practice.mp3",
      "startTime": 1,
      "startTimestamp": 8,
      "finishTimestamp": 12.96
    }
  },
  "commands": [
    {
      "character": "Julieta",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Julieta",
      "startTime": 1,
      "finishTime": 1.67,
      "dialogue": {
        "text": "b",
        "align": "center"
      }
    },
    {
      "character": "Julieta",
      "startTime": 3.26,
      "finishTime": 4.05,
      "dialogue": {
        "text": "x",
        "align": "center"
      }
    },
    {
      "character": "Julieta",
      "startTime": 5.21,
      "finishTime": 5.96,
      "dialogue": {
        "text": "z",
        "align": "center"
      }
    },
    {
      "character": "Julieta",
      "opacity": 0,
      "startTime": 6.46
    }
  ]
}
```
