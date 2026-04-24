---
id: 6751bdd2f78adbed1ea0fa51
title: タスク 24
challengeType: 19
dashedName: task-24
lang: en-US
---

<!-- (Audio) Brian: Do you think we'll need to update the users about the downtime? -->

# --instructions--

音声を聞いて、以下の質問に答えてください。

# --questions--

## --text--

ブライアンの懸念は何ですか？

## --answers--

ユーザーにダウンタイムについて知らせる必要があるかどうか。

---

ダウンタイムが長引くかどうか。

### --feedback--

ブライアンはダウンタイムの長さについては尋ねていません。

---

ユーザーが技術的な問題を経験するかどうか。

### --feedback--

ブライアンは技術的な問題については言及していません。

---

ダウンタイムがサーバーのパフォーマンスに影響を与えるかどうか。

### --feedback--

ブライアンの懸念はサーバーのパフォーマンスではありません。

## --video-solution--

1

# --explanation--

ブライアンはユーザーにダウンタイムについて更新すべきかどうかを尋ねており、彼の懸念はダウンタイムの長さや技術的な問題、サーバーのパフォーマンスではなく、ユーザーとのコミュニケーションに関するものです。

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
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
      "filename": "B1_6-1.mp3",
      "startTime": 1,
      "startTimestamp": 38.78,
      "finishTimestamp": 41.26
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
      "finishTime": 3.48,
      "dialogue": {
        "text": "Do you think we'll need to update the users about the downtime?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 3.98
    }
  ]
}
```
