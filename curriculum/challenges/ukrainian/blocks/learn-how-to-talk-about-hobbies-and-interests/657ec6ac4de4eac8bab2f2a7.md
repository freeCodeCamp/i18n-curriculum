---
id: 657ec6ac4de4eac8bab2f2a7
title: Завдання 39
challengeType: 22
dashedName: task-39
lang: en-US
---

<!-- (Audio) Linda: Okay, it's a bike date then. -->

# --description--

Слово `date` може використовуватися в різних контекстах. Хоча воно часто означає романтичну зустріч між двома людьми, воно також може просто позначати призначену зустріч або заплановану подію між друзями чи колегами. Наприклад:

`Let's set a date for our next meeting.` — тут `date` використовується в неромантичному значенні, маючи на увазі вибір дня для зустрічі.

# --fillInTheBlank--

## --sentence--

`Okay, it's a BLANK BLANK then.`

## --blanks--

`bike`

### --feedback--

Це слово уточнює тип запланованої діяльності, вказуючи, що це прогулянка з велосипедами.

---

`date`

### --feedback--

Це слово позначає заплановану зустріч або подію.

# --scene--

```json
{
  "setup": {
    "background": "company1-reception.png",
    "characters": [
      {
        "character": "Linda",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.2-2.mp3",
      "startTime": 1,
      "startTimestamp": 44.64,
      "finishTimestamp": 46.58
    }
  },
  "commands": [
    {
      "character": "Linda",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Linda",
      "startTime": 1,
      "finishTime": 2.94,
      "dialogue": {
        "text": "Okay, it's a bike date then.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 3.44
    }
  ]
}
```
