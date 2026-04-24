---
id: 67d81e8afbcfb390dd7fc1e0
title: タスク 133
challengeType: 19
dashedName: task-133
lang: en-US
---

<!-- (audio) Lisa: Have you checked which files were compromised? -->

<!-- SPEAKING -->

# --instructions--

音声を聞いて、以下の質問に答えてください。

# --questions--

## --text--

ジェイク はまだ確認しておらず、チームは別のことにフォーカスすべきだと言っています。彼は何と言うでしょうか？  

## --answers--

`Not yet, but we should focus on the critical systems first.`

### --audio-id--

ENcd1493b2

---

`I already checked, and everything looks fine.`

### --audio-id--

EN4ec0b91b

### --feedback--

ジェイク はまだ確認していないので、これを確かめることはできません。

## --video-solution--

1

# --explanation--

重要なシステムの保護が、個々のファイルの評価よりも通常は優先されます。

`Not yet.` は ジェイク がどのファイルが侵害されたかまだ確認していないことを意味します。

`We should focus on the critical systems first.` はファイルを見る代わりに、チームがシステムの重要な部分の保護を優先すべきだという意味です。

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
      "filename": "B1_14-3.mp3",
      "startTime": 1,
      "startTimestamp": 37.82,
      "finishTimestamp": 39.88
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
      "finishTime": 3.06,
      "dialogue": {
        "text": "Have you checked which files were compromised?",
        "align": "center"
      }
    },
    {
      "character": "Lisa",
      "opacity": 0,
      "startTime": 3.56
    }
  ]
}
```
