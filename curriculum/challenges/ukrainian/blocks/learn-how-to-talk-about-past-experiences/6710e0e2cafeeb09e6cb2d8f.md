---
id: 6710e0e2cafeeb09e6cb2d8f
title: Завдання 55
challengeType: 22
dashedName: task-55
lang: en-US
---

<!-- (Audio) Linda: Well, during the project, I was working closely with the development team, and we were constantly updating the user interface based on user feedback. -->

# --instructions--

Прослухайте аудіо та доповніть речення нижче.

# --fillInTheBlank--

## --sentence--

`Well, during the project, I BLANK BLANK closely with the development team, and we BLANK constantly BLANK the user interface based on user feedback.`

## --blanks--

`was`

### --feedback--

Це допоміжне дієслово, яке використовується для утворення `Past Continuous` у однині першої особи.

---

`working`

### --feedback--

Це основне дієслово в `Past Continuous`, що описує дію праці.

---

`were`

### --feedback--

Це допоміжне дієслово, яке використовується для утворення `Past Continuous` у множині першої особи.

---

`updating`

### --feedback--

Це основне дієслово в `Past Continuous`, що описує безперервну дію покращення або оновлення чогось.

# --explanation--

Час `Past Continuous` використовується для опису дій, які тривали в певний момент у минулому. Коли два `Past Continuous` речення використовуються разом, вони часто описують одночасні дії або дії, що відбуваються паралельно.

У цьому реченні Лінда описує, як вона та її команда одночасно працювали і безперервно оновлювали інтерфейс користувача протягом усього проєкту. Це показує дві дії, що відбувалися одночасно в минулому, надаючи контекст або фон одна одній. Наприклад:

`While I was preparing the report, they were testing the new features.` — це означає, що дія мого підготовлення звіту і тестування нових функцій відбувалися одночасно.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Linda",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_2-2.mp3",
      "startTime": 1,
      "startTimestamp": 10.08,
      "finishTimestamp": 17.34
    }
  },
  "commands": [
    {
      "character": "Linda",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Linda",
      "startTime": 1,
      "finishTime": 4.36,
      "dialogue": {
        "text": "Well, during the project, I was working closely with the development team,",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "startTime": 4.5,
      "finishTime": 8.26,
      "dialogue": {
        "text": "and we were constantly updating the user interface based on user feedback.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 8.76
    }
  ]
}
```
