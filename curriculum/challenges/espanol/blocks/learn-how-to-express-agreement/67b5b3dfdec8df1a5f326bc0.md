---
id: 67b5b3dfdec8df1a5f326bc0
title: Tarea 110
challengeType: 22
dashedName: task-110
lang: en-US
---

<!-- (audio) Maria: We've chosen a subtle color palette, but maybe adding some brighter tones would help. -->

# --instructions--

Escucha el audio para completar la oración de abajo.

# --fillInTheBlank--

## --sentence--

`We've chosen a BLANK color BLANK, but maybe adding some brighter tones would help.`

## --blanks--

`subtle`

### --feedback--

Esto significa algo que no es fuerte ni obvio. Es algo suave o delicado que quizás no notes de inmediato.

---

`palette`

### --feedback--

Esto se refiere al rango de colores usados en un diseño o obra de arte. En este caso, un `color palette` se refiere a la selección de colores elegidos para el diseño de la app o proyecto.

# --explanation--

`Subtle` se refiere a algo que es delicado o no obvio. Por ejemplo:

`The artist used subtle shades of blue in the painting.` - Esto significa que el artista usó tonos claros o suaves de azul que no son muy intensos ni llamativos.

`Palette` se refiere al rango de colores o materiales que un artista o diseñador usa. Por ejemplo:

`The designer chose a warm palette for the website, using reds, oranges, and yellows.` - Esto significa que el diseñador seleccionó un conjunto de colores cálidos, como rojo, naranja y amarillo, para el diseño del sitio web.

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
      "filename": "B1_10-3.mp3",
      "startTime": 1,
      "startTimestamp": 36.2,
      "finishTimestamp": 39.94
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
      "finishTime": 4.74,
      "dialogue": {
        "text": "We've chosen a subtle color palette, but maybe adding some brighter tones would help.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 5.24
    }
  ]
}
```
