---
id: 67d3f4b1be72cc09bd3ac4be
title: Attività 4
challengeType: 22
dashedName: task-4
lang: en-US
---

<!-- (Audio) Jessica: There are a few things you must do to ensure compliance. -->

# --instructions--

Ascolta l'audio e completa la frase qui sotto.

# --fillInTheBlank--

## --sentence--

`There are a few things you BLANK BLANK to ensure compliance.`

## --blanks--

`must`

### --feedback--

Questo verbo modale esprime necessità o obbligo.

---

`do`

### --feedback--

Questo verbo segue `must` per indicare un'azione richiesta.

# --explanation--

`Must` è un verbo modale usato per esprimere necessità o obbligo. Per esempio:

- `You must wear a seatbelt while driving.` - È richiesto.

- `We must submit the report by Friday.` - È necessario.

I verbi modali sono sempre seguiti dalla forma base del verbo (senza `to`).

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
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
      "filename": "B1_14-1.mp3",
      "startTime": 1,
      "startTimestamp": 4.02,
      "finishTimestamp": 6.62
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
      "finishTime": 3.6,
      "dialogue": {
        "text": "There are a few things you must do to ensure compliance.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "opacity": 0,
      "startTime": 4.1
    }
  ]
}
```
