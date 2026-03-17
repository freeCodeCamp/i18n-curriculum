---
id: 65d6bc21bbb3fb20d47cd7ed
title: Завдання 43
challengeType: 22
dashedName: task-43
lang: en-US
---

<!-- (Audio) Tom: I don't really know her, to be honest. What's her role?
-->

# --description--

Запитання `What's her role?` — це спосіб дізнатися про чиюсь роботу або посаду в групі чи проєкті. `Role` означає частину або роботу, яку хтось виконує в певній ситуації. Наприклад, якщо `role` людини в школі — це вчитель, це означає, що її робота — навчати учнів.

# --fillInTheBlank--

## --sentence--

`I don't really know her, to be honest. What's BLANK BLANK?`

## --blanks--

`her`

### --feedback--

Це слово показує, що Том говорить про роботу або роль жінки.

---

`role`

### --feedback--

Це слово означає роботу або посаду, яку хтось має в певній ситуації.

# --scene--

```json
{
  "setup": {
    "background": "company1-reception.png",
    "characters": [
      {
        "character": "Tom",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.3-2.mp3",
      "startTime": 1,
      "startTimestamp": 15.98,
      "finishTimestamp": 18.96
    }
  },
  "commands": [
    {
      "character": "Tom",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Tom",
      "startTime": 1,
      "finishTime": 3.98,
      "dialogue": {
        "text": "I don't really know much about her to be honest. What's her role?",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 4.48
    }
  ]
}
```
