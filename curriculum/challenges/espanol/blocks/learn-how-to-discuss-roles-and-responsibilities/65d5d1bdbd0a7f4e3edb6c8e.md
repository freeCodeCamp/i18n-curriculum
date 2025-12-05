---
id: 65d5d1bdbd0a7f4e3edb6c8e
title: Tarea 35
challengeType: 19
dashedName: task-35
lang: en-US
---

<!-- (Audio) Tom: Hey, have you ever worked with Anna from HR? -->

# --description--

Escucha el audio y responde a la pregunta.

# --questions--

## --text--

¿Sobre qué está preguntando Tom?

## --answers--

Si Anna trabaja en RRHH

### --feedback--

La pregunta de Tom es específicamente sobre si la persona ha trabajado con Anna, no sobre el rol de Anna.

---

Si Alice ha tenido alguna experiencia trabajando con Anna.

---

Si te gusta trabajar en RRHH

### --feedback--

La pregunta es sobre la experiencia pasada con Anna, no sobre sentimientos personales acerca de trabajar en RRHH.

---

Si Anna alguna vez ha trabajado

### --feedback--

El enfoque de la pregunta de Tom está en la experiencia del oyente con Anna, no en la historia laboral de Anna.

## --video-solution--

2

# --scene--

```json
{
  "setup": {
    "background": "company1-reception.png",
    "characters": [
      {
        "character": "Tom",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.3-2.mp3",
      "startTime": 1,
      "startTimestamp": 0.00,
      "finishTimestamp": 2.88
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
      "finishTime": 3.88,
      "dialogue": {
        "text": "Hey, have you ever worked with Anna from HR?",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 4.38
    }
  ]
}
```
