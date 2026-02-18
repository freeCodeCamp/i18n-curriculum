---
id: 67d81e8afbcfb390dd7fc1e0
title: Tarea 133
challengeType: 19
dashedName: task-133
showSpeakingButton: true
lang: en-US
---

<!-- (audio) Lisa: Have you checked which files were compromised? -->

<!-- SPEAKING -->

# --instructions--

Escucha el audio y responde a la pregunta de abajo.

# --questions--

## --text--

Jake aún no ha revisado eso y dice que el equipo debería enfocarse en otra cosa. ¿Qué diría él?  

## --answers--

`Not yet, but we should focus on the critical systems first.`

### --audio-id--

en-b1-67d81e8afbcfb390dd7fc1e0-SP1

---

`I already checked, and everything looks fine.`

### --audio-id--

en-b1-67d81e8afbcfb390dd7fc1e0-SP2

### --feedback--

Jake aún no ha revisado, así que no podría confirmar esto.

## --video-solution--

1

# --explanation--

Asegurar sistemas críticos suele ser la primera prioridad antes de evaluar archivos individuales.

`Not yet.` significa que Jake no ha verificado qué archivos fueron comprometidos.

`We should focus on the critical systems first.` significa que en lugar de revisar archivos, el equipo debe priorizar proteger las partes esenciales del sistema.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Lisa",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_14-3.mp3",
      "startTime": 1,
      "startTimestamp": 37.82,
      "finishTimestamp": 39.88
    }
  },
  "commands": [
    {
      "character": "Lisa",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Lisa",
      "startTime": 1,
      "finishTime": 3.06,
      "dialogue": {
        "text": "Have you checked which files were compromised?",
        "align": "center"
      }
    },
    {
      "character": "Lisa",
      "opacity": 0,
      "startTime": 3.56
    }
  ]
}
```
