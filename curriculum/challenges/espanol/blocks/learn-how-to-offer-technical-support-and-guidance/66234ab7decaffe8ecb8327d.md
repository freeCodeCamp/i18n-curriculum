---
id: 66234ab7decaffe8ecb8327d
title: Tarea 56
challengeType: 22
dashedName: task-56
lang: en-US
---

<!-- (Audio) Sophie: Ok, so if I make changes here, do you think it could affect other functionalities? -->

# --description--

`To affect` significa tener un impacto en o influir en algo. En la programación, `affecting` una parte del sistema significa que los cambios en un área podrían impactar cómo funcionan otras áreas.

Por ejemplo, `Changing the database structure could affect the application's performance` indica que las modificaciones podrían influir en el rendimiento.

# --fillInTheBlank--

## --sentence--

`Ok, so if I make changes here, do you think it could BLANK other BLANK?`

## --blanks--

`affect`

### --feedback--

En este contexto, se refiere al impacto potencial de los cambios de Sophie en otras partes del sistema.

---

`functionalities`

### --feedback--

Son las diversas operaciones o características del sistema que podrían ser impactadas por los cambios.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "9.1-3.mp3",
      "startTime": 1,
      "startTimestamp": 21.3,
      "finishTimestamp": 25.64
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 3.26,
      "dialogue": {
        "text": "Okay, so if I make changes here,",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "startTime": 3.36,
      "finishTime": 5.34,
      "dialogue": {
        "text": "do you think it could affect other functionalities?",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 5.84
    }
  ]
}
```
