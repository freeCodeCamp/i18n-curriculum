---
id: 67f36533ffaeffe3ac2dad2b
title: Tarea 131
challengeType: 19
dashedName: task-131
lang: en-US
---

<!-- (Audio) Jessica: Oh, that might be a mix-up. The budget tracking feature is planned for the next update, not this one. -->

# --instructions--

Escucha el audio y responde a la pregunta de abajo.

# --questions--

## --text--

¿Qué está explicando Jessica?

## --answers--

Hubo un problema con el calendario de la actualización actual.

### --feedback--

Jessica está hablando sobre el tiempo de la característica, no sobre el calendario de la actualización en sí.

---

La función de seguimiento de presupuesto estará en la próxima actualización, no en la actual.

---

La función de seguimiento de presupuesto ha sido eliminada en la actualización actual.

### --feedback--

Jessica no menciona que la característica ha sido eliminada.

---

La función fue incluida por error en esta actualización.

### --feedback--

Jessica no dice que la función fue incluida por error.

## --video-solution--

2

# --explanation--

Jessica dice, `The budget tracking feature is planned for the next update`, explicando que la función no está incluida en la actualización actual pero se añadirá en la siguiente.

Esto aclara la confusión sobre el momento de la función.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Jessica",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_16-3.mp3",
      "startTime": 1,
      "startTimestamp": 60.98,
      "finishTimestamp": 65.76
    }
  },
  "commands": [
    {
      "character": "Jessica",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jessica",
      "startTime": 1,
      "finishTime": 2.32,
      "dialogue": {
        "text": "Oh, that might be a mix-up.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "startTime": 2.58,
      "finishTime": 5.78,
      "dialogue": {
        "text": "The budget tracking feature is planned for the next update, not this one.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "opacity": 0,
      "startTime": 6.28
    }
  ]
}
```
