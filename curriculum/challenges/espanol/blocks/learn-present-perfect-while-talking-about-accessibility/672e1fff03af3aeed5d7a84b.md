---
id: 672e1fff03af3aeed5d7a84b
title: Tarea 117
challengeType: 19
dashedName: task-117
lang: en-US
---

<!-- (Audio) Anna: That makes sense. Let's keep in touch to monitor the progress and ensure we're meeting our accessibility goals. -->

# --instructions--

Escucha el audio y responde a la pregunta de abajo.

# --questions--

## --text--

¿Qué piensa Anna sobre las ideas de James, y qué sugiere?

## --answers--

Ella no está de acuerdo con las ideas de James y sugiere comenzar un nuevo enfoque.

### --feedback--

Anna expresa acuerdo con James, no desacuerdo, y quiere mantenerse actualizada en lugar de empezar de nuevo.

---

Ella piensa que las ideas de James son confusas y sugiere enfocarse solo en los objetivos de accesibilidad.

### --feedback--

Anna no encuentra las ideas de James confusas; está de acuerdo y quiere monitorear el progreso en sus objetivos compartidos.

---

Ella está de acuerdo con James y sugiere que se mantengan en contacto para monitorear el progreso.

---

Ella piensa que las ideas de James son innecesarias y sugiere detener el proyecto.

### --feedback--

Anna no sugiere detenerse; apoya las ideas de James y quiere mantenerse actualizada.

## --video-solution--

3

# --explanation--

Anna está de acuerdo con el enfoque de James, diciendo `That makes sense`, lo que muestra que entiende y apoya sus ideas. También sugiere `keeping in touch to monitor progress`, indicando su interés en mantenerse al tanto para asegurar que alcancen sus objetivos compartidos.

# --scene--

```json
{
  "setup": {
    "background": "interview-room1.png",
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
      "filename": "B1_4-4.mp3",
      "startTime": 1,
      "startTimestamp": 50.98,
      "finishTimestamp": 55.72
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
      "finishTime": 5.74,
      "dialogue": {
        "text": "That makes sense. Let's keep in touch to monitor the progress and ensure we're meeting our accessibility goals.",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 6.24
    }
  ]
}
```
