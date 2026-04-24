---
id: 67e6a8ecaee3ff6cec47cc3e
title: タスク 75
challengeType: 19
dashedName: task-75
lang: en-US
---

<!-- (Audio) Jessica: I'll try to be quick so we can get back to the main agenda. -->

# --instructions--

音声を聞いて、以下の質問に答えてください。

# --questions--

## --text--

なぜジェシカはバグについてチームに素早く説明したいのでしょうか？

## --answers--

会議の主な議題に戻りたいからです。

---

会議を早く終わらせたいからです。

### --feedback--

ジェシカは会議を早く終わらせたいとは言っていません。

---

チームはすでにバグを知っているからです。

### --feedback--

ジェシカはバグがチームに影響を与えるかもしれないので説明しています。

---

バグは重要だと思っていないからです。

### --feedback--

ジェシカは問題を重要だと考えていますが、会議の議題も尊重したいと思っています。

## --video-solution--

1

# --explanation--

`So we can` は目的を示すために使われます。これは、次に述べることが話者の意図であることを意味します。なぜ誰かが何かをするのかを説明します。例えば：

`I'll finish this now so we can start the next task.` – これは話者が一つのことを終えて、すぐに別のことを始めたいという意味です。

`The main agenda` は会議やイベントの主要な議題や計画を指します。例えば：

`Let's stick to the main agenda and avoid side discussions.` – これは会議の最も重要な項目にフォーカスし続けることを意味します。

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Jessica",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_15-2.mp3",
      "startTime": 1,
      "startTimestamp": 45.8,
      "finishTimestamp": 48.14
    }
  },
  "commands": [
    {
      "character": "Jessica",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jessica",
      "startTime": 1,
      "finishTime": 3.34,
      "dialogue": {
        "text": "I'll try to be quick so we can get back to the main agenda.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "opacity": 0,
      "startTime": 3.84
    }
  ]
}
```
