---
id: 657fbde9a43e35ec1ebafe56
title: Завдання 77
challengeType: 19
dashedName: task-77
lang: en-US
---

<!-- (Audio) Sarah: There's a big convention next month. Would you like to come? -->

# --description--

Прослухайте аудіо та дайте відповідь на запитання нижче.

# --questions--

## --text--

Що означає фраза `Would you like to come?` у цьому контексті?

## --answers--

Відмова від запрошення.

### --feedback--

Фраза не означає відмову. Вона стосується пропозиції запрошення.

---

Розширення запрошення.

---

Вираження подяки.

### --feedback--

Фраза не означає "дякую". Вона стосується запрошення когось.

---

Запит інформації.

### --feedback--

Фраза не є питанням для отримання інформації, а ввічливим запрошенням на подію.

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
      "filename": "3.2-4.mp3",
      "startTime": 1,
      "startTimestamp": 18.70,
      "finishTimestamp": 21.36
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
      "finishTime": 3.66,
      "dialogue": {
        "text": "There's a big convention next month. Would you like to come?",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 4.16
    }
  ]
}
```
