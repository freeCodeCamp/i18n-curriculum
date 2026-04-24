---
id: 65fc9c5db0a80e6e3d3cfce5
title: タスク 37
challengeType: 22
dashedName: task-37
lang: en-US
---

<!-- (Audio) Brian: Yeah, wow. You know what? This was really a motivating talk. Thanks for sharing your thoughts. -->

# --description--

この会話の部分では、ブライアンがトークを聞いて感じたことについて話し、マリアが視点を共有してくれたことに感謝しています。

# --fillInTheBlank--

## --sentence--

`Yeah, wow. You know what? This was really a BLANK talk. Thanks for BLANK your thoughts.`

## --blanks--

`motivating`

### --feedback--

この言葉は、エネルギーや何かをする理由を与えるものを意味します。誰かの言葉がもっと頑張りたいと思わせるような時のことです。

---

`sharing`

### --feedback--

この言葉は、自分が持っているものを他の人に与えることを意味します。自分の考えや気持ちを誰かに伝える時のことです。

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
