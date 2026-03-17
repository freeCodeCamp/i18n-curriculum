---
id: 67b9becbb4fd3b0d7fc2411e
title: Завдання 65
challengeType: 22
dashedName: task-65
lang: en-US
---

<!-- (Audio) David: It seems like it could lead to a lot of delays and miscommunication. -->

# --instructions--

Прослухайте аудіо та доповніть речення нижче.

# --fillInTheBlank--

## --sentence--

`It seems like it could lead to a lot of BLANK and BLANK.`

## --blanks--

`delays`

### --feedback--

Це слово означає, що щось триває довше, ніж очікувалося.

---

`miscommunication`

### --feedback--

Це слово означає непорозуміння, спричинені неясною або неправильною інформацією.

# --explanation--

Девід занепокоєний, що асинхронна віддалена робота може спричинити `delays` (повільніші відповіді та прогрес) і `miscommunication` (коли люди неправильно розуміють одне одного).

Оскільки співробітники працюють у різний час, повідомлення можуть довше залишатися без відповіді, а непорозуміння виникати, якщо комунікація не є чіткою.

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
      "startTimestamp": 24.82,
      "finishTimestamp": 28.84
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
      "finishTime": 5.02,
      "dialogue": {
        "text": "It seems like it could lead to a lot of delays and miscommunication.",
        "align": "center"
      }
    },
    {
      "character": "David",
      "opacity": 0,
      "startTime": 5.52
    }
  ]
}
```
