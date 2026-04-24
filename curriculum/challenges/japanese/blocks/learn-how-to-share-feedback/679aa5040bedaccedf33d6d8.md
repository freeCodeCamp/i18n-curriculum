---
id: 679aa5040bedaccedf33d6d8
title: タスク 45
challengeType: 19
dashedName: task-45
lang: en-US
---

<!-- (Audio) Brian: If we all agreed on everything, we might miss important details, don't you think? -->

# --instructions--

音声を聞いて、以下の質問に答えてください。

# --questions--

## --text--

なぜブライアンは、みんなが同じ考えだと良くないと思っているのでしょうか？

## --answers--

重要な詳細を見落とすかもしれないからです。

---

意思決定が速くなるからです。

### --feedback--

ブライアンは、合意が有益だと言っているわけではありません。

---

意見の不一致はいつも問題を引き起こすからです。

### --feedback--

ブライアンは、意見の不一致が問題を引き起こすと言っているのではなく、ある程度の不一致は役に立つと言っています。

---

誰も意見を共有しなくなるからです。

### --feedback--

ブライアンは、人々が意見を共有しなくなることについて話しているわけではありません。

## --video-solution--

1

# --explanation--

結果節で `if + verb in the Simple Past` に続いて `might` の構造は、可能な結果を伴う仮定の状況を表すために使われます。例えば：

`If you studied more, you might pass the exam.` - これは、その人がもっと勉強すれば合格する可能性があることを意味します。

この対話では、`If we all agreed on everything, we might miss important details` が完全な合意の可能な悪影響を表しています。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Brian",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_8-2.mp3",
      "startTime": 1,
      "startTimestamp": 15.4,
      "finishTimestamp": 19.24
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
      "finishTime": 3.98,
      "dialogue": {
        "text": "If we all agreed on everything, we might miss important details,",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "startTime": 4.26,
      "finishTime": 4.84,
      "dialogue": {
        "text": "don't you think?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 5.34
    }
  ]
}
```
