---
id: 67cadf5ea48ca37df972fac6
title: Завдання 124
challengeType: 19
dashedName: task-124
lang: en-US
---

<!-- (Audio) Maria: First, they really need more support. -->

# --instructions--

Прослухайте аудіо та дайте відповідь на запитання нижче.  

# --questions--

## --text--

Що Марія називає найважливішим запитом від команди?  

## --answers--

Їм потрібна більша підтримка.  

---

Вони хочуть довший термін.  

### --feedback--

Марія не згадує про продовження терміну.

---

Вони хотіли б зменшити кількість завдань.

### --feedback--

Марія не згадує про зменшення кількості завдань.  

---

Вони просять більше зустрічей.  

### --feedback--

Марія не згадує про додаткові зустрічі.

## --video-solution--

1  

# --explanation--

`First` використовується, коли потрібно пронумерувати дії за важливістю або часом. У цьому випадку Марія перераховує, що потрібно команді, починаючи з того, що, здається, є найважливішим запитом (отримати більше підтримки). Ще один приклад:

`First, we should analyze the problem. Then, we can discuss solutions.` - Це означає, що аналіз проблеми йде перед усім іншим.

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
      "startTimestamp": 25.26,
      "finishTimestamp": 26.92
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
      "finishTime": 2.66,
      "dialogue": {
        "text": "First, they really need more support.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 3.16
    }
  ]
}
```
