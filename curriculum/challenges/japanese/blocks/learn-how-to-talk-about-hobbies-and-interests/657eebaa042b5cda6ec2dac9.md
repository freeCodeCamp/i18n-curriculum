---
id: 657eebaa042b5cda6ec2dac9
title: タスク 59
challengeType: 22
dashedName: task-59
lang: en-US
---

<!-- (Audio) Sarah: Are you kidding? -->

# --description--

`Are you kidding?` は、不信や驚きを表現したり、時には誰かが冗談を言っているかどうかを確認するために使われます。

もし友達が「犬がスケートボードに乗って通りを走っているのを見た」と言ったら、驚いて本気か冗談かを確かめるために `Are you kidding?` と言うかもしれません。

# --fillInTheBlank--

## --sentence--

`Are you BLANK?`

## --blanks--

`kidding`

### --feedback--

この動詞は、不信や驚きを表現するフレーズで使われます。語尾は `-ing` で終わります。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.2-3.mp3",
      "startTime": 1,
      "startTimestamp": 29.28,
      "finishTimestamp": 30.04
    }
  },
  "commands": [
    {
      "character": "Sarah",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sarah",
      "startTime": 1,
      "finishTime": 1.76,
      "dialogue": {
        "text": "Are you kidding?",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 2.26
    }
  ]
}
```
