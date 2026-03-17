---
id: 67dd5cfeacc0cad2fc967438
title: Завдання 16
challengeType: 19
dashedName: task-16
lang: en-US
---

<!-- (Audio) James: By the way, did we decide on the deadline for the first phase? -->

# --instructions--

Прослухайте аудіо та дайте відповідь на запитання нижче.

# --questions--

## --text--

Що хоче дізнатися Джеймс?

## --answers--

Чи погодили вони термін виконання першої фази.

---

Чи скасували проєкт.

### --feedback--

Джеймс не згадує про скасування проєкту.

---

Чи відповідальна Еліс за першу фазу.

### --feedback--

Джеймс не питає про відповідальність.

---

Чи команда завершила фінальну фазу.

### --feedback--

Джеймс не говорить про фінальну фазу.

## --video-solution--

1

# --explanation--

`By the way` використовується, щоб ввести нову, але пов’язану тему у розмову. Часто це щось, що доповідач щойно згадав або хоче перевірити. Наприклад:

`By the way, have you seen the updated report?` – Це вводить нове запитання, пов’язане з тим, що вже обговорювалося.

# --scene--

```json
{
  "setup": {
    "background": "interview-room2.png",
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
      "filename": "B1_15-1.mp3",
      "startTime": 1,
      "startTimestamp": 17.36,
      "finishTimestamp": 20.64
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
      "finishTime": 4.28,
      "dialogue": {
        "text": "By the way, did we decide on the deadline for the first phase?",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 4.78
    }
  ]
}
```
