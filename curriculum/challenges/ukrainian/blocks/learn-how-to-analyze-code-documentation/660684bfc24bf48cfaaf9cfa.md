---
id: 660684bfc24bf48cfaaf9cfa
title: Завдання 8
challengeType: 22
dashedName: task-8
lang: en-US
---

<!-- (Audio) Sophie: Thanks, I'll give it a shot. -->

# --description--

`Give it a shot` означає спробувати щось зробити. Це як сказати `Try it`.

Наприклад, якщо ваш друг вагається приєднатися до курсу програмування, бо вважає, що це може бути занадто складно, ви могли б сказати `Why not give it a shot? You might enjoy it more than you think.`, щоб заохотити його спробувати приєднатися до цього курсу.

# --fillInTheBlank--

## --sentence--

`Thanks, BLANK give it a BLANK.`

## --blanks--

`I'll`

### --feedback--

Це скорочення від `I will`. Софі висловлює своє рішення спробувати те, що запропонував Браян.

---

`shot`

### --feedback--

У цьому контексті це означає спробу або намагання щось зробити. Софі каже, що спробує те, що рекомендував Браян.

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "7.3-1.mp3",
      "startTime": 1,
      "startTimestamp": 24.86,
      "finishTimestamp": 26.28
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
      "finishTime": 2.42,
      "dialogue": {
        "text": "Thanks, I'll give it a shot.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 2.92
    }
  ]
}
```
