---
id: 661bddbdbbc09e2b8fac0801
title: Завдання 76
challengeType: 22
dashedName: task-76
lang: en-US
---

<!-- (Audio) Alice: Also, it's used for identity verification at airports and secure facilities. -->

# --description--

Прийменник `at` вказує на точку на карті. Він повідомляє конкретне місце або позицію. Це допомагає зрозуміти, де щось відбувається або де хтось знаходиться.

Приклади:

`We'll meet at the coffee shop.` (у цьому реченні `at` використовується, щоб уточнити місце проведення зустрічі — кав’ярня).

`I'll be waiting for you at the bus stop.` (тут `at` використовується, щоб вказати місце, де хтось чекатиме — автобусна зупинка).

Прослухайте речення і заповніть пропуск.

# --fillInTheBlank--

## --sentence--

`Also, it's used for identity verification BLANK airports and secure facilities.`

## --blanks--

`at`

### --feedback--

Прийменник, який допомагає зрозуміти, де щось знаходиться або відбувається.

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Alice",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "4.2-4.mp3",
      "startTime": 1,
      "startTimestamp": 15.22,
      "finishTimestamp": 19.04
    }
  },
  "commands": [
    {
      "character": "Alice",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Alice",
      "startTime": 1,
      "finishTime": 4.82,
      "dialogue": {
        "text": "Also, it's used for identity verification at airports and secure facilities.",
        "align": "center"
      }
    },
    {
      "character": "Alice",
      "opacity": 0,
      "startTime": 5.32
    }
  ]
}
```
