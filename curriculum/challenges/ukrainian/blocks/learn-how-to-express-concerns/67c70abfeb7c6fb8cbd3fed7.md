---
id: 67c70abfeb7c6fb8cbd3fed7
title: Завдання 57
challengeType: 19
dashedName: task-57
lang: en-US
---

<!-- (Audio) Maria: Hey James, can we talk about my latest meeting with Bob? -->

# --instructions--

Прослухайте аудіо та дайте відповідь на запитання нижче.  

# --questions--

## --text--

Про що Марія хоче поговорити з Джеймсом?  

## --answers--

Розклад Боба на тиждень.  

### --feedback--

Марія не згадує розклад Боба.  

---

Її останню зустріч із Бобом.  

---

Термін здачі майбутнього проєкту.  

### --feedback--

Марія не згадує термін, лише свою зустріч із Бобом.  

---

Бюджетний запит клієнта.  

### --feedback--

Марія не посилається на запит клієнта в цьому реченні.  

## --video-solution--

2  

# --explanation--

`Can we talk about...` використовується, щоб почати тему для обговорення. Це ввічливий спосіб попросити розмову про щось важливе. Наприклад:

`Can we talk about the changes to the project timeline?` - Це означає, що мовник хоче обговорити правки у графіку проєкту.

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
      "filename": "B1_12-2.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 2.94
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
      "finishTime": 3.94,
      "dialogue": {
        "text": "Hey James, can we talk about my latest meeting with Bob?",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 4.44
    }
  ]
}
```
