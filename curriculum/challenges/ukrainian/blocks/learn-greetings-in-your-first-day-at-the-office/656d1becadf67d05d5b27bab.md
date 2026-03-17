---
id: 656d1becadf67d05d5b27bab
title: Завдання 149
challengeType: 19
dashedName: task-149
lang: en-US
---

<!--
AUDIO REFERENCE:
Sophie: Oh, come on, Brian.
Brian: But it's true. She's the person to go to if you need help.
-->

# --description--

Так само, як ви вивчали займенник `he`, займенники на кшталт `she` використовуються для позначення жіночих осіб. Вони допомагають уникнути повторів у розмові. Подивіться на цю частину діалогу:

- Sophie: `Oh, come on, Brian.`

- Brian: `But it's true. She's the person to go to if you need help.`

Тут Brian використовує `she`, щоб позначити Sophie. Замість того, щоб повторювати ім’я Sophie, Brian використовує займенник `she`, щоб зробити розмову плавнішою і уникнути повторів.

# --questions--

## --text--

У діалозі яке слово використовує Brian, щоб позначити Sophie, не повторюючи її ім’я?

## --answers--

`he`

### --feedback--

`He` позначає чоловічу особу.

---

`they`

### --feedback--

`They` є множиною і позначає більше ніж одну особу.

---

`it`

### --feedback--

`It` зазвичай використовується для речей або тварин.

---

`she`

## --video-solution--

4

# --scene--

```json
{
  "setup": {
    "background": "cafe.png",
    "characters": [
      {
        "character": "Sophie",
        "position": { "x": 25, "y": 0, "z": 1.3 },
        "opacity": 0
      },
      {
        "character": "Brian",
        "position": { "x": 75, "y": 15, "z": 1.2 },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "1.1-4.mp3",
      "startTime": 1,
      "startTimestamp": 22.6,
      "finishTimestamp": 28.16
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 2.4,
      "dialogue": {
        "text": "Oh, come on, Brian.",
        "align": "left"
      }
    },
    {
      "character": "Brian",
      "startTime": 3.3,
      "finishTime": 6.35,
      "dialogue": {
        "text": "But it's true. She's the person to go to if you need help.",
        "align": "right"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 6.85
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 6.85
    }
  ]
}
```
