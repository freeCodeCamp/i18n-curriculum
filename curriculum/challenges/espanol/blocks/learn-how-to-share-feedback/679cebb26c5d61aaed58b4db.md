---
id: 679cebb26c5d61aaed58b4db
title: Tarea 79
challengeType: 19
dashedName: task-79
lang: en-US
---

<!-- (Audio) Maria: Did you hear anything about this? James: No, I didn't. What did he say? -->

# --instructions--

Escucha el audio y responde a la pregunta de abajo.

# --questions--

## --text--

¿Qué sabe James sobre el problema con la última actualización?

## --answers--

Él sabe exactamente cuál es el problema.

### --feedback--

James claramente dice que no escuchó nada.

---

Él no sabe nada al respecto.

---

Él ya habló con el cliente.

### --feedback--

James no menciona haber hablado con el cliente.

---

Recibiste un correo electrónico sobre el problema.

### --feedback--

James afirma que no escuchó nada.

## --video-solution--

2

# --explanation--

Las respuestas cortas con verbos auxiliares repiten el auxiliar de la pregunta para confirmar o negar algo. En este caso, María pregunta, `Did you hear anything?`, y James responde, `No, I didn't.` en lugar de solo decir `No.` Aquí tienes algunos otros ejemplos: 

- `Are you coming to the meeting?` → `Yes, I am.`

- `Have they finished the report?` → `No, they haven't.`

- `Will she be here on time?` → `Yes, she will.`

Las respuestas cortas hacen que las respuestas suenen naturales y completas mientras evitan la repetición de la oración completa.

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
      },
      {
        "character": "James",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_8-3.mp3",
      "startTime": 1,
      "startTimestamp": 5.62,
      "finishTimestamp": 9.24
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
      "finishTime": 2.32,
      "dialogue": {
        "text": "Did you hear anything about this?",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 2.49
    },
    {
      "character": "James",
      "opacity": 1,
      "startTime": 2.49
    },
    {
      "character": "James",
      "startTime": 2.66,
      "finishTime": 4.62,
      "dialogue": {
        "text": "No, I didn't. What did he say?",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 5.12
    }
  ]
}
```
