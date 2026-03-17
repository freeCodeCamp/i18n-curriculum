---
id: 67e5a6e34bfc4b5af2c00ddf
title: Завдання 51
challengeType: 22
dashedName: task-51
lang: en-US
---

<!-- (Audio) Jessica: Well, we've discovered a critical bug that might affect the user interface. -->

# --instructions--

Прослухайте аудіо та доповніть речення нижче.

# --fillInTheBlank--

## --sentence--

`Well, we've discovered a BLANK bug that might BLANK the user interface.`

## --blanks--

`critical`

### --feedback--

Це означає дуже серйозний або важливий. Часто використовується, коли щось потребує негайної уваги.

---

`affect`

### --feedback--

Це означає змінювати або впливати на щось. Часто описує, як одна річ спричиняє зміну іншої.

# --explanation--

`Critical` означає надзвичайно важливий або серйозний. Наприклад:

`We have a critical deadline tomorrow.` – Це означає, що термін дуже важливий і його не можна пропустити.

`To affect` означає впливати на щось або спричиняти зміну. Наприклад:

`The new policy may affect employee performance.` – Це означає, що політика може змінити, як працівники виконують свої обов’язки.

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Jessica",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_15-2.mp3",
      "startTime": 1,
      "startTimestamp": 10.12,
      "finishTimestamp": 13.52
    }
  },
  "commands": [
    {
      "character": "Jessica",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jessica",
      "startTime": 1,
      "finishTime": 2.72,
      "dialogue": {
        "text": "Well, we've discovered a critical bug",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "startTime": 2.72,
      "finishTime": 4.4,
      "dialogue": {
        "text": "that might affect the user interface.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "opacity": 0,
      "startTime": 4.9
    }
  ]
}
```
