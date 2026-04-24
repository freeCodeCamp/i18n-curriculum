---
id: 661bddbdbbc09e2b8fac0801
title: タスク 76
challengeType: 22
dashedName: task-76
lang: en-US
---

<!-- (Audio) Alice: Also, it's used for identity verification at airports and secure facilities. -->

# --description--

前置詞 `at` は地図上の地点を示します。特定の場所や位置を伝えます。何かがどこで起きているのか、誰かがどこにいるのかを理解するのに役立ちます。

例：

`We'll meet at the coffee shop.`（この文では、`at` が会議が行われる場所、つまりコーヒーショップを指定するために使われています）。

`I'll be waiting for you at the bus stop.`（ここでは `at` が誰かが待っている場所、つまりバス停を示すために使われています）。

文を聞いて空欄を埋めてください。

# --fillInTheBlank--

## --sentence--

`Also, it's used for identity verification BLANK airports and secure facilities.`

## --blanks--

`at`

### --feedback--

何かがどこにあるか、またはどこで起きているかを理解するのに使われる前置詞です。

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Alice",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "4.2-4.mp3",
      "startTime": 1,
      "startTimestamp": 15.22,
      "finishTimestamp": 19.04
    }
  },
  "commands": [
    {
      "character": "Alice",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Alice",
      "startTime": 1,
      "finishTime": 4.82,
      "dialogue": {
        "text": "Also, it's used for identity verification at airports and secure facilities.",
        "align": "center"
      }
    },
    {
      "character": "Alice",
      "opacity": 0,
      "startTime": 5.32
    }
  ]
}
```
