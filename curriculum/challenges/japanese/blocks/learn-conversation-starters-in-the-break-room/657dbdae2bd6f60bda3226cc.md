---
id: 657dbdae2bd6f60bda3226cc
title: タスク 81
challengeType: 22
dashedName: task-81
lang: en-US
---

<!-- (audio) Tom: Tell me about our team meetings, Sophie. Do they happen every week? -->

# --description--

何かがどのくらいの頻度で起こるか知りたいときは、`every` の後に `day`、`week`、または `year` のような期間を続けて使うことができます。

この会話では、トム がチームミーティングの頻度について尋ねています。

# --instructions--

音声を聞いて、下の文を完成させてください。

# --fillInTheBlank--

## --sentence--

`Tell me about our team meetings, Sophie. Do they happen BLANK week?`

## --blanks--

`every`

### --feedback--

この単語はミーティングが毎週行われるかどうかを尋ねるときに使います。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Tom",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "1.3-4.mp3",
      "startTime": 1,
      "startTimestamp": 0.00,
      "finishTimestamp": 3.70
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
      "startTime": 1,
      "finishTime": 4.70,
      "dialogue": {
        "text": "Tell me about our team meetings, Sophie. Do they happen every week?",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 5.20
    }
  ]
}
```
