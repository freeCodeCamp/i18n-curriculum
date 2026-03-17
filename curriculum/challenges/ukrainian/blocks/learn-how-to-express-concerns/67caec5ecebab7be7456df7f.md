---
id: 67caec5ecebab7be7456df7f
title: Завдання 130
challengeType: 19
dashedName: task-130
lang: en-US
---

<!-- (Audio) Maria: They also said the communication isn't great because they often don't hear about changes until it's too late. -->

# --instructions--

Прослухайте аудіо та дайте відповідь на запитання нижче.  

# --questions--

## --text--

Яку ще проблему підняла команда?

## --answers--

Що вони отримують оновлення занадто рано.

### --feedback--

Марія каже зовсім протилежне.

---

Що вони не хочуть так багато спілкуватися.

### --feedback--

Марія не згадує про бажання команди спілкуватися.  

---

Що вони часто не чують про зміни вчасно.

---

Що вони вважають, що надто багато людей залучено до спілкування.

### --feedback--

Марія не згадує про кількість залучених людей.

## --video-solution--

3  

# --explanation--

Коли ви говорите щось `isn't great`, ви пом’якшуєте від’ємне повідомлення (замість того, щоб сказати `it is bad`, наприклад). Це робить критику більш ввічливою або непрямою. Подивіться на наступні речення:

- `The design is bad.` — це сильна від’ємна інструкція, яка часто звучить неввічливо.

- `The design isn't great. Maybe we can improve it.` — сказати це звучить менш різко і більш конструктивно.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Maria",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_12-3.mp3",
      "startTime": 1,
      "startTimestamp": 34.9,
      "finishTimestamp": 40.12
    }
  },
  "commands": [
    {
      "character": "Maria",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Maria",
      "startTime": 1,
      "finishTime": 3.18,
      "dialogue": {
        "text": "They also said the communication isn't great",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "startTime": 3.18,
      "finishTime": 6.22,
      "dialogue": {
        "text": "because they often don't hear about changes until it's too late.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 6.72
    }
  ]
}
```
