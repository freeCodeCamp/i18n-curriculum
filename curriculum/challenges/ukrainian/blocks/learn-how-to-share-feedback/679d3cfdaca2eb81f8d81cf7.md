---
id: 679d3cfdaca2eb81f8d81cf7
title: Завдання 97
challengeType: 19
dashedName: task-97
lang: en-US
---

<!-- (Audio) Maria: Can you look into it and see what's causing the problem? -->

# --instructions--

Прослухайте аудіо та дайте відповідь на запитання нижче.

# --questions--

## --text--

Що Марія просить Джеймса зробити?

## --answers--

Відразу виправити проблему.

### --feedback--

Марія не просить Джеймса негайно виправляти проблему.

---

Повідомити про проблему клієнту.

### --feedback--

Марія не згадує про інформування клієнта.

---

Розслідувати проблему.

---

Ігнорувати проблему наразі.

### --feedback--

Марія не просить Джеймса ігнорувати проблему.

## --video-solution--

3

# --explanation--

`Can` зазвичай використовується для ввічливих прохань, щоб неформально попросити когось щось зробити. Наприклад:

`Can you send me the report by noon?` — це ввічливий спосіб попросити когось надіслати звіт.

У цьому діалозі Марія просить Джеймса розслідувати проблему.

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
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
      "filename": "B1_8-3.mp3",
      "startTime": 1,
      "startTimestamp": 35.5,
      "finishTimestamp": 37.56
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
      "finishTime": 3.06,
      "dialogue": {
        "text": "Can you look into it and see what's causing the problem?",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 3.56
    }
  ]
}
```
