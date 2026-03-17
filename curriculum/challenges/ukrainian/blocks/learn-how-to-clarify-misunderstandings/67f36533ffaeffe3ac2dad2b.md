---
id: 67f36533ffaeffe3ac2dad2b
title: Завдання 131
challengeType: 19
dashedName: task-131
lang: en-US
---

<!-- (Audio) Jessica: Oh, that might be a mix-up. The budget tracking feature is planned for the next update, not this one. -->

# --instructions--

Прослухайте аудіо та дайте відповідь на запитання нижче.

# --questions--

## --text--

Що пояснює Джессіка?

## --answers--

У графіку поточного оновлення виникла проблема.

### --feedback--

Джессіка говорить про час появи функції, а не про графік самого оновлення.

---

Функція відстеження бюджету буде в наступному оновленні, а не в поточному.

---

Функцію відстеження бюджету видалили з поточного оновлення.

### --feedback--

Джессіка не згадує, що функцію видалили.

---

Функція була помилково включена в це оновлення.

### --feedback--

Джессіка не каже, що функція була помилково включена.

## --video-solution--

2

# --explanation--

Джессіка каже, `The budget tracking feature is planned for the next update`, пояснюючи, що функція не включена в поточне оновлення, але буде додана в наступне.

Це прояснює непорозуміння щодо часу появи функції.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Jessica",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_16-3.mp3",
      "startTime": 1,
      "startTimestamp": 60.98,
      "finishTimestamp": 65.76
    }
  },
  "commands": [
    {
      "character": "Jessica",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jessica",
      "startTime": 1,
      "finishTime": 2.32,
      "dialogue": {
        "text": "Oh, that might be a mix-up.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "startTime": 2.58,
      "finishTime": 5.78,
      "dialogue": {
        "text": "The budget tracking feature is planned for the next update, not this one.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "opacity": 0,
      "startTime": 6.28
    }
  ]
}
```
