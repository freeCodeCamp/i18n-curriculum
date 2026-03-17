---
id: 65dabf5eb13aae9ff91c40a2
title: Завдання 108
challengeType: 22
dashedName: task-108
lang: en-US
---

<!-- (Audio) Sophie: And you don't have to search for expensive solutions for that. -->

# --description--

Фраза `search for` означає шукати щось або намагатися знайти щось через дослідження. Наприклад, `I need to search for my lost keys` означає шукати ключі.

Слово `expensive` описує щось, що коштує багато грошей. Наприклад, `That car is too expensive for me` означає, що машина коштує дорого.

`solution` — це відповідь на проблему або спосіб її вирішення.

`Doesn't/don't have to` використовується, щоб висловити, що немає потреби або вимоги щось робити.

# --fillInTheBlank--

## --sentence--

`And you don't have to BLANK BLANK BLANK BLANK for that.`

## --blanks--

`search`

### --feedback--

Це слово означає шукати щось уважно.

---

`for`

### --feedback--

Цей прийменник використовується з `search`, щоб вказати, що саме ви намагаєтеся знайти.

---

`expensive`

### --feedback--

Це слово описує щось, що коштує багато грошей.

---

`solutions`

### --feedback--

Це відповіді або способи розв’язання проблеми.

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.3-5.mp3",
      "startTime": 1,
      "startTimestamp": 32.52,
      "finishTimestamp": 35.22
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 3.70,
      "dialogue": {
        "text": "And you don't have to search for expensive solutions for that.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.20
    }
  ]
}
```
