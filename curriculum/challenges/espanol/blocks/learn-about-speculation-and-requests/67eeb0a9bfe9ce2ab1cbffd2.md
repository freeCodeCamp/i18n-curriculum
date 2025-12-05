---
id: 67eeb0a9bfe9ce2ab1cbffd2
title: Tarea 29
challengeType: 19
dashedName: task-29
lang: en-US
---

<!-- (audio) Sophie: Great. Also, you should have run the test suite before submitting your code. -->

# --instructions--

Escucha el audio y responde a la pregunta de abajo.

# --questions--

## --text--

¿Qué más debería haber hecho Mark?

## --answers--

Él debería haber reescrito todo su código.

### --feedback--

Mark no necesitó reescribir todo.

---

Él debería haber probado su código primero.

---

Él debería haber eliminado todos los comentarios.

### --feedback--

Los comentarios son útiles y no deben ser eliminados.

---

Él debería haber omitido las pruebas porque toma demasiado tiempo.

### --feedback--

Probar es un paso importante antes de enviar código.

## --video-solution--

2

# --explanation--

Una `test suite` es una colección de pruebas que verifican si un programa funciona correctamente. Por ejemplo:

- `We ran the test suite to check if the app works properly.` - El equipo ejecutó todas las pruebas para asegurar que la app funcione como se espera.

- `We need to add more tests to the test suite to check for edge cases.` - El equipo debería incluir más pruebas para cubrir todas las situaciones posibles.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_17-1.mp3",
      "startTime": 1,
      "startTimestamp": 42.42,
      "finishTimestamp": 45.94
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 4.52,
      "dialogue": {
        "text": "Great. Also, you should have run the test suite before submitting your code.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 5.02
    }
  ]
}
```
