---
id: 67c03f86bccfec0be6de656b
title: Tarea 113
challengeType: 19
dashedName: task-113
lang: en-US
---

<!-- (audio) Anna: I see your point, but flexibility might be better. Think about it. -->

# --instructions--

Escucha el audio y responde a la pregunta de abajo.

# --questions--

## --text--

¿Qué está comunicando Anna?

## --answers--

Ella está completamente en desacuerdo con Bob y rechaza su preocupación.

### --feedback--

Anna reconoce el punto de Bob antes de dar su propia opinión.

---

Ella entiende la preocupación de Bob pero aún piensa que la flexibilidad es una mejor opción.

---

Ella no entiende la preocupación de Bob.

### --feedback--

Anna entiende el argumento de Bob.

---

Ella está de acuerdo con Bob y cambia de opinión.

### --feedback--

Anna no está completamente de acuerdo con Bob.

## --video-solution--

2

# --explanation--

Anna usa `I see your point, but` para mostrar que entiende la preocupación de Bob mientras presenta una opinión diferente.

Ella cree que la flexibilidad es una mejor solución que ceñirse a una sola categoría.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Anna",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_11-3.mp3",
      "startTime": 1,
      "startTimestamp": 31.78,
      "finishTimestamp": 34.88
    }
  },
  "commands": [
    {
      "character": "Anna",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Anna",
      "startTime": 1,
      "finishTime": 4.1,
      "dialogue": {
        "text": "I see your point, but flexibility might be better. Think about it.",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 4.7
    }
  ]
}
```
