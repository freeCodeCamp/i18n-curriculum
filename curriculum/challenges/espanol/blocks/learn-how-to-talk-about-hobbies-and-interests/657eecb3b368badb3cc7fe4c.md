---
id: 657eecb3b368badb3cc7fe4c
title: Tarea 61
challengeType: 22
dashedName: task-61
---

<!-- (Audio) Sarah: I go to at least one convention every year. It's the best moment of the year for me. -->

# --description--

La expresión `at least` se utiliza cuando quieres decir que la cantidad más pequeña o número de algo está bien o es suficiente. Es como decir "no menos de esta cantidad".

Por ejemplo, si dices, `I study English for at least 30 minutes every day`, significa que dedicas 30 minutos o más a estudiar inglés diariamente, pero nunca menos de 30 minutos.

# --fillInTheBlank--

## --sentence--

`I go to BLANK BLANK one convention every year. It's the best moment of the year for me.`

## --blanks--

`at`

### --feedback--

Esta palabra es una preposición comúnmente usada en expresiones que indican una cantidad mínima.

---

`least`

### --feedback--

Esta palabra a menudo sigue a la palabra anterior para formar una frase que significa "la cantidad o grado mínimo".

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.2-3.mp3",
      "startTime": 1,
      "startTimestamp": 30.46,
      "finishTimestamp": 34.22
    }
  },
  "commands": [
    {
      "character": "Sarah",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sarah",
      "startTime": 1,
      "finishTime": 4.76,
      "dialogue": {
        "text": "I go to at least one convention every year. It's the best moment of the year for me.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 5.26
    }
  ]
}
```
