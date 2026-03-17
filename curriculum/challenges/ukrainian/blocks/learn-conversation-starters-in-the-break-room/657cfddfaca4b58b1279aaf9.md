---
id: 657cfddfaca4b58b1279aaf9
title: Завдання 74
challengeType: 22
dashedName: task-74
lang: en-US
---

<!-- (audio) Sophie: Maria thinks challenges are positive. She encourages us to find solutions together. -->

# --description--

Підтримати `encourage` означає надати комусь підтримку, впевненість або надію. Саме це робить хороший тренер, щоб мотивувати свою команду показати найкращий результат.

# --instructions--

Прослухайте аудіо та доповніть речення нижче.

# --fillInTheBlank--

## --sentence--

`Maria thinks challenges are positive. She BLANK us to find solutions together.`

## --blanks--

`encourages`

### --feedback--

Цей дієслово означає мотивувати або надихати когось щось зробити. Це схоже на те, щоб підбадьорювати когось. Не забудьте про закінчення `-s`.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "1.3-3.mp3",
      "startTime": 1,
      "startTimestamp": 41.96,
      "finishTimestamp": 46.26
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
      "finishTime": 5.30,
      "dialogue": {
        "text": "Maria thinks challenges are positive. She encourages us to find solutions together.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 5.80
    }
  ]
}
```
