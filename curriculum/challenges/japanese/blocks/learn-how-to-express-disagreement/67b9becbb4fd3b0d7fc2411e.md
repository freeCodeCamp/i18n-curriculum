---
id: 67b9becbb4fd3b0d7fc2411e
title: タスク 65
challengeType: 22
dashedName: task-65
lang: en-US
---

<!-- (Audio) David: It seems like it could lead to a lot of delays and miscommunication. -->

# --instructions--

音声を聞いて、以下の文を完成させてください。

# --fillInTheBlank--

## --sentence--

`It seems like it could lead to a lot of BLANK and BLANK.`

## --blanks--

`delays`

### --feedback--

この単語は、予想よりも時間がかかることを指します。

---

`miscommunication`

### --feedback--

この単語は、不明瞭または誤った情報によって引き起こされる誤解を指します。

# --explanation--

デイビッドは、非同期のリモートワークが`delays`（レスポンスや進捗の遅れ）や`miscommunication`（人々の誤解）を引き起こすのではないかと懸念しています。

従業員が異なる時間に働くため、メッセージの返信に時間がかかることがあり、コミュニケーションが明確でないと誤解が生じる場合があります。

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
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
      "filename": "B1_11-2.mp3",
      "startTime": 1,
      "startTimestamp": 24.82,
      "finishTimestamp": 28.84
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
      "finishTime": 5.02,
      "dialogue": {
        "text": "It seems like it could lead to a lot of delays and miscommunication.",
        "align": "center"
      }
    },
    {
      "character": "David",
      "opacity": 0,
      "startTime": 5.52
    }
  ]
}
```
