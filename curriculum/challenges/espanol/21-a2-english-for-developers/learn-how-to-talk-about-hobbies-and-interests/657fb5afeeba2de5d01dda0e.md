---
id: 657fb5afeeba2de5d01dda0e
title: Task 81
challengeType: 19
dashedName: task-81
---

<!-- (Audio) Tom: Thanks for the invite, Sarah. I appreciate it, but I'm not really into sci-fi. -->

# --description--

A veces las personas invitan a sus amigos a eventos o actividades que disfrutan. Cómo respondes a estas invitaciones muestra tu interés o falta de interés en el evento.

# --questions--

## --text--

¿Cómo responde Tom a la invitación de Sarah para la convención de ciencia ficción?

## --answers--

Acepta inmediatamente

### --feedback--

Tom no acepta la invitación. Él menciona su falta de interés en la ciencia ficción.

---

Declina amablemente

---

Muestra desinterés

### --feedback--

Aunque Tom expresa falta de interés, su respuesta es más sobre declinar la invitación amablemente que simplemente mostrar desinterés.

---

Ignora la invitación

### --feedback--

Tom reconoce la invitación y responde, por lo que no la ignora.

## --video-solution--

2

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Tom",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.2-4.mp3",
      "startTime": 1,
      "startTimestamp": 22.06,
      "finishTimestamp": 26.54
    }
  },
  "commands": [
    {
      "character": "Tom",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Tom",
      "startTime": 1,
      "finishTime": 5.48,
      "dialogue": {
        "text": "Thanks for the invite, Sarah. I appreciate it, but I'm not really into sci-fi.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 5.98
    }
  ]
}
```
