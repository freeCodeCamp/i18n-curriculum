---
id: 6557dc1aa6be93c1eb4e9efb
title: Завдання 29
challengeType: 19
dashedName: task-29
lang: en-US
---

<!-- (Audio) Sarah: Anyway, before leaving for work, I like to check my emails and messages to see if there are any urgent updates from the team. -->

# --description--

Слово `if` означає «чи так, чи ні». Наприклад:

`She checks her emails to see if there are any urgent updates.` — це означає, що вона хоче дізнатися, чи існують оновлення.

`If` також може бути частиною умовної інструкції, яка показує можливу ситуацію та її результат. Наприклад:

`If there are urgent updates, I will reply immediately.` — це означає, що відповідь залежить від умови наявності термінових оновлень.

# --questions--

## --text--

Що Сара має на увазі, використовуючи `if` у своїй інструкції про перевірку е-пошти та повідомлень?

## --answers--

Вона завжди знаходить термінові оновлення від своєї команди.

### --feedback--

`If` не припускає впевненості у знаходженні термінових оновлень.

---

Іноді є термінові оновлення, іноді ні.

---

Вона ніколи не перевіряє свою е-пошту та повідомлення.

### --feedback--

Сара фактично каже, що перевіряє свою е-пошту та повідомлення.

---

Перевірка е-пошти не є частиною її рутини.

### --feedback--

Сара згадує, що перевірка е-пошти та повідомлень є частиною її рутини.

## --video-solution--

2

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "2.2-1.mp3",
      "startTime": 1,
      "startTimestamp": 55.08,
      "finishTimestamp": 60.78
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
      "finishTime": 6.70,
      "dialogue": {
        "text": "Anyway, before leaving for work, I like to check my emails and messages to see if there are any urgent updates from the team.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 7.20
    }
  ]
}
```
