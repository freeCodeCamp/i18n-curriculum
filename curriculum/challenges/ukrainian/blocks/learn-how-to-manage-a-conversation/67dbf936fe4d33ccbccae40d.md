---
id: 67dbf936fe4d33ccbccae40d
title: Завдання 1
challengeType: 22
dashedName: task-1
lang: en-US
---

<!-- (Audio) Alice: Hey, James. Sorry for the interruption earlier. -->

# --instructions--

Прослухайте аудіо та доповніть речення нижче.

# --fillInTheBlank--

## --sentence--

`Hey, James. BLANK for the interruption earlier.`

## --blanks--

`Sorry`

### --feedback--

Це використовується, щоб вибачитися за те, що сталося. Не забудьте про велику літеру на початку.

# --explanation--

`To be sorry for something` використовується, коли вибачаються за дію, яка могла спричинити незручності або шкоду. Наприклад:

`I'm sorry for being late to the meeting.` — це означає, що мовник шкодує про запізнення і вибачається. Зверніть увагу, що `being` у формі `-ing`, оскільки йде одразу після `for` (прийменника).

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
      "startTimestamp": 0,
      "finishTimestamp": 2.55
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
      "finishTime": 3.55,
      "dialogue": {
        "text": "Hey, James. Sorry for the interruption earlier.",
        "align": "center"
      }
    },
    {
      "character": "Alice",
      "opacity": 0,
      "startTime": 4.05
    }
  ]
}
```
