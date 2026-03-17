---
id: 657b2fc9c0f96bdfddfce4d9
title: Завдання 90
challengeType: 22
dashedName: task-90
lang: en-US
---

<!-- (Audio) Anna: I took a course in organizational psychology, and it piqued my interest in the workplace and employee dynamics. -->

# --description--

To `pique one's interest` означає викликати у когось цікавість або бажання дізнатися більше. Ви використовуєте це, коли щось привертає вашу увагу і викликає інтерес. Наприклад:

- `The new AI tool really piqued my interest.` — це викликало у вас цікавість, і ви захотіли дізнатися більше про це.

- `Her presentation on cybersecurity piqued the team's interest.` — команда стала більш зацікавленою і захотіла дізнатися більше.

# --fillInTheBlank--

## --sentence--

`I BLANK a course in organizational BLANK, and it BLANK my interest in the workplace and employee dynamics.`

## --blanks--

`took`

### --feedback--

Це слово означає дію участі або завершення курсу. Ви повинні правильно використати його минулу форму.

---

`psychology`

### --feedback--

Це слово описує вивчення розуму і поведінки, особливо в контексті робочого середовища.

---

`piqued`

### --feedback--

Це слово означає викликати або стимулювати інтерес чи цікавість. Ви повинні правильно використати його минулу форму.

# --scene--

```json
{
  "setup": {
    "background": "company2-parking.png",
    "characters": [
      {
        "character": "Anna",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.1-5.mp3",
      "startTime": 1,
      "startTimestamp": 13.14,
      "finishTimestamp": 18.62
    }
  },
  "commands": [
    {
      "character": "Anna",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Anna",
      "startTime": 1,
      "finishTime": 6.48,
      "dialogue": {
        "text": "I took a course in organizational psychology, and it piqued my interest in the workplace and employee dynamics.",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 6.98
    }
  ]
}
```
