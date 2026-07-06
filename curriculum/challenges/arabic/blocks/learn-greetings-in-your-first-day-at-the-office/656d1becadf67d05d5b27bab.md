---
id: 656d1becadf67d05d5b27bab
title: المهمة 149
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

تمامًا كما تعلمت عن الضمير `he`، تُستخدم الضمائر مثل `she` للإشارة إلى الإناث. تساعد هذه الضمائر على تجنب التكرار في المحادثة. انظر إلى هذا الجزء من الحوار:

- صوفي: `Oh, come on, Brian.`

- براين: `But it's true. She's the person to go to if you need help.`

هنا، استخدم بريان الضمير `she` للإشارة إلى صوفي. بدلًا من تكرار اسم صوفي، استخدم بريان الضمير `she` لجعل المحادثة أكثر سلاسة وتجنب التكرار.

# --questions--

## --text--

في الحوار، ما الكلمة التي يستخدمها بريان للإشارة إلى صوفي دون تكرار اسمها؟

## --answers--

`he`

### --feedback--

`He` يشير إلى ذكر.

---

`they`

### --feedback--

`They` جمع ويشير إلى أكثر من شخص واحد.

---

`it`

### --feedback--

`It` يُستخدم عادة للأشياء أو الحيوانات.

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
