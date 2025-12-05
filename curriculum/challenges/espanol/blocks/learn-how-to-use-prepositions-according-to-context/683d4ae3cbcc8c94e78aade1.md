---
id: 683d4ae3cbcc8c94e78aade1
title: Tarea 19
challengeType: 19
dashedName: task-19
lang: en-US
---

<!-- (Audio) Bob: Exactly. It's in the back, next to the emergency exit. -->

# --instructions--

Escucha el audio y responde a la pregunta de abajo.

# --questions--

## --text--

¿Qué está explicando Bob?

## --answers--

Que la salida de emergencia esté bloqueada.

### --feedback--

Bob no dice que la salida esté bloqueada, solo menciona su ubicación.

---

Que la puerta trasera necesita una nueva cerradura.

### --feedback--

Bob no menciona nada sobre cerraduras ni una puerta trasera que necesite reparaciones.

---

Que la sala de servidores necesita ser limpiada.

### --feedback--

No hay ninguna mención de limpieza en la oración de Bob.

---

Que algo esté ubicado cerca de la salida de emergencia.

## --video-solution--

4

# --explanation--

Bob dice, `Exactly. It's in the back, next to the emergency exit`. Esto significa que está confirmando la ubicación de algo, justo al lado de la salida de emergencia.

Él no habla sobre reparaciones, limpieza o problemas.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
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
      "filename": "B1_22-1.mp3",
      "startTime": 1,
      "startTimestamp": 16.4,
      "finishTimestamp": 19.72
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
      "finishTime": 4.32,
      "dialogue": {
        "text": "Exactly. It's in the back, next to the emergency exit.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 4.82
    }
  ]
}
```
