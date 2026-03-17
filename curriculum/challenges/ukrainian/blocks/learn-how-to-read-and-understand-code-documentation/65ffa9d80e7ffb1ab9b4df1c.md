---
id: 65ffa9d80e7ffb1ab9b4df1c
title: Завдання 11
challengeType: 22
dashedName: task-11
lang: en-US
---

<!-- (Audio) Sarah: Once you've found the section you need, you should start by reading the introductory paragraphs to get an overview of what the documentation covers. -->

# --description--

Прослухайте аудіо та доповніть речення.

# --fillInTheBlank--

## --sentence--

`BLANK you've BLANK the section you need, you should start by reading the BLANK paragraphs to get an overview of what the documentation BLANK.`

## --blanks--

`Once`

### --feedback--

Це вказує, що дія, яка буде далі, відбувається одразу після того, як розділ знайдено. Напишіть це слово з великої літери.

---

`found`

### --feedback--

Тут це слово означає знаходження або виявлення потрібного розділу в документації.

---

`introductory`

### --feedback--

Це слово позначає початкові абзаци, які дають базове розуміння розділу.

---

`covers`

### --feedback--

Це означає, що документація включає або охоплює у своєму вмісті.

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
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
      "filename": "7.2-1.mp3",
      "startTime": 1,
      "startTimestamp": 20.68,
      "finishTimestamp": 27.82
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
      "finishTime": 8.14,
      "dialogue": {
        "text": "Once you've found the section you need, you should start by reading the introductory paragraphs to get an overview of what the documentation covers.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 8.64
    }
  ]
}
```
