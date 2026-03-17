---
id: 67d83cac8f7ced9c5df81df9
title: Завдання 144
challengeType: 22
dashedName: task-144
lang: en-US
---

<!-- (audio) Lisa: This will help us understand the extent of the breach and what they might have taken. -->

# --instructions--

Прослухайте аудіо та доповніть речення нижче.

# --fillInTheBlank--

## --sentence--

`This will help us understand the extent of the breach and what they BLANK BLANK.`

## --blanks--

`might`

### --feedback--

Цей модальний дієслово виражає можливість або невпевненість щодо минулої події.

---

`have taken`

### --feedback--

Цей дієслово є `Past Perfect` формою, яка використовується для розмови про те, що могло статися в минулому. Використовуйте два слова.

# --explanation--  

`Might` виражає можливість.  

`Have taken` є `Past Perfect` формою `take`, яка використовується для розмови про можливу минулу дію. Наприклад:

`The attacker might have taken sensitive files.` - Ви не знаєте напевне, але це можливо.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Lisa",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_14-3.mp3",
      "startTime": 1,
      "startTimestamp": 53.8,
      "finishTimestamp": 57.7
    }
  },
  "commands": [
    {
      "character": "Lisa",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Lisa",
      "startTime": 1,
      "finishTime": 4.9,
      "dialogue": {
        "text": "This will help us understand the extent of the breach and what they might have taken.",
        "align": "center"
      }
    },
    {
      "character": "Lisa",
      "opacity": 0,
      "startTime": 5.4
    }
  ]
}
```
