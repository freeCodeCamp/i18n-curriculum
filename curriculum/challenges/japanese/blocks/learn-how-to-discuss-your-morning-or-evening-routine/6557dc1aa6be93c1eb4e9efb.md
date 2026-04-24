---
id: 6557dc1aa6be93c1eb4e9efb
title: タスク 29
challengeType: 19
dashedName: task-29
lang: en-US
---

<!-- (Audio) Sarah: Anyway, before leaving for work, I like to check my emails and messages to see if there are any urgent updates from the team. -->

# --description--

`if` は「～かどうか」という意味です。例えば：

`She checks her emails to see if there are any urgent updates.` - これは彼女が更新があるかどうかを知ろうとしていることを意味します。

`If` は条件文の一部としても使われ、ある状況とその結果を示します。例えば：

`If there are urgent updates, I will reply immediately.` - これは返信が緊急の更新があるかどうかに依存することを意味します。

# --questions--

## --text--

サラがメールやメッセージを確認すると言ったときに`if`を使ったことで、何を示唆していますか？

## --answers--

彼女はいつもチームから緊急の更新を見つけます。

### --feedback--

`If` は緊急の更新が必ず見つかることを示していません。

---

時々緊急の更新があり、時々ありません。

---

彼女はメールやメッセージを決して確認しません。

### --feedback--

サラは実際にメールやメッセージを確認すると述べています。

---

メールの確認は彼女のルーティンの一部ではありません。

### --feedback--

サラはメールやメッセージの確認がルーティンの一部であると言っています。

## --video-solution--

2

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "2.2-1.mp3",
      "startTime": 1,
      "startTimestamp": 55.08,
      "finishTimestamp": 60.78
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
      "finishTime": 6.70,
      "dialogue": {
        "text": "Anyway, before leaving for work, I like to check my emails and messages to see if there are any urgent updates from the team.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 7.20
    }
  ]
}
```
