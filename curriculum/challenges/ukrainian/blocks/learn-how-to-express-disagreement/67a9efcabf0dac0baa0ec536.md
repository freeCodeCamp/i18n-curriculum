---
id: 67a9efcabf0dac0baa0ec536
title: Завдання 4
challengeType: 22
dashedName: task-4
lang: en-US
---

<!-- (Audio) Bob: It seems most people prefer using it for office furniture. -->

# --instructions--

Прослухайте аудіо та доповніть речення нижче.

# --fillInTheBlank--

## --sentence--

`It seems most people prefer using it for BLANK.`

## --blanks--

`office furniture`

### --feedback--

Подумайте, що людям потрібно, щоб покращити свій домашній робочий простір. Це включає столи, стільці та полиці.

# --explanation--

`Office furniture` означає столи, стільці, полиці та інші предмети, які використовують у робочому просторі.

У цьому діалозі Боб розповідає про те, як працівники обирають витратити свій дистанційний робочий бюджет. Оскільки робота з дому потребує комфортного та продуктивного облаштування, багато людей використовують цей бюджет, щоб купити офісні меблі, наприклад ергономічні стільці або просторі столи.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Bob",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_11-1.mp3",
      "startTime": 1,
      "startTimestamp": 4.46,
      "finishTimestamp": 8
    }
  },
  "commands": [
    {
      "character": "Bob",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Bob",
      "startTime": 1,
      "finishTime": 4.54,
      "dialogue": {
        "text": "It seems most people prefer using it for office furniture.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 5.04
    }
  ]
}
```
