---
id: 67efebdf734ad521ace8a89e
title: タスク 57
challengeType: 22
dashedName: task-57
lang: en-US
---

<!-- (audio) Jake: Sure, Jessica. It could be an unpatched vulnerability. -->

# --instructions--

音声を聞いて、以下の文を完成させてください。

# --fillInTheBlank--

## --sentence--

`Sure, Jessica. It could be an BLANK.`

## --blanks--

`unpatched vulnerability`

### --feedback--

この2語のフレーズは、修正や更新がされておらず、悪用される可能性のあるシステムのセキュリティ上の欠陥を指します。

# --explanation--

`Unpatched` は、何かが更新または修正されていないことを意味します。

`Vulnerability` は、悪用される可能性のあるシステムの弱点を指します。

合わせて、`unpatched vulnerability` は修正や更新がされていないセキュリティ上の弱点です。ハッカーはこれらの弱点を利用してシステムを攻撃します。例えば：

`We need to fix the unpatched vulnerability now.` - チームはセキュリティ問題を認識していますが、まだ修復されていません。

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
      "filename": "B1_17-2.mp3",
      "startTime": 1,
      "startTimestamp": 6.72,
      "finishTimestamp": 10.1
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
      "finishTime": 4.38,
      "dialogue": {
        "text": "Sure, Jessica. It could be an unpatched vulnerability.",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "opacity": 0,
      "startTime": 4.88
    }
  ]
}
```
