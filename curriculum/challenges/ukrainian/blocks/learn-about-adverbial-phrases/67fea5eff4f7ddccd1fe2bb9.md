---
id: 67fea5eff4f7ddccd1fe2bb9
title: Завдання 22
challengeType: 22
dashedName: task-22
lang: en-US
---

<!-- (Audio) Sarah: We might also consider having weekly updates for parts of the project where changes are less frequent. -->

# --instructions--

Прослухайте аудіо та доповніть речення нижче.

# --fillInTheBlank--

## --sentence--

`We might also consider having BLANK updates for parts of the project where changes are less frequent.`

## --blanks--

`weekly`

### --feedback--

Це стосується чогось, що відбувається раз на тиждень.

# --explanation--

`Weekly` використовується, щоб описати щось, що трапляється лише раз на тиждень. Це вказує на частоту події або дії, що відбувається щотижня. Наприклад:

`The team has weekly meetings to discuss project progress.` – Це означає, що зустрічі відбуваються кожного тижня.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_18-1.mp3",
      "startTime": 1,
      "startTimestamp": 44.62,
      "finishTimestamp": 49.14
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
      "finishTime": 3.2,
      "dialogue": {
        "text": "We might also consider having weekly updates",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "startTime": 3.2,
      "finishTime": 5.52,
      "dialogue": {
        "text": "for parts of the project where changes are less frequent.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 6.02
    }
  ]
}
```
