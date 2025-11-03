---
id: 657eecb3b368badb3cc7fe4c
title: Tarefa 61
challengeType: 22
dashedName: task-61
lang: en-US
---

<!-- (Audio) Sarah: I go to at least one convention every year. It's the best moment of the year for me. -->

# --description--

`At least` is used when you want to say the smallest amount or number of something is okay or enough. É como dizer "no less than this amount". Por exemplo:

`I study English for at least 30 minutes every day.` - Isso significa que você dedica 30 minutos ou mais estudando inglês diariamente, mas nunca menos que 30 minutos.

# --fillInTheBlank--

## --sentence--

`I go to BLANK one convention every year. It's the best moment of the year for me.`

## --blanks--

`at least`

### --feedback--

Essas duas palavras formam uma expressão que indica uma quantidade mínima.

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
