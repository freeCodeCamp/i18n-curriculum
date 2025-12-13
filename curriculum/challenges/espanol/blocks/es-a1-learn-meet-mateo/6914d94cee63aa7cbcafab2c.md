---
id: 6914d94cee63aa7cbcafab2c
title: Tarea 2
challengeType: 22
dashedName: task-2
lang: es
---

<!-- (Audio) Mateo: Soy Mateo. Soy ingeniero de software. -->

# --description--

Mateo está mencionando su nombre y profesión en español. 

Aquí, el verbo `ser` se usa para expresar su identidad y profesión.

# --instructions--

Escucha el audio para completar la oración de abajo.

# --fillInTheBlank--

## --sentence--

`BLANK Mateo. BLANK ingeniero de software.`

## --blanks--

`Soy`

### --feedback--

Esta forma verbal proviene del verbo `ser` y se usa para describir quién eres o qué haces.

---

`Soy`

### --feedback--

Esta forma verbal proviene del verbo `ser` y se usa para describir quién eres o qué haces.

# --explanation--


`Soy` es un verbo que se usa para describir quién eres o qué haces. Por ejemplo:

`Soy Mateo. Soy ingeniero de software.` - Soy Mateo. Soy ingeniero de software.

# --scene--

```json
{
  "setup": {
    "background": "company3-reception.png",
    "characters": [
      {
        "character": "Mateo",
        "position": {
          "x": 50,
          "y": 18,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_spanish_meet_mateo.mp3",
      "startTime": 1,
      "startTimestamp": 2.35,
      "finishTimestamp": 5.39
    }
  },
  "commands": [
    {
      "character": "Mateo",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Mateo",
      "startTime": 1,
      "finishTime": 1.82,
      "dialogue": {
        "text": "Soy Mateo.",
        "align": "center"
      }
    },
    {
      "character": "Mateo",
      "startTime": 2.5,
      "finishTime": 4.04,
      "dialogue": {
        "text": "Soy ingeniero de software.",
        "align": "center"
      }
    },
    {
      "character": "Mateo",
      "opacity": 0,
      "startTime": 4.54
    }
  ]
}
```

