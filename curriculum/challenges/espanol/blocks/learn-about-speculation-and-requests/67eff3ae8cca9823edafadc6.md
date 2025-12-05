---
id: 67eff3ae8cca9823edafadc6
title: Tarea 59
challengeType: 19
dashedName: task-59
lang: en-US
---

<!-- (audio) Jake: Have you checked whether all security updates were applied? -->

# --instructions--

Escucha el audio y responde a la pregunta de abajo.

# --questions--

## --text--

¿Qué está preguntando Jake?

## --answers--

Si las actualizaciones fueron aplicadas.

---

Si se lanzaron nuevas actualizaciones de seguridad.

### --feedback--

Jake no está preguntando si existen nuevas actualizaciones.

---

Quién es responsable de las actualizaciones de seguridad.

### --feedback--

Jake no está preguntando por una persona específica.

---

Cómo funcionan las actualizaciones de seguridad.

### --feedback--

Jake asume que Jessica sabe sobre las actualizaciones de seguridad.

## --video-solution--

1

# --explanation--

Jake quiere saber si alguien ha verificado que todas las actualizaciones han sido instaladas.

Con `Have you checked...?` él pregunta si Jessica ha investigado algo.

Con `whether all security updates were applied` pregunta si las actualizaciones se instalaron correctamente.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Jake",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_17-2.mp3",
      "startTime": 1,
      "startTimestamp": 10.52,
      "finishTimestamp": 13.02
    }
  },
  "commands": [
    {
      "character": "Jake",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jake",
      "startTime": 1,
      "finishTime": 3.5,
      "dialogue": {
        "text": "Have you checked whether all security updates were applied?",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "opacity": 0,
      "startTime": 4
    }
  ]
}
```
