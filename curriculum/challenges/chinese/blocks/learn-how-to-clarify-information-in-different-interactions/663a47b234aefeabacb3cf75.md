---
id: 663a47b234aefeabacb3cf75
title: 任务 27
challengeType: 22
dashedName: task-27
lang: en-US
---

<!-- (Audio) Sophie: Sure. Tom is a tall guy with a friendly smile. -->

# --description--

另一个人独特的特征是他们的身高。你可以说，例如，有人是 `tall` 或 `short`。  
`Tall` 的人是指身高高于平均水平的人。相反，`short` 是指身高低于平均水平的人。

# --fillInTheBlank--

## --sentence--

`Sure. Tom is a BLANK guy with a friendly smile.`

## --blanks--

`tall`

### --feedback--

在高度方面高于平均水平。

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
