---
id: 6914d94cee63aa7cbcafab2c
title: Attività 2
challengeType: 22
dashedName: task-2
lang: es
---

<!-- (Audio) Mateo: Soy Mateo. Soy ingeniero de software. -->

# --description--

Mateo sta dicendo il suo nome e la sua professione in spagnolo.

Qui, il verbo `ser` viene usato per esprimere la sua identità e professione.

# --instructions--

Ascolta l'audio e completa la frase qui sotto.

# --fillInTheBlank--

## --sentence--

`BLANK Mateo. BLANK ingeniero de software.`

## --blanks--

`Soy`

### --feedback--

Questa forma verbale deriva dal verbo `ser` ed è usata per descrivere chi sei o cosa fai.

---

`Soy`

### --feedback--

Questa forma verbale deriva dal verbo `ser` ed è usata per descrivere chi sei o cosa fai.

# --explanation--


`Soy` è un verbo usato per descrivere chi sei o cosa fai. Per esempio:

`Soy Mateo. Soy ingeniero de software.` - Sono Mateo. Sono un ingegnere del software.

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
