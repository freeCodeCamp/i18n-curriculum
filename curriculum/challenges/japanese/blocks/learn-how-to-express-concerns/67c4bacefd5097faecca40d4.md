---
id: 67c4bacefd5097faecca40d4
title: タスク 22
challengeType: 19
dashedName: task-22
lang: en-US
---

<!-- (Audio) Bob: True, but we could try working even more extra hours just for this project. Wouldn't that make a difference? -->

# --instructions--

音声を聞いて、以下の質問に答えてください。

# --questions--

## --text--

ボブは何を知りたいと思っていますか？  

## --answers--

もしプロジェクトをキャンセルすべきかどうか。  

### --feedback--

ボブはプロジェクトのキャンセルについては尋ねていません。  

---

もし労働時間を減らしたほうが良いかどうか。  

### --feedback--

ボブは労働時間を減らすのではなく、増やすことを提案しています。  

---

チームがすでに問題を解決したかどうか。  

### --feedback--

ボブは自分の提案が役立つかどうかを尋ねており、問題がすでに解決されたかどうかではありません。  

---

もし残業が状況を改善するかどうか。  

## --video-solution--

4  

# --explanation--

助動詞やモーダル動詞（`wouldn't`、`isn't`、`doesn't`など）を使った否定疑問文は、直接的な`yes`/`no`の答えを必要とし、話者が肯定的な答えを期待していることを示します。今回の場合、ボブは残業が効果的だと考えています。別の例：

`Doesn't this plan seem like a good idea?` - 話者は聞き手がその計画に賛成すると期待しています。

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Bob",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_12-1.mp3",
      "startTime": 1,
      "startTimestamp": 29,
      "finishTimestamp": 34.76
    }
  },
  "commands": [
    {
      "character": "Bob",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Bob",
      "startTime": 1,
      "finishTime": 5.18,
      "dialogue": {
        "text": "True, but we could try working even more extra hours just for this project.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "startTime": 5.68,
      "finishTime": 6.76,
      "dialogue": {
        "text": "Wouldn't that make a difference?",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 7.26
    }
  ]
}
```
