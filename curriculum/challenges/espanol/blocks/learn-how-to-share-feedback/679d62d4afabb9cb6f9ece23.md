---
id: 679d62d4afabb9cb6f9ece23
title: Tarea 106
challengeType: 19
dashedName: task-106
lang: en-US
---

<!-- (Audio) Maria: If we rush, it could lead to more problems. -->

# --instructions--

Escucha el audio y responde a la pregunta de abajo.

# --questions--

## --text--

¿Qué quiere evitar hacer Maria y por qué?

## --answers--

Ella quiere evitar arreglar el problema.

### --feedback--

María no está diciendo que no deban arreglar el problema.

---

Ella quiere evitar pedir ayuda.

### --feedback--

Maria no menciona pedir ayuda.

---

Ella quiere evitar apresurarse porque podría causar más problemas.

---

Ella quiere evitar actualizar el software.

### --feedback--

Maria no dice que deban evitar actualizar.

## --video-solution--

3

# --explanation--

`To lead to problems` significa que una acción o decisión podría resultar en dificultades o consecuencias negativas. Por ejemplo:

`Skipping the testing phase can lead to serious problems in the software.` - Esto significa que no probar correctamente podría causar problemas técnicos importantes.

En este diálogo, María está preocupada de que apresurarse pueda crear problemas adicionales.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
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
      "filename": "B1_8-3.mp3",
      "startTime": 1,
      "startTimestamp": 47.08,
      "finishTimestamp": 49
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
      "finishTime": 2.92,
      "dialogue": {
        "text": "If we rush, it could lead to more problems.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 3.42
    }
  ]
}
```
