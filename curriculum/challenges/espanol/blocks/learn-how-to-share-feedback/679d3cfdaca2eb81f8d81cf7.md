---
id: 679d3cfdaca2eb81f8d81cf7
title: Tarea 97
challengeType: 19
dashedName: task-97
lang: en-US
---

<!-- (Audio) Maria: Can you look into it and see what's causing the problem? -->

# --instructions--

Escucha el audio y responde a la pregunta de abajo.

# --questions--

## --text--

¿Qué le está pidiendo María a James que haga?

## --answers--

Para solucionar el problema de inmediato.

### --feedback--

Maria no le está pidiendo a James que arregle el problema de inmediato.

---

Para reportar el problema al cliente.

### --feedback--

Maria no menciona informar al cliente.

---

Para investigar el problema.

---

Para ignorar el problema por ahora.

### --feedback--

Maria no le está pidiendo a James que ignore el problema.

## --video-solution--

3

# --explanation--

`Can` se usa comúnmente para hacer solicitudes corteses, pidiendo a alguien que haga algo de manera informal. Por ejemplo:

`Can you send me the report by noon?` - Esta es una forma educada de pedirle a alguien que envíe un informe.

En este diálogo, Maria le está pidiendo a James que investigue el problema.

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
      }
    ],
    "audio": {
      "filename": "B1_8-3.mp3",
      "startTime": 1,
      "startTimestamp": 35.5,
      "finishTimestamp": 37.56
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
      "finishTime": 3.06,
      "dialogue": {
        "text": "Can you look into it and see what's causing the problem?",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 3.56
    }
  ]
}
```
