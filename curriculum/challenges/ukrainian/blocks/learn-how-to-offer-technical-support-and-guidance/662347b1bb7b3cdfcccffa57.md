---
id: 662347b1bb7b3cdfcccffa57
title: Завдання 50
challengeType: 22
dashedName: task-50
lang: en-US
---

<!-- (Audio) Brian: Sophie, I heard you're working on fixing that bug in the user authentication module. Need any help? -->

# --description--

`Heard` — це минулий час дієслова `to hear`, що означає дізнатися про щось через слух або отримати інформацію про щось. Наприклад, `I heard the news yesterday` означає, що ви дізналися новини напередодні.

`authentication module` у контексті програмного забезпечення — це частина системи, відповідальна за перевірку ідентичності користувачів. Його часто використовують у системах входу. Наприклад, `The authentication module checks the username and password` означає, що він перевіряє облікові дані користувача.

# --fillInTheBlank--

## --sentence--

`Sophie, I BLANK you're working on BLANK that bug in the user BLANK module. Need any help?`

## --blanks--

`heard`

### --feedback--

Це минулий час від `to hear`, що вказує на те, що Браян отримав інформацію про завдання Софі.

---

`fixing`

### --feedback--

Це стосується дії з виправлення або усунення проблеми (помилки) у програмному забезпеченні.

---

`authentication`

### --feedback--

Це стосується процесу перевірки ідентичності користувача у програмному модулі.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Brian",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "9.1-3.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 5.66
    }
  },
  "commands": [
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "startTime": 1,
      "finishTime": 3.84,
      "dialogue": {
        "text": "Sophie, I heard you're working on fixing that bug",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "startTime": 3.84,
      "finishTime": 6.66,
      "dialogue": {
        "text": "in the user authentication module. Need any help?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 7.16
    }
  ]
}
```
