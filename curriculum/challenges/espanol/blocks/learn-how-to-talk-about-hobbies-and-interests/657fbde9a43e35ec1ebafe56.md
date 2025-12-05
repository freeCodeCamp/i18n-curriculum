---
id: 657fbde9a43e35ec1ebafe56
title: Tarea 77
challengeType: 19
dashedName: task-77
lang: en-US
---

<!-- (Audio) Sarah: There's a big convention next month. Would you like to come? -->

# --description--

Escucha el audio y responde a la pregunta de abajo.

# --questions--

## --text--

¿Qué es la frase `Would you like to come?` transmitir en este contexto?

## --answers--

Rechazando una invitación.

### --feedback--

La frase no significa decir "no". Se trata de ofrecer una invitación.

---

Extendiendo una invitación.

---

Expresando gratitud.

### --feedback--

La frase no significa "gracias". Se trata de invitar a alguien.

---

Pidiendo información.

### --feedback--

La frase no es una pregunta para obtener información, sino una invitación cortés a un evento.

## --video-solution--

2

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.2-4.mp3",
      "startTime": 1,
      "startTimestamp": 18.70,
      "finishTimestamp": 21.36
    }
  },
  "commands": [
    {
      "character": "Sarah",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sarah",
      "startTime": 1,
      "finishTime": 3.66,
      "dialogue": {
        "text": "There's a big convention next month. Would you like to come?",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 4.16
    }
  ]
}
```
