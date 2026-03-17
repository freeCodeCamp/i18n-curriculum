---
id: 67ddb67d2bbf41bb5dce0fb3
title: Завдання 36
challengeType: 19
dashedName: task-36
lang: en-US
---

<!-- (Audio) James: No problem. Talk to you later. -->

# --instructions--

Прослухайте аудіо та дайте відповідь на запитання нижче.

# --questions--

## --text--

Що ми можемо зробити висновок із відповіді Джеймса?

## --answers--

Йому потрібно спочатку вирішити проблему.

### --feedback--

Джеймс нічого не каже про іншу проблему.

---

Він дружньо завершує розмову.

---

Він хоче зараз запланувати зустріч.

### --feedback--

Немає жодної згадки про планування чогось.

---

Він просить про додаткову допомогу.

### --feedback--

Джеймс не робить запиту.

## --video-solution--

2

# --explanation--

У розмові часто опускають слова, коли значення зрозуміле. У `Talk to you later` пропущено підмет `I'll` (скорочення від `I will`). Повне речення було б `I'll talk to you later`. Такий тип опущення є загальним у неформальній мові. Ще один приклад:

`See you tomorrow!` — це коротший спосіб сказати `I'll see you tomorrow`.

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
      "startTimestamp": 44.74,
      "finishTimestamp": 46.5
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
      "finishTime": 2.76,
      "dialogue": {
        "text": "No problem. Talk to you later.",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 3.26
    }
  ]
}
```
