---
id: 66c4ef1cb275e86febc9fe2c
title: Завдання 113
challengeType: 22
dashedName: task-113
lang: en-US
---

<!-- Audio Reference:
Sarah: It should, but it's not displaying because the live server extension might not be running. -->

<!-- Audio Reference:
Sarah: It should, but it's not displaying because the live server extension might not be running. -->

# --instructions--

Прослухайте аудіо та доповніть речення нижче.

# --fillInTheBlank--

## --sentence--

`It should, but it's not BLANK because the live server extension might not be BLANK.`

## --blanks--

`displaying`

### --feedback--

Дія показу або відтворення чогось. Це слово закінчується на `-ing`.

---

`running`

### --feedback--

Вказує, що розширення активне і працює. Це слово закінчується на `-ing`.

# --explanation--

Герундій — це форма дієслова, що закінчується на `-ing` і виконує роль іменника. У цьому реченні `displaying` і `running` — це герундії, які описують триваючі дії. Наприклад:

- `Updating the software is essential.` — тут `Updating` є герундієм, що описує дію.

У реченні Сари `displaying` і `running` описують дії, пов’язані з розширенням live server і тим, як воно працює.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
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
      "filename": "B1_1-3.mp3",
      "startTime": 1,
      "startTimestamp": 12.62,
      "finishTimestamp": 16.66
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
      "finishTime": 2.62,
      "dialogue": {
        "text": "It should, but it's not displaying",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "startTime": 2.62,
      "finishTime": 5.04,
      "dialogue": {
        "text": "because the live server extension might not be running.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 5.54
    }
  ]
}
```
