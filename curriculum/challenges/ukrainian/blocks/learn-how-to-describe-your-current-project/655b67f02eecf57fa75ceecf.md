---
id: 655b67f02eecf57fa75ceecf
title: Завдання 8
challengeType: 22
dashedName: task-8
lang: en-US
---

<!-- (Audio) Sophie: That's important work. I'm helping our team learn how to stay safe online. -->

# --description--

Для `stay` використовується, щоб позначити залишання в певному стані або умові. Його часто застосовують у інструкціях або порадах, щоб підтримувати себе в певній ситуації. Наприклад:

- `Stay safe online.` - Продовжуйте бути в безпеці під час користування інтернетом.

- `Stay calm during the test.` - Продовжуйте залишатися спокійними.

- `Stay focused on your work.` - Продовжуйте звертати увагу на свою роботу.

# --fillInTheBlank--

## --sentence--

`That's important work. I'm BLANK our team learn how to BLANK safe online.`

## --blanks--

`helping`

### --feedback--

Цей дієслово вказує, що Софі активно надає допомогу або підтримку своїй команді. Воно закінчується на `-ing`.

---

`stay`

### --feedback--

Це слово використовується, щоб запропонувати підтримувати певний стан, у цьому випадку — бути в безпеці під час роботи в мережі.

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "2.3-1.mp3",
      "startTime": 1,
      "startTimestamp": 13.92,
      "finishTimestamp": 17.34
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
      "finishTime": 4.42,
      "dialogue": {
        "text": "That's important work. I'm helping our team learn how to stay safe online.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.92
    }
  ]
}
```
