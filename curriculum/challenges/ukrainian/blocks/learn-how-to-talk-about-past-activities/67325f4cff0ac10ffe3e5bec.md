---
id: 67325f4cff0ac10ffe3e5bec
title: Завдання 114
challengeType: 19
dashedName: task-114
lang: en-US
---

<!-- (audio) James: It's interesting to think about it. I used to just write code without thinking much about the end user. -->

# --instructions--

Прослухайте аудіо та дайте відповідь на запитання нижче.

# --questions--

## --text--

Що Джеймс описує щодо свого підходу до кодування?

## --answers--

Звичка, яку він мав у минулому.

---

Щось, що він планує робити в майбутньому.

### --feedback--

Джеймс не говорить про майбутні плани; він розмірковує про те, що робив раніше.

---

Звичка, яку він продовжує зараз.

### --feedback--

Джеймс використовує фразу `used to`, що показує, що він описує те, що робив у минулому, а не зараз.

---

Процес, якого він ніколи не дотримувався.

### --feedback--

Джеймс описує звичку, яку колись мав, тож це не те, чого він ніколи не робив.

## --video-solution--

1

# --explanation--

Джеймс каже, `I used to just write code without thinking much about the end user.` 

`Used to` вказує на звичку або дію в минулому, яка більше не є актуальною. 

Це речення показує, що раніше він писав код, не враховуючи кінцевого користувача, але з того часу змінив свій підхід.

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "James",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_3-3.mp3",
      "startTime": 1,
      "startTimestamp": 29.28,
      "finishTimestamp": 34.44
    }
  },
  "commands": [
    {
      "character": "James",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "James",
      "startTime": 1,
      "finishTime": 2.84,
      "dialogue": {
        "text": "It's interesting to think about it.",
        "align": "center"
      }
    },
    {
      "character": "James",
      "startTime": 2.92,
      "finishTime": 6.16,
      "dialogue": {
        "text": "I used to just write code without thinking much about the end user,",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 6.66
    }
  ]
}
```
