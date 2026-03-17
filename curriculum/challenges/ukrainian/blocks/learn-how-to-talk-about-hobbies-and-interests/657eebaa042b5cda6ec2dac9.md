---
id: 657eebaa042b5cda6ec2dac9
title: Завдання 59
challengeType: 22
dashedName: task-59
lang: en-US
---

<!-- (Audio) Sarah: Are you kidding? -->

# --description--

`Are you kidding?` використовується, щоб висловити недовіру, здивування або іноді підтвердити, чи хтось жартує.

Якщо ваш друг розповідає, що бачив собаку, яка їде на скейтборді вулицею, ви можете здивуватися і сказати `Are you kidding?`, щоб дізнатися, чи він справді серйозний, чи просто жартує.

# --fillInTheBlank--

## --sentence--

`Are you BLANK?`

## --blanks--

`kidding`

### --feedback--

Цей дієслово використовується у фразі, щоб висловити недовіру або здивування у відповідь на твердження. Воно закінчується на `-ing`.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.2-3.mp3",
      "startTime": 1,
      "startTimestamp": 29.28,
      "finishTimestamp": 30.04
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
      "finishTime": 1.76,
      "dialogue": {
        "text": "Are you kidding?",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 2.26
    }
  ]
}
```
