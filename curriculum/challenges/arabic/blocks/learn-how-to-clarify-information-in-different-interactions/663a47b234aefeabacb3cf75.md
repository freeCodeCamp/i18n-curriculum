---
id: 663a47b234aefeabacb3cf75
title: المهمة 27
challengeType: 22
dashedName: task-27
lang: en-US
---

<!-- (Audio) Sophie: Sure. Tom is a tall guy with a friendly smile. -->

# --description--

من الصفات المميزة الأخرى التي يمتلكها الأشخاص هي الطول. يمكنك أن تقول مثلًا إن شخصًا ما `tall` أو `short`.
الشخص `tall` هو من يكون أطول من المتوسط بالنسبة لطوله. والعكس عندما يكون شخص ما `short`، أي أقصر من المتوسط.

# --fillInTheBlank--

## --sentence--

`Sure. Tom is a BLANK guy with a friendly smile.`

## --blanks--

`tall`

### --feedback--

أطول من المتوسط بالنسبة للطول.

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
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
      "filename": "4.3-2.mp3",
      "startTime": 1,
      "startTimestamp": 15.12,
      "finishTimestamp": 17.74
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
      "finishTime": 3.62,
      "dialogue": {
        "text": "Sure. Tom is a tall guy with a friendly smile.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.12
    }
  ]
}
```
