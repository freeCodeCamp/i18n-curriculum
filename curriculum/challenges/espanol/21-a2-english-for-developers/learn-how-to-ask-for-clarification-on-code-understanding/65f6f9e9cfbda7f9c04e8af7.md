---
id: 65f6f9e9cfbda7f9c04e8af7
title: Tarea 41
challengeType: 19
dashedName: task-41
---

<!-- (Audio) Brian: Understood. We can investigate this together, and by the end of it, we should have a clearer picture of what's happening. -->

# --description--

La frase `by the end of it` se usa comúnmente en inglés para referirse a la conclusión o parte final de un proceso o período de tiempo. Implica que al completar una cierta actividad, se logrará un resultado o comprensión específica.

# --questions--

## --text--

En el diálogo, ¿qué significa Brian con `by the end of it`?

## --answers--

Detendrán la investigación.

### --feedback--

Esta frase trata sobre llegar a una conclusión, no necesariamente detener la actividad.

---

Comenzarán otra actividad.

### --feedback--

Brian se refiere al final de la investigación actual, no a comenzar algo nuevo.

---

Tomarán un descanso.

### --feedback--

La frase se enfoca en lograr una comprensión al final del proceso, no en tomar un descanso.

---

Tendrán una comprensión más clara de la situación después de la investigación.

## --video-solution--

4

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Brian",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "6.3-3.mp3",
      "startTime": 1,
      "startTimestamp": 20.74,
      "finishTimestamp": 26.28
    }
  },
  "commands": [
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "startTime": 1,
      "finishTime": 6.54,
      "dialogue": {
        "text": "Understood. We can investigate this together, and by the end of it, we should have a clearer picture of what's happening.",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 7.04
    }
  ]
}
```
