---
id: 67a75a9acd71d2ed6eb9a6fa
title: タスク 20
challengeType: 22
dashedName: task-20
lang: en-US
---

<!-- (Audio) Linda: Absolutely. And I can also prepare some user scenarios for testing, so we can ensure a smooth user experience. -->

# --instructions--

音声を聞いて、以下の文を完成させてください。

# --fillInTheBlank--

## --sentence--

`Absolutely. And I can also prepare some BLANK for testing, so we can ensure a smooth user experience.`

## --blanks--

`user scenarios`

### --feedback--

この2語のフレーズは、製品と人がどのように関わるかを表すさまざまな状況を指します。

# --explanation--

`User scenarios` は、ユーザーが目標を達成するために製品とどのように関わるかを説明するさまざまな状況を指します。これはチームがユーザー体験をテストし改善するのに役立ちます。例えば：

`We created user scenarios to see how customers navigate the checkout process.` – これはチームがユーザーが購入を完了するさまざまな方法をシミュレートして問題点を特定したことを意味します。  

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Linda",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_10-1.mp3",
      "startTime": 1,
      "startTimestamp": 20.86,
      "finishTimestamp": 26.68
    }
  },
  "commands": [
    {
      "character": "Linda",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Linda",
      "startTime": 1,
      "finishTime": 6.82,
      "dialogue": {
        "text": "Absolutely. And I can also prepare some user scenarios for testing so we can ensure a smooth user experience.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 7.32
    }
  ]
}
```
