---
id: 6629ce6bffd1efa9c6c57eaa
title: Завдання 1
challengeType: 22
dashedName: task-1
lang: en-US
---

<!-- (Audio) Brian: Hey, Sophie. How's it going? -->

# --description--

Фраза `how's it going?` — це загальний спосіб запитати когось, як у нього справи або що відбувається в його житті. Її часто використовують як дружнє привітання.

Наприклад, коли ви бачите давнього друга, ви можете сказати `Hey, how's it going? I haven't seen you for a while!` Це неформальний спосіб поцікавитися його життям. Якщо хочете запитати про щось конкретне, наприклад про нову роботу, можна сказати `How's it going with your new job?`

# --fillInTheBlank--

## --sentence--

`Hey, Sophie. BLANK it BLANK?`

## --blanks--

`How's`

### --feedback--

Цей скорочений вираз часто використовують у неформальних привітаннях. Першу букву слід писати з великої.

---

`going`

### --feedback--

Це слово завершує загальне неформальне привітання, яке запитує про загальний стан людини.

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
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
      "filename": "5.1-1.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 2.08
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
      "finishTime": 3.08,
      "dialogue": {
        "text": "Hey, Sophie. How's it going?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 3.58
    }
  ]
}
```
