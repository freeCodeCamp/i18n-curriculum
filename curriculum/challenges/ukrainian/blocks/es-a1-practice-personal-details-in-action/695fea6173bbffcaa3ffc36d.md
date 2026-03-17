---
id: 695fea6173bbffcaa3ffc36d
title: Завдання 10
challengeType: 19
dashedName: task-10
lang: es
---

<!-- (Audio) Esteban: ¿Cómo te llamas? -->

# --description--

Існує два загальні способи запитати ім’я людини іспанською.

Обидва використовуються в повсякденній іспанській мові і мають однакове значення. Вони просто побудовані по-різному.

# --instructions--

Прослухайте аудіо та дайте відповідь на запитання нижче.

# --questions--

## --text--

Яке з наведених запитань **схоже** на те, що ви чуєте в аудіо?

## --answers--

`¿Cuál es tu nombre?`

---

`¿Dónde vives?`

### --feedback--

Це запитання про те, де хтось живе.

---

`¿Cuál es tu apellido?`

### --feedback--

Це запитання про прізвище людини.

---

`¿Tienes apodo?`

### --feedback--

Це запитання, чи має хтось прізвисько.

## --video-solution--

1

# --explanation--

Естебан каже `¿Cómo te llamas?`. Це один із найпоширеніших способів запитати ім’я людини іспанською. Інше дуже поширене запитання з таким самим значенням:

`¿Cuál es tu nombre?`

Обидва запитання використовуються в повсякденній іспанській, щоб дізнатися ім’я людини. Вони просто побудовані по-різному:

- `¿Cómo te llamas?` використовує дієслово `llamarse` (називатися).
- `¿Cuál es tu nombre?` запитує безпосередньо ім’я як іменник.

У цьому завданні правильною відповіддю є варіант, який запитує ім’я людини.

# --scene--

```json
{
  "setup": {
    "background": "interview-room1.png",
    "characters": [
      {
        "character": "Esteban",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "ES_A1_personal_details_just_questions.mp3",
      "startTime": 1,
      "startTimestamp": 43.02,
      "finishTimestamp": 44.53
    }
  },
  "commands": [
    {
      "character": "Esteban",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Esteban",
      "startTime": 1,
      "finishTime": 2.51,
      "dialogue": {
        "text": "¿Cómo te llamas?",
        "align": "center"
      }
    },
    {
      "character": "Esteban",
      "opacity": 0,
      "startTime": 2.61
    }
  ]
}
```
