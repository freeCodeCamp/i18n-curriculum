---
id: 67dd5dacf47e8ed984dc90da
title: Завдання 17
challengeType: 19
dashedName: task-17
lang: en-US
---

<!-- (Audio) James: By the way, did we decide on the deadline for the first phase? -->

<!-- SPEAKING -->

# --instructions--

Прослухайте аудіо та дайте відповідь на запитання нижче.

# --questions--

## --text--

Як Аліса могла коротко відповісти, що наразі рішення щодо дедлайну не прийнято?

## --answers--

`Not yet.`

### --audio-id--

EN6acf22f8

---

`We're still looking for it.`

### --audio-id--

EN391abad4

### --feedback--

Це не стосується питання про встановлення дедлайну.

## --video-solution--

1

# --explanation--

`Not yet` — це короткий і природний спосіб сказати, що щось не відбулося або не було завершено до теперішнього моменту, але може статися в майбутньому. Наприклад:

- **Менеджер:** `Have you sent the email?` — Тут людина питає про е-пошту, яку слід надіслати.

- **Працівник:** `Not yet.` — Це означає, що е-пошта ще не надіслана, але людина планує це зробити.

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
