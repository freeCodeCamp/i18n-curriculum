---
id: 67d3fccf15badf0cae314d1c
title: Завдання 7
challengeType: 22
dashedName: task-7
lang: en-US
---

<!-- (Audio) Mark: Sure, Jessica. What do I need to do? -->

# --instructions--

Прослухайте аудіо та доповніть речення нижче.

# --fillInTheBlank--

## --sentence--

`Sure, Jessica. What do I BLANK to BLANK?`

## --blanks--

`need`

### --feedback--

Цей дієслово виражає необхідність, означаючи, що щось потрібно зробити.

---

`do`

### --feedback--

Цей дієслово слідує за `need`, коли запитують про дію.

# --explanation--

`Need to` використовується, коли запитують про необхідні дії. Після нього йде базова форма дієслова (`do`). Наприклад:

- `We need to do more testing before releasing the app.` - Необхідно протестувати застосунок перед його запуском.

- `We need to do some updates to fix the bugs.` - Необхідно оновити систему, щоб вирішити проблеми.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Mark",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_14-1.mp3",
      "startTime": 1,
      "startTimestamp": 7,
      "finishTimestamp": 9.08
    }
  },
  "commands": [
    {
      "character": "Mark",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Mark",
      "startTime": 1,
      "finishTime": 3.08,
      "dialogue": {
        "text": "Sure, Jessica. What do I need to do?",
        "align": "center"
      }
    },
    {
      "character": "Mark",
      "opacity": 0,
      "startTime": 3.58
    }
  ]
}
```
