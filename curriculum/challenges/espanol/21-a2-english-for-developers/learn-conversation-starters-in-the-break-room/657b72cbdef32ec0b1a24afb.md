---
id: 657b72cbdef32ec0b1a24afb
title: Task 30
challengeType: 19
dashedName: task-30
---

<!-- (audio) Tom: Wow! Electric or acoustic? Sophie: Electric, for sure! -->

# --description--

Cuando oigas hablar de diferentes tipos de guitarras, podrían surgir dos tipos comunes: `electric` y `acoustic`. Las `Electric guitars` normalmente necesitan algo llamado un amplificador para que sea lo suficientemente fuerte para oír, mientras que las `acoustic guitars` se pueden escuchar sin ningún equipo adicional.

# --questions--

## --text--

Escucha el diálogo y elige el tipo correcto de guitarra que Sophie prefiere.

## --answers--

Guitarra eléctrica

---

Guitarra acústica

### --feedback--

Sophie deja muy en claro qué tipo de guitarra le gusta. Recuerda que la que prefiere necesita un amplificador para se que se ecuche alto.

## --video-solution--

1

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Tom",
        "position": { "x": 50, "y": 15, "z": 1.2 },
        "opacity": 0
      },
      {
        "character": "Sophie",
        "position": { "x": 50, "y": 0, "z": 1.4 },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "1.3-2.mp3",
      "startTime": 1,
      "startTimestamp": 15.4,
      "finishTimestamp": 19.52
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
      "startTime": 1.1,
      "finishTime": 3.1,
      "dialogue": {
        "text": "Wow! Electric or acoustic?",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 3.2
    },
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 3.3
    },
    {
      "character": "Sophie",
      "startTime": 3.3,
      "finishTime": 5.12,
      "dialogue": {
        "text": "Electric for sure.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 5.62
    }
  ]
}
```
