---
id: 6557dc1aa6be93c1eb4e9efb
title: Завдання 29
challengeType: 19
dashedName: task-29
---

<!-- (Audio) Sarah: Anyway, before leaving for work, I like to check my emails and messages to see if there are any urgent updates from the team. -->

# --description--

Слово `if` часто використовується в умовних реченнях для опису можливої ситуації та її наслідків. Наприклад:

`If it rains, I will bring an umbrella.` (Рішення взяти з собою парасольку залежить від ймовірності дощу.)

`If you need help, just ask.` (Пропозиція допомоги можлива лише за умови, що її потребує інша людина.)

# --questions--

## --text--

Що має на увазі Сара, використовуючи `if` у своєму реченні про перевірку електронних листів та повідомлень?

## --answers--

Вона завжди отримує невідкладні повідомлення від своєї команди

### --feedback--

`If` вказує на те, що ви ймовірно отримаєте невідкладні повідомлення.

---

Інколи бувають невідкладні повідомлення, інколи - ні

---

Вона ніколи не перевіряє свою електронну пошту та повідомлення

### --feedback--

Сара стверджує, що вона перевіряє свою електронну пошту та повідомлення.

---

Перевірка електронної пошти не входить у її рутину

### --feedback--

Сара зазначає, що перевірка електронної пошти та повідомлень є частиною її повсякденного життя.

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
