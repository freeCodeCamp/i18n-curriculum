---
id: 67e2ae1300a8edcdede767db
title: Завдання 4
challengeType: 22
dashedName: task-4
lang: en-US
---

<!-- (Audio) Mark: Can I ask you about a few of them? -->

# --instructions--

Прослухайте аудіо та доповніть речення нижче.

# --fillInTheBlank--

## --sentence--

`Can I BLANK you BLANK a few of them?`

## --blanks--

`ask`

### --feedback--

Цей дієслово використовується, коли хтось хоче отримати інформацію або дозвіл.

---

`about`

### --feedback--

Цей прийменник з’єднує пов’язані теми або предмети.

# --explanation--

`Ask about` означає запитувати інформацію, пов’язану з конкретною темою. Наприклад:

`I asked about the new feature.` – Ви хотіли отримати інформацію про функцію.

`Can I ask you about...` — це ввічливий спосіб почати питання, коли ви хочете отримати інформацію або допомогу. Це показує, що ви просите дозволу поговорити про конкретну тему. Наприклад:

`Can I ask you about the project deadline?` – Це означає, що ви хочете поговорити про термін і отримати більше деталей.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Mark",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_16-1.mp3",
      "startTime": 1,
      "startTimestamp": 5.58,
      "finishTimestamp": 7.08
    }
  },
  "commands": [
    {
      "character": "Mark",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Mark",
      "startTime": 1,
      "finishTime": 2.5,
      "dialogue": {
        "text": "Can I ask you about a few of them?",
        "align": "center"
      }
    },
    {
      "character": "Mark",
      "opacity": 0,
      "startTime": 3
    }
  ]
}
```
