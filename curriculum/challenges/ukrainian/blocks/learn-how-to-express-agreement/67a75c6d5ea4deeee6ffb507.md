---
id: 67a75c6d5ea4deeee6ffb507
title: Завдання 21
challengeType: 19
dashedName: task-21
lang: en-US
---

<!-- (Audio) Linda: Absolutely. And I can also prepare some user scenarios for testing, so we can ensure a smooth user experience. -->

# --instructions--

Прослухайте аудіо та дайте відповідь на запитання нижче.

# --questions--

## --text--

Що пропонує зробити Лінда?

## --answers--  

Підготувати сценарії користувача для тестування.

---  

Пропустити фазу тестування.

### --feedback--  

Лінда не пропонує пропускати тестування; вона активно робить внесок у нього.

---  

Попросити когось іншого зайнятися тестуванням користувача.

### --feedback--  

Лінда не делегує це завдання комусь іншому.

---  

Переробити інтерфейс користувача з нуля.

### --feedback--  

Лінда не говорить про переробку інтерфейсу.

## --video-solution--  

1  

# --explanation--  

Прислухайтеся до ключових слів, які вказують, що саме Лінда пропонує зробити.

`I can also` – Це показує, що вона добровільно робить внесок.

`Prepare some user scenarios for testing` – Це чітко вказує на завдання, за яке вона бере відповідальність.

`Ensure a smooth user experience` – Це пояснює, чому тестування важливе, і підкреслює її відданість проєкту.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Linda",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_10-1.mp3",
      "startTime": 1,
      "startTimestamp": 20.86,
      "finishTimestamp": 26.68
    }
  },
  "commands": [
    {
      "character": "Linda",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Linda",
      "startTime": 1,
      "finishTime": 6.82,
      "dialogue": {
        "text": "Absolutely. And I can also prepare some user scenarios for testing so we can ensure a smooth user experience.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 7.32
    }
  ]
}
```
