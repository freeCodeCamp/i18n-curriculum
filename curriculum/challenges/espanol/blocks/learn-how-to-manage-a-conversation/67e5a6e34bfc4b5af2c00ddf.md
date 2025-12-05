---
id: 67e5a6e34bfc4b5af2c00ddf
title: Tarea 51
challengeType: 22
dashedName: task-51
lang: en-US
---

<!-- (Audio) Jessica: Well, we've discovered a critical bug that might affect the user interface. -->

# --instructions--

Escucha el audio para completar la oración de abajo.

# --fillInTheBlank--

## --sentence--

`Well, we've discovered a BLANK bug that might BLANK the user interface.`

## --blanks--

`critical`

### --feedback--

Esto significa muy serio o importante. A menudo se usa cuando algo necesita atención inmediata.

---

`affect`

### --feedback--

Esto significa cambiar o influir en algo. A menudo describe cómo una cosa causa un cambio en otra.

# --explanation--

`Critical` significa extremadamente importante o serio. Por ejemplo:

`We have a critical deadline tomorrow.` – Esto significa que la fecha límite es muy importante y no se puede perder.

`To affect` significa tener influencia sobre algo o causar un cambio. Por ejemplo:

`The new policy may affect employee performance.` – Esto significa que la política podría cambiar cómo los empleados desempeñan.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
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
      "filename": "B1_15-2.mp3",
      "startTime": 1,
      "startTimestamp": 10.12,
      "finishTimestamp": 13.52
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
      "finishTime": 2.72,
      "dialogue": {
        "text": "Well, we've discovered a critical bug",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "startTime": 2.72,
      "finishTime": 4.4,
      "dialogue": {
        "text": "that might affect the user interface.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "opacity": 0,
      "startTime": 4.9
    }
  ]
}
```
