---
id: 66b56cb9ff3bfb183fa1b7db
title: Завдання 83
challengeType: 22
dashedName: task-83
lang: en-US
---

<!-- (Audio) Anna: When do you think this new module will be ready? -->

# --instructions--

Прослухайте аудіо, щоб доповнити речення нижче.

# --fillInTheBlank--

## --sentence--

`When do you think BLANK BLANK BLANK will be ready?`

## --blanks--

`this`

### --feedback--

Це слово використовується, щоб уточнити модуль, про який зараз йде мова.

---

`new`

### --feedback--

Щось нещодавнє.

---

`module`

### --feedback--

Конкретна частина або розділ навчальної програми.

# --explanation--

`Module` означає одиницю або розділ курсу чи навчальної програми. Наприклад:

- `The new module on cybersecurity will be added next week.` — тут `module` позначає конкретну частину навчання, присвячену кібербезпеці.

Зверніть увагу, як використовуються слова `this`, `new` і `module`. `This` використовується, щоб уточнити модуль, про який говорять, `new` показує, що це нещодавнє доповнення, а `module` позначає розділ навчання.

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Anna",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_1-2.mp3",
      "startTime": 1,
      "startTimestamp": 47.12,
      "finishTimestamp": 48.96
    }
  },
  "commands": [
    {
      "character": "Anna",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Anna",
      "startTime": 1,
      "finishTime": 2.84,
      "dialogue": {
        "text": "When do you think this new module will be ready?",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 3.34
    }
  ]
}
```
