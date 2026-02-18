---
id: 656d1becadf67d05d5b27bab
title: 任务 149
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

就像你学习代词 `he` 时一样，像 `she` 这样的代词用于指代女性个体。它们有助于避免对话中的重复。看看这部分对话框：

- Sophie：`Oh, come on, Brian.`

- Brian：`But it's true. She's the person to go to if you need help.`

这里，`she` 被 Brian 用来 参考 Sophie。Brian 没有重复使用 Sophie 的名字，而是使用代词 `she` 使对话更流畅并避免重复。

# --questions--

## --text--

在对话框中，Brian 使用哪个词来称呼 Sophie 而不重复她的名字？

## --answers--

`he`

### --feedback--

`He` 指代男性。

---

`they`

### --feedback--

`They` 是复数，指两个或更多人。

---

`it`

### --feedback--

`It` 通常用于事物或动物。

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
