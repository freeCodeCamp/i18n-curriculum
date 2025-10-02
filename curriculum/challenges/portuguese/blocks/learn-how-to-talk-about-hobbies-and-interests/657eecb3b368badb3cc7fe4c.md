---
id: 657eecb3b368badb3cc7fe4c
title: Tarefa 61
challengeType: 22
dashedName: task-61
---

<!-- (Audio) Sarah: I go to at least one convention every year. It's the best moment of the year for me. -->

# --description--

A expressão `at least` é usada quando você quer dizer que a menor quantidade ou número de algo está ok ou é suficiente.É como dizer "no less than this amount".

Por exemplo, se você disser, `I study English for at least 30 minutes every day`, isso significa que você passa 30 minutos ou mais estudando inglês diariamente, mas nunca menos que 30 minutos.

# --fillInTheBlank--

## --sentence--

`I go to BLANK BLANK one convention every year. It's the best moment of the year for me.`

## --blanks--

`at`

### --feedback--

Esta palavra é uma preposição comumente usada em expressões que indicam uma quantidade mínima.

---

`least`

### --feedback--

Esta palavra frequentemente segue a palavra anterior para formar uma frase que significa "a quantidade ou grau mínimo".

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
