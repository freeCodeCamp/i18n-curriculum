---
id: 68555dfadef342c2db9b5abf
title: タスク 83
challengeType: 22
dashedName: task-83
lang: en-US
---

<!-- (Audio) David: What about testing? The last update brought up some unexpected challenges. -->

# --instructions--

音声を聞いて、以下の文を完成させてください。

# --fillInTheBlank--

## --sentence--

`What about testing? The last update BLANK some BLANK challenges.`

## --blanks--

`brought up`

### --feedback--

この2語のフレーズは、何かを引き起こしたり問題として現れさせたりしたことを意味します。最初の単語は`bring`の過去形です。

---

`unexpected`

### --feedback--

この単語は、計画されていなかったり予測されていなかったことが起きたことを意味します。`-ed`で終わります。

# --explanation--

`Brought up`は、特に問題や課題を引き起こしたことを意味します。ここで、`brought`は`bring`の過去形です。例えば：

`The new feature brought up several bugs.` – これは機能がバグを引き起こしたことを意味します。

`Unexpected`は、警告や計画なしに起きたことを表します。例えば：

`We had an unexpected delay due to server issues.` – これは遅延が予期されていなかったことを意味します。

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "David",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_22-2.mp3",
      "startTime": 1,
      "startTimestamp": 31.32,
      "finishTimestamp": 35.5
    }
  },
  "commands": [
    {
      "character": "David",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "David",
      "startTime": 1,
      "finishTime": 5.18,
      "dialogue": {
        "text": "What about testing? The last update brought up some unexpected challenges.",
        "align": "center"
      }
    },
    {
      "character": "David",
      "opacity": 0,
      "startTime": 5.68
    }
  ]
}
```
