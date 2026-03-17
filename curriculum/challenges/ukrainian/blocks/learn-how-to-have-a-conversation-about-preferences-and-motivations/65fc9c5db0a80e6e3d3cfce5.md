---
id: 65fc9c5db0a80e6e3d3cfce5
title: Завдання 37
challengeType: 22
dashedName: task-37
lang: en-US
---

<!-- (Audio) Brian: Yeah, wow. You know what? This was really a motivating talk. Thanks for sharing your thoughts. -->

# --description--

У цій частині розмови Браян розповідає, як він почувався після виступу, і дякує Марії за те, що вона поділилася своєю точкою зору.

# --fillInTheBlank--

## --sentence--

`Yeah, wow. You know what? This was really a BLANK talk. Thanks for BLANK your thoughts.`

## --blanks--

`motivating`

### --feedback--

Це слово означає щось, що дає вам енергію або причину щось робити. Це як тоді, коли чиїсь слова змушують вас старатися більше.

---

`sharing`

### --feedback--

Це слово означає давати щось, що ви маєте, іншим. Це як коли ви розповідаєте комусь свої ідеї чи почуття.

# --scene--

```json
{
  "setup": {
    "background": "cafe.png",
    "characters": [
      {
        "character": "Brian",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "4.1-1.mp3",
      "startTime": 1,
      "startTimestamp": 70.38,
      "finishTimestamp": 76.10
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
      "finishTime": 6.72,
      "dialogue": {
        "text": "Yeah, wow. You know what? This was a really motivating talk. Thanks for sharing your thoughts.",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 7.22
    }
  ]
}
```
