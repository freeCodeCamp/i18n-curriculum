---
id: 67efdfa59ffafb1f2a56381e
title: Tarea 55
challengeType: 19
dashedName: task-55
showSpeakingButton: true
lang: en-US
---

<!-- (audio) Jessica: Hey Jake, we had a security breach reported last night. I wanted to discuss what might have caused it. Do you have any ideas? -->

<!-- SPEAKING -->

# --instructions--

Escucha el audio y responde a la pregunta de abajo.

# --questions--

## --text--

A Jake no le importa discutir un problema con Jessica. ¿Qué puede decir?

## --answers--

`Sure, Jessica.`

### --audio-id--

en-b1-67efdfa59ffafb1f2a56381e-SP1

---

`I'm too busy right now.`

### --audio-id--

en-b1-67efdfa59ffafb1f2a56381e-SP2

### --feedback--

Esta respuesta no coincide con el prompt porque a Jake no le importa discutir el problema.

## --video-solution--

1

# --explanation-- 

Jessica pregunta, `Do you have any ideas?`, que es una forma de invitar a alguien a compartir sus pensamientos u opiniones.

`Sure, Jessica` es una forma de mostrar que estás abierto a discutir el problema. Otro ejemplo:

- Persona 1: `Do you have any ideas how to fix it?` - Esta persona está pidiendo sugerencias o soluciones.

- Persona 2: `Sure. We could check the server logs and see what's wrong.` - Esta persona está diciendo que sí y está lista para compartir una sugerencia.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
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
      "filename": "B1_17-2.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 6.38
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
      "finishTime": 7.38,
      "dialogue": {
        "text": "Hey Jake, we had a security breach reported last night. I wanted to discuss what might have caused it. Do you have any ideas?",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "opacity": 0,
      "startTime": 7.88
    }
  ]
}
```
