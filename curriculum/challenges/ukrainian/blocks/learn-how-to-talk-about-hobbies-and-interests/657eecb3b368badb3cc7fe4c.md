---
id: 657eecb3b368badb3cc7fe4c
title: Завдання 61
challengeType: 22
dashedName: task-61
lang: en-US
---

<!-- (Audio) Sarah: I go to at least one convention every year. It's the best moment of the year for me. -->

# --description--

`At least` використовується, коли ви хочете сказати, що найменша кількість або число чогось є прийнятним або достатнім. Це ніби кажете «не менше ніж ця кількість». Наприклад:

`I study English for at least 30 minutes every day.` — це означає, що ви витрачаєте 30 хвилин або більше на вивчення англійської щодня, але ніколи не менше ніж 30 хвилин.

# --fillInTheBlank--

## --sentence--

`I go to BLANK one convention every year. It's the best moment of the year for me.`

## --blanks--

`at least`

### --feedback--

Ці два слова утворюють вираз, який вказує на мінімальну кількість.

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
