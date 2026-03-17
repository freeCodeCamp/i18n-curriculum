---
id: 680a3cf5ca047daf5e8ecff5
title: Завдання 66
challengeType: 22
dashedName: task-66
lang: en-US
---

<!-- (Audio) Sophie: This way, we can understand the limits better before we launch it fully. -->

# --instructions--

Прослухайте аудіо та доповніть речення нижче.

# --fillInTheBlank--

## --sentence--

`This way, we can understand the limits better BLANK we launch it fully.`

## --blanks--

`before`

### --feedback--

Це використовується, щоб показати, що щось відбувається раніше за іншу подію.

# --explanation--

`Before` використовується, щоб показати, що одна дія відбувається раніше за іншу. Наприклад:

- `Please save your work before you close the program.` – Це означає, що збереження має відбутися раніше за закриття програми.

- `He always checks his code carefully before submitting it.` – Це означає, що перевірка відбувається першою, перед дією відправлення.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_18-2.mp3",
      "startTime": 1,
      "startTimestamp": 40.52,
      "finishTimestamp": 43.78
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 3.06,
      "dialogue": {
        "text": "This way, we can understand the limits better",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "startTime": 3.06,
      "finishTime": 4.26,
      "dialogue": {
        "text": "before we launch it fully.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.76
    }
  ]
}
```
