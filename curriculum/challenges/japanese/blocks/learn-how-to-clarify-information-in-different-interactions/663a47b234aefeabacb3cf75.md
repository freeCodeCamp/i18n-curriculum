---
id: 663a47b234aefeabacb3cf75
title: タスク 27
challengeType: 22
dashedName: task-27
lang: en-US
---

<!-- (Audio) Sophie: Sure. Tom is a tall guy with a friendly smile. -->

# --description--

もう一つの特徴的な要素は身長です。例えば、誰かが `tall` または `short` と言うことができます。
`tall` な人は、身長が平均より高い人のことです。反対に、誰かが `short` の場合は、その人の身長が平均より低いことを意味します。

# --fillInTheBlank--

## --sentence--

`Sure. Tom is a BLANK guy with a friendly smile.`

## --blanks--

`tall`

### --feedback--

身長が平均より高いことを意味します。

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
