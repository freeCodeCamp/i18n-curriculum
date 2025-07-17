---
id: 656d1becadf67d05d5b27bab
title: Task 149
challengeType: 19
dashedName: task-149
---

# --description--

Así como cuando aprendiste sobre el pronombre `he`, pronombres como `she` se utilizan para referirse a individuos femeninos. Ayudan a evitar la repetición en la conversación. Mira esta parte del diálogo:

Sophie: `Oh, come on, Brian!`

Brian: `Pero es verdad. Ella es la persona a la que acudir si necesitas ayuda!`

Here, `She` is used by Brian to refer to Sophie. En lugar de repetir el nombre de Sophie, Brian usa el pronombre `she` para hacer la conversación más fluida y evitar redundancias.

# --questions--

## --text--

En el diálogo, ¿qué palabra usa Brian para referirse a Sophie sin repetir su nombre?

## --answers--

`he`

### --feedback--

`He` se refiere a un masculino.

---

`they`

### --feedback--

`They` es plural y se refiere a más de una persona.

---

`it`

### --feedback--

`It` generalmente se usa para cosas o animales.

---

`she`

### --feedback--

`She` se refiere a una persona femenina.

## --video-solution--

4

# --scene--

```json
{
  "setup": {
    "background": "cafe.png",
    "characters": [
      {
        "character": "Sophie",
        "position": { "x": 25, "y": 0, "z": 1.3 },
        "opacity": 0
      },
      {
        "character": "Brian",
        "position": { "x": 75, "y": 15, "z": 1.2 },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "1.1-4.mp3",
      "startTime": 1,
      "startTimestamp": 22.6,
      "finishTimestamp": 28.16
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 2.4,
      "dialogue": {
        "text": "Oh, come on, Brian.",
        "align": "left"
      }
    },
    {
      "character": "Brian",
      "startTime": 3.3,
      "finishTime": 6.35,
      "dialogue": {
        "text": "But it's true. She's the person to go to if you need help.",
        "align": "right"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 6.85
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 6.85
    }
  ]
}
```
