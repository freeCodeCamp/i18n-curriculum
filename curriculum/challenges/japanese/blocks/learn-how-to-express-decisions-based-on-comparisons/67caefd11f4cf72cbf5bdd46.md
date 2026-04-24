---
id: 67caefd11f4cf72cbf5bdd46
title: タスク 37
challengeType: 22
dashedName: task-37
lang: en-US
---

<!-- (audio) Jake: Not really. SafeGuard is more focused on security, so it might not integrate as easily with other platforms. -->

# --instructions--

音声を聞いて、下の文を完成させてください。

# --fillInTheBlank--

## --sentence--

`BLANK. SafeGuard is more focused on security, so it might not integrate as easily with other platforms.`

## --blanks--

`Not really`

### --feedback--

この2語のフレーズは、「いいえ」や「正確には違う」という意味をカジュアルに表現する方法です。丁寧に反対したり、やわらかく直接的でない返答をしたいときによく使われます。最初の単語の最初の文字は大文字です。

# --explanation--

`Not really` は否定の答えをやわらかく伝えるときによく使われます。単に `No` と言うよりもカジュアルです。例えば：

- **チームリーダー:** `Do you think this software is user-friendly?`

- **インターン:** `Not really.` - これは「使いやすくはないけど、話者は完全に確信しているわけではない」という意味です。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Jake",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_13-1.mp3",
      "startTime": 1,
      "startTimestamp": 56.88,
      "finishTimestamp": 62.58
    }
  },
  "commands": [
    {
      "character": "Jake",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jake",
      "startTime": 1,
      "finishTime": 6.7,
      "dialogue": {
        "text": "Not really. Safeguard is more focused on security, so it might not integrate as easily with other platforms.",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "opacity": 0,
      "startTime": 7.2
    }
  ]
}
```
