---
id: 67baf3ed288e8b06f4ab0dfb
title: Завдання 76
challengeType: 22
dashedName: task-76
lang: en-US
---

<!-- (Audio) David: It builds team spirit and makes problem-solving easier. -->

# --instructions--

Прослухайте аудіо та доповніть речення нижче.

# --fillInTheBlank--

## --sentence--

`It builds BLANK and makes BLANK easier.`

## --blanks--

`team spirit`

### --feedback--  

Ці два слова разом означають відчуття єдності та співпраці серед колег. Перше слово позначає групу, яка працює разом, а друге слово пов’язане з спільним ентузіазмом або мотивацією.

---

`problem-solving`

### --feedback--  

Це складне слово означає процес знаходження рішень для проблем. Перша частина стосується проблеми, яку потрібно вирішити, а друга — дієслово, що означає пошук рішення. Не забудьте використати `-` між двома частинами.

# --explanation--

Девід вважає, що робота в офісі допомагає зміцнити `team spirit` (відчуття зв’язку та єдності серед колег) і покращує `problem-solving` (ефективніше знаходження рішень для проблем).

Він стверджує, що перебування в одному фізичному просторі полегшує співпрацю та підтримку між працівниками.

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "David",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_11-2.mp3",
      "startTime": 1,
      "startTimestamp": 42.52,
      "finishTimestamp": 45.7
    }
  },
  "commands": [
    {
      "character": "David",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "David",
      "startTime": 1,
      "finishTime": 4.18,
      "dialogue": {
        "text": "It builds team spirit and makes problem solving easier.",
        "align": "center"
      }
    },
    {
      "character": "David",
      "opacity": 0,
      "startTime": 4.68
    }
  ]
}
```
