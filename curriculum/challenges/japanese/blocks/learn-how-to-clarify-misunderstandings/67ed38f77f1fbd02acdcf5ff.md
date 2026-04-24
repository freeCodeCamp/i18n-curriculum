---
id: 67ed38f77f1fbd02acdcf5ff
title: タスク 53
challengeType: 22
dashedName: task-53
lang: en-US
---

<!-- (Audio) Lisa: Sure, Mark. What's going on? -->

# --instructions--

音声を聞いて、下の文を完成させてください。

# --fillInTheBlank--

## --sentence--

`Sure, Mark. What's BLANK?`

## --blanks--

`going on`

### --feedback--

この2語のフレーズは、何が起きているのか、状況はどうなっているのかを尋ねるときに使います。最初の単語は`-ing`で終わります。

# --explanation--

`What's going on?`は、誰かに何が起きているのか、状況はどうなっているのか、どんな問題やイベントが起きているのかを尋ねる一般的な表現です。例えば：

`What's going on at the meeting?` – 会議中に何が起きているのかを尋ねています。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Lisa",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_16-2.mp3",
      "startTime": 1,
      "startTimestamp": 7.62,
      "finishTimestamp": 9.1
    }
  },
  "commands": [
    {
      "character": "Lisa",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Lisa",
      "startTime": 1,
      "finishTime": 2.48,
      "dialogue": {
        "text": "Sure, Mark. What's going on?",
        "align": "center"
      }
    },
    {
      "character": "Lisa",
      "opacity": 0,
      "startTime": 2.98
    }
  ]
}
```
