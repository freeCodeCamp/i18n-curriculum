---
id: 657cbef9aa43ceba8af6feb4
title: Завдання 51
challengeType: 22
dashedName: task-51
lang: en-US
---

<!-- (audio) Sophie: I think she has a passion for technology and enjoys leading our team. -->

# --description--

Коли вам дуже подобається щось робити, ви можете сказати, що ви `enjoy`. Це простий спосіб висловити, що щось приносить вам радість.

Наприклад, ви можете сказати `I enjoy playing video games`. Це означає, що грати у відеоігри для вас весело.

У діалозі Софі розповідає, що Марія отримує задоволення від своєї роботи.

# --fillInTheBlank--

## --sentence--

`I think she has a passion for technology and she BLANK leading our team.`

## --blanks--

`enjoys`

### --feedback--

Цей дієслово означає, що Марії щось подобається і вона відчуває радість, роблячи це. Воно закінчується на `-s`.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "1.3-3.mp3",
      "startTime": 1,
      "startTimestamp": 8.50,
      "finishTimestamp": 11.88
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
      "finishTime": 4.38,
      "dialogue": {
        "text": "I think she has a passion for technology and she enjoys leading our team.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.88
    }
  ]
}
```
