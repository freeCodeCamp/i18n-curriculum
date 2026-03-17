---
id: 67ddafcebec26b8e5f46745b
title: Завдання 31
challengeType: 22
dashedName: task-31
lang: en-US
---

<!-- (Audio) James: Anything else we should discuss before our next meeting? -->

# --instructions--

Прослухайте аудіо та доповніть речення нижче.

# --fillInTheBlank--

## --sentence--

`Anything BLANK we should discuss before our next meeting?`

## --blanks--

`else`

### --feedback--

Це означає «крім чогось» або «на додаток до того, що вже було згадано».

# --explanation--

`Else` у виразі `anything else` використовується, щоб запитати, чи є щось на додаток до того, що вже було сказано або зроблено. Наприклад:

`Would you like anything else with your order?` — тут ви питаєте, чи хоче інша людина щось на додаток до того, що вона вже попросила.

# --scene--

```json
{
  "setup": {
    "background": "interview-room2.png",
    "characters": [
      {
        "character": "James",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_15-1.mp3",
      "startTime": 1,
      "startTimestamp": 39.22,
      "finishTimestamp": 42.22
    }
  },
  "commands": [
    {
      "character": "James",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "James",
      "startTime": 1,
      "finishTime": 4,
      "dialogue": {
        "text": "Anything else we should discuss before our next meeting?",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 4.5
    }
  ]
}
```
