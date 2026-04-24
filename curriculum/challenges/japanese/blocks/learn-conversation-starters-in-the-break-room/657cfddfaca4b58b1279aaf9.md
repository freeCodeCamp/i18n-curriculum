---
id: 657cfddfaca4b58b1279aaf9
title: タスク 74
challengeType: 22
dashedName: task-74
lang: en-US
---

<!-- (audio) Sophie: Maria thinks challenges are positive. She encourages us to find solutions together. -->

# --description--

`encourage` とは、誰かに支援や自信、希望を与えることを意味します。良いコーチがチームをやる気にさせてベストを尽くさせるためにすることです。

# --instructions--

音声を聞いて、下の文を完成させてください。

# --fillInTheBlank--

## --sentence--

`Maria thinks challenges are positive. She BLANK us to find solutions together.`

## --blanks--

`encourages`

### --feedback--

この動詞は、誰かをやる気にさせたり、鼓舞したりすることに関するものです。誰かを応援することに似ています。語尾の `-s` を忘れないでください。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "1.3-3.mp3",
      "startTime": 1,
      "startTimestamp": 41.96,
      "finishTimestamp": 46.26
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
      "finishTime": 5.30,
      "dialogue": {
        "text": "Maria thinks challenges are positive. She encourages us to find solutions together.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 5.80
    }
  ]
}
```
