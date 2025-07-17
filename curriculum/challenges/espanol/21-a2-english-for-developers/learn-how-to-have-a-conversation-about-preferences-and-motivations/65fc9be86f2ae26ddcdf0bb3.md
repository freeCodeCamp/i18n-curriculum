---
id: 65fc9be86f2ae26ddcdf0bb3
title: Tarea 36
challengeType: 19
dashedName: task-36
---


<!-- (Audio) Maria: "But do you know what else is great? Seeing the team's enthusiasm after solving these issues. When you see the team inspired, it can boost your motivation." -->

# --description--

Escucha a María y responde a la pregunta.

# --questions--

## --text--

¿Qué puede aumentar su motivación según María?

## --answers--

Tener un equipo grande

### --feedback--

Piensa en lo que específicamente hace que el equipo esté más motivado, no solo el tamaño del equipo.

---

Tomar un descanso largo

### --feedback--

Considera si se mencionan los descansos como una forma de aumentar la motivación.

---

Ver al equipo inspirado

---

Resolver problemas rápidamente

### --feedback--

Reflexiona sobre si la velocidad de resolver problemas es lo que María destaca como motivador.

## --video-solution--

3

# --scene--

```json
{
  "setup": {
    "background": "cafe.png",
    "characters": [
      {
        "character": "Maria",
        "position": {"x":50,"y":0,"z":1.5},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "4.1-1.mp3",
      "startTime": 1,
      "startTimestamp": 60.96,
      "finishTimestamp": 68.80
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
      "finishTime": 5.7,
      "dialogue": {
        "text": "But do you know what else is great? Seeing the team's enthusiasm after solving these issues.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "startTime": 6.16,
      "finishTime": 8.84,
      "dialogue": {
        "text": "When you see the team inspired, it can boost your motivation.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 9.34
    }
  ]
}
```
