---
id: 67c4bacefd5097faecca40d4
title: Tarea 22
challengeType: 19
dashedName: task-22
lang: en-US
---

<!-- (Audio) Bob: True, but we could try working even more extra hours just for this project. Wouldn't that make a difference? -->

# --instructions--

Escucha el audio y responde a la pregunta de abajo.

# --questions--

## --text--

¿Qué quiere saber Bob?  

## --answers--

Si deberían cancelar el proyecto.  

### --feedback--

Bob no está preguntando sobre cancelar el proyecto.  

---

Si trabajar menos horas sería mejor.  

### --feedback--

Bob está sugiriendo trabajar más horas, no menos.  

---

Si el equipo ya ha resuelto el problema.  

### --feedback--

Bob está preguntando si su sugerencia ayudará, no si el problema ya está resuelto.  

---

Si trabajar horas extras mejorará la situación.  

## --video-solution--

4  

# --explanation--

Usar negativos en preguntas con verbos auxiliares o modales (como `wouldn't`, `isn't`, `doesn't`), que requieren respuestas directas de `yes`/`no`, sugiere que el hablante espera que la respuesta sea afirmativa — Bob asume, en este caso, que trabajar horas extra ayudará. Otro ejemplo:

`Doesn't this plan seem like a good idea?` - El hablante espera que el oyente esté de acuerdo en que el plan es bueno.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
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
      "filename": "B1_12-1.mp3",
      "startTime": 1,
      "startTimestamp": 29,
      "finishTimestamp": 34.76
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
      "finishTime": 5.18,
      "dialogue": {
        "text": "True, but we could try working even more extra hours just for this project.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "startTime": 5.68,
      "finishTime": 6.76,
      "dialogue": {
        "text": "Wouldn't that make a difference?",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 7.26
    }
  ]
}
```
