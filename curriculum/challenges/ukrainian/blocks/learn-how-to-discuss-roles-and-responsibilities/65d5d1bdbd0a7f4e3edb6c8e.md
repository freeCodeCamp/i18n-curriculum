---
id: 65d5d1bdbd0a7f4e3edb6c8e
title: Завдання 35
challengeType: 19
dashedName: task-35
lang: en-US
---

<!-- (Audio) Tom: Hey, have you ever worked with Anna from HR? -->

# --description--

Прослухайте аудіо та дайте відповідь на запитання.

# --questions--

## --text--

Про що запитує Том?

## --answers--

Якщо Анна працює в HR

### --feedback--

Питання Тома стосується саме того, чи працювали ви з Анною, а не ролі Анни.

---

Якщо у Аліси був досвід роботи з Анною.

---

Якщо вам подобається працювати в HR

### --feedback--

Питання стосується минулого досвіду з Анною, а не особистих уподобань щодо роботи в HR.

---

Якщо Анна коли-небудь працювала

### --feedback--

Фокус питання Тома — ваш досвід роботи з Анною, а не історія роботи Анни.

## --video-solution--

2

# --scene--

```json
{
  "setup": {
    "background": "company1-reception.png",
    "characters": [
      {
        "character": "Tom",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.3-2.mp3",
      "startTime": 1,
      "startTimestamp": 0.00,
      "finishTimestamp": 2.88
    }
  },
  "commands": [
    {
      "character": "Tom",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Tom",
      "startTime": 1,
      "finishTime": 3.88,
      "dialogue": {
        "text": "Hey, have you ever worked with Anna from HR?",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 4.38
    }
  ]
}
```
