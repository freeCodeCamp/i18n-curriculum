---
id: 67ddb23caaa58aa09eabf0f8
title: Завдання 33
challengeType: 22
dashedName: task-33
lang: en-US
---

<!-- (Audio) Alice: I think that's it for now. Thanks for your help. -->

# --instructions--

Прослухайте аудіо та доповніть речення нижче.

# --fillInTheBlank--

## --sentence--

`I think that's it for BLANK. Thanks for your help.`

## --blanks--

`now`

### --feedback--

Це означає «на даний момент» і показує, що ситуація може змінитися пізніше.

# --explanation--

`For now` означає «на цей момент» або «поки що». Це натякає, що наразі все завершено, але пізніше може статися більше. Наприклад:

`Let's stop working here for now and continue tomorrow.` — це означає, що вони зараз роблять паузу, але продовжать пізніше.

# --scene--

```json
{
  "setup": {
    "background": "interview-room2.png",
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
      "filename": "B1_15-1.mp3",
      "startTime": 1,
      "startTimestamp": 42.46,
      "finishTimestamp": 44.64
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
      "finishTime": 3.18,
      "dialogue": {
        "text": "I think that's it for now. Thanks for your help.",
        "align": "center"
      }
    },
    {
      "character": "Alice",
      "opacity": 0,
      "startTime": 3.68
    }
  ]
}
```
