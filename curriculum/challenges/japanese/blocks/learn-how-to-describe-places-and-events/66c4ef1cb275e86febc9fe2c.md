---
id: 66c4ef1cb275e86febc9fe2c
title: タスク 113
challengeType: 22
dashedName: task-113
lang: en-US
---

<!-- Audio Reference:
Sarah: It should, but it's not displaying because the live server extension might not be running. -->

<!-- Audio Reference:
Sarah: It should, but it's not displaying because the live server extension might not be running. -->

# --instructions--

音声を聞いて、以下の文を完成させてください。

# --fillInTheBlank--

## --sentence--

`It should, but it's not BLANK because the live server extension might not be BLANK.`

## --blanks--

`displaying`

### --feedback--

何かを表示したりレンダリングしたりする動作です。この単語は`-ing`で終わります。

---

`running`

### --feedback--

拡張機能が有効で動作していることを示します。この単語は`-ing`で終わります。

# --explanation--

動名詞は`-ing`で終わる動詞の形で、名詞として機能します。この文では、`displaying`と`running`が進行中の動作を表す動名詞です。例えば：

- `Updating the software is essential.` - ここで`Updating`は動作を表す動名詞です。

サラの文では、`displaying`と`running`がライブサーバー拡張機能とその動作に関連する動作を表しています。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_1-3.mp3",
      "startTime": 1,
      "startTimestamp": 12.62,
      "finishTimestamp": 16.66
    }
  },
  "commands": [
    {
      "character": "Sarah",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sarah",
      "startTime": 1,
      "finishTime": 2.62,
      "dialogue": {
        "text": "It should, but it's not displaying",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "startTime": 2.62,
      "finishTime": 5.04,
      "dialogue": {
        "text": "because the live server extension might not be running.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 5.54
    }
  ]
}
```
