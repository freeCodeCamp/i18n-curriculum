---
id: 67c03f86bccfec0be6de656b
title: Завдання 113
challengeType: 19
dashedName: task-113
lang: en-US
---

<!-- (audio) Anna: I see your point, but flexibility might be better. Think about it. -->

# --instructions--

Прослухайте аудіо та дайте відповідь на запитання нижче.

# --questions--

## --text--

Що повідомляє Анна?

## --answers--

Вона повністю не погоджується з Бобом і відкидає його занепокоєння.

### --feedback--

Анна визнає думку Боба, перш ніж висловити власну.

---

Вона розуміє занепокоєння Боба, але все ж вважає, що гнучкість — кращий варіант.

---

Вона не розуміє занепокоєння Боба.

### --feedback--

Анна розуміє аргумент Боба.

---

Вона погоджується з Бобом і змінює свою думку.

### --feedback--

Анна не повністю погоджується з Бобом.

## --video-solution--

2

# --explanation--

Анна використовує `I see your point, but`, щоб показати, що розуміє занепокоєння Боба, водночас висловлюючи іншу думку.

Вона вважає, що гнучкість — кращий варіант, ніж дотримуватися однієї категорії.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Anna",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_11-3.mp3",
      "startTime": 1,
      "startTimestamp": 31.78,
      "finishTimestamp": 34.88
    }
  },
  "commands": [
    {
      "character": "Anna",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Anna",
      "startTime": 1,
      "finishTime": 4.1,
      "dialogue": {
        "text": "I see your point, but flexibility might be better. Think about it.",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 4.7
    }
  ]
}
```
