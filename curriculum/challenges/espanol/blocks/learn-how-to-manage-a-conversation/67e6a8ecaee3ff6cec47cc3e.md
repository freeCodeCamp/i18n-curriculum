---
id: 67e6a8ecaee3ff6cec47cc3e
title: Tarea 75
challengeType: 19
dashedName: task-75
lang: en-US
---

<!-- (Audio) Jessica: I'll try to be quick so we can get back to the main agenda. -->

# --instructions--

Escucha el audio y responde a la pregunta de abajo.

# --questions--

## --text--

¿Por qué Jessica quiere explicar el bug al equipo rápidamente?

## --answers--

Porque ella quiere volver al tema principal de la reunión.

---

Porque ella quiere salir temprano de la reunión.

### --feedback--

Jessica no menciona salir de la reunión.

---

Porque el equipo ya conoce el bug.

### --feedback--

Jessica está explicando el error porque podría afectar al equipo.

---

Porque ella no piensa que el bug sea importante.

### --feedback--

Jessica piensa que el problema es importante, pero también quiere respetar la agenda de la reunión.

## --video-solution--

1

# --explanation--

`So we can` se usa para mostrar propósito — significa que lo siguiente que mencionas es lo que intentas hacer. Explica por qué alguien está haciendo algo. Por ejemplo:

`I'll finish this now so we can start the next task.` – Esto significa que la persona quiere terminar una cosa para comenzar otra pronto.

`The main agenda` se refiere a los temas principales o al plan de una reunión o evento. Por ejemplo:

`Let's stick to the main agenda and avoid side discussions.` – Esto significa mantenerse enfocado en los puntos más importantes de la reunión.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
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
      "filename": "B1_15-2.mp3",
      "startTime": 1,
      "startTimestamp": 45.8,
      "finishTimestamp": 48.14
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
      "finishTime": 3.34,
      "dialogue": {
        "text": "I'll try to be quick so we can get back to the main agenda.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "opacity": 0,
      "startTime": 3.84
    }
  ]
}
```
