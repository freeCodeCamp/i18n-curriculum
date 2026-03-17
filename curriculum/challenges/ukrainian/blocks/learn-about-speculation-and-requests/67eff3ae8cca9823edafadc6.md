---
id: 67eff3ae8cca9823edafadc6
title: Завдання 59
challengeType: 19
dashedName: task-59
lang: en-US
---

<!-- (audio) Jake: Have you checked whether all security updates were applied? -->

# --instructions--

Прослухайте аудіо та дайте відповідь на запитання нижче.

# --questions--

## --text--

Про що питає Джейк?

## --answers--

Чи були застосовані оновлення.

---

Чи були випущені нові оновлення безпеки.

### --feedback--

Джейк не питає, чи існують нові оновлення.

---

Хто відповідає за оновлення безпеки.

### --feedback--

Джейк не питає про конкретну особу.

---

Як працюють оновлення безпеки.

### --feedback--

Джейк припускає, що Джессіка знає про оновлення безпеки.

## --video-solution--

1

# --explanation--

Джейк хоче дізнатися, чи хтось перевірив, що всі оновлення встановлені.

За допомогою `Have you checked...?` він питає, чи Джессіка щось перевірила.

За допомогою `whether all security updates were applied` він питає, чи оновлення були успішно встановлені.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Jake",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_17-2.mp3",
      "startTime": 1,
      "startTimestamp": 10.52,
      "finishTimestamp": 13.02
    }
  },
  "commands": [
    {
      "character": "Jake",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jake",
      "startTime": 1,
      "finishTime": 3.5,
      "dialogue": {
        "text": "Have you checked whether all security updates were applied?",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "opacity": 0,
      "startTime": 4
    }
  ]
}
```
