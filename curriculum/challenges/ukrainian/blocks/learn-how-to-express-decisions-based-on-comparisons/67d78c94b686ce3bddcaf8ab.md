---
id: 67d78c94b686ce3bddcaf8ab
title: Завдання 117
challengeType: 22
dashedName: task-117
lang: en-US
---

<!-- (Audio) Brian: It could save us time and resources. What about timelines? Which option is faster? -->

# --instructions--

Прослухайте аудіо та доповніть речення нижче.

# --fillInTheBlank--

## --sentence--

`It could BLANK and resources. What about BLANK? Which option is faster?`

## --blanks--

`save us time`

### --feedback--

Ці три слова разом означають зменшити кількість часу, необхідного для виконання завдання.

---

`timelines`

### --feedback--

Це слово у множині означає графіки або терміни виконання проєкту.

# --explanation--

`Save us time` означає зменшити час, потрібний для виконання чогось, зробивши процес ефективнішим. Наприклад:

`Using automation tools can save us time on repetitive tasks.` – Це означає, що інструменти автоматизації допомагають виконувати завдання швидше.

`Timelines` означають графіки або терміни, які показують, коли різні частини проєкту мають бути завершені. Наприклад:

`We need to adjust our timelines to finish the project on schedule.` – Це означає змінення термінів, щоб забезпечити своєчасне завершення проєкту.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Brian",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_13-3.mp3",
      "startTime": 1,
      "startTimestamp": 32.34,
      "finishTimestamp": 37.52
    }
  },
  "commands": [
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "startTime": 1,
      "finishTime": 6.18,
      "dialogue": {
        "text": "It could save us time and resources. What about timelines? Which option is faster?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 6.68
    }
  ]
}
```
