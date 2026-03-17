---
id: 657b72cbdef32ec0b1a24afb
title: Завдання 30
challengeType: 19
dashedName: task-30
lang: en-US
---

<!-- (audio) Tom: Wow! Electric or acoustic? Sophie: Electric, for sure. -->

# --description--

Коли ви чуєте про різні типи гітар, можуть згадуватися два загальні види: `electric` і `acoustic`.

`Electric guitars` зазвичай потребують чогось, що називається підсилювачем, щоб бути достатньо гучними, а `acoustic guitars` можна почути без додаткового обладнання.

# --questions--

## --text--

Який тип гітари віддає перевагу Софі?

## --answers--

Electric guitar

---

Acoustic guitar

### --feedback--

Софі дуже чітко дає зрозуміти, який тип гітари їй подобається. Та, яку вона віддає перевагу, потребує підсилювача, щоб бути гучною.

## --video-solution--

1

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Tom",
        "position": { "x": 50, "y": 15, "z": 1.2 },
        "opacity": 0
      },
      {
        "character": "Sophie",
        "position": { "x": 50, "y": 0, "z": 1.4 },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "1.3-2.mp3",
      "startTime": 1,
      "startTimestamp": 15.4,
      "finishTimestamp": 19.52
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
      "startTime": 1.1,
      "finishTime": 3.1,
      "dialogue": {
        "text": "Wow! Electric or acoustic?",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 3.2
    },
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 3.3
    },
    {
      "character": "Sophie",
      "startTime": 3.3,
      "finishTime": 5.12,
      "dialogue": {
        "text": "Electric, for sure.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 5.62
    }
  ]
}
```
