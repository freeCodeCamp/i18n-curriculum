---
id: 65fc9c5db0a80e6e3d3cfce5
title: المهمة 37
challengeType: 22
dashedName: task-37
lang: en-US
---

<!-- (Audio) Brian: Yeah, wow. You know what? This was really a motivating talk. Thanks for sharing your thoughts. -->

# --description--

في هذا الجزء من المحادثة، يتحدث برايان عن شعوره بعد الحديث ويشكر ماريا على مشاركتها وجهة نظرها.

# --fillInTheBlank--

## --sentence--

`Yeah, wow. You know what? This was really a BLANK talk. Thanks for BLANK your thoughts.`

## --blanks--

`motivating`

### --feedback--

هذه الكلمة تعني شيئًا يمنحك طاقة أو سببًا لفعل شيء ما. مثل عندما تدفعك كلمات شخص ما لبذل جهد أكبر.

---

`sharing`

### --feedback--

هذه الكلمة تعني إعطاء شيء تملكه للآخرين. مثل عندما تخبر شخصًا بأفكارك أو مشاعرك.

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
