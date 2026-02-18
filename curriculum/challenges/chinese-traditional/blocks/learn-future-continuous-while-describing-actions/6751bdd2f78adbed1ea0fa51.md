---
id: 6751bdd2f78adbed1ea0fa51
title: 任務 24
challengeType: 19
dashedName: task-24
lang: en-US
---

<!-- (Audio) Brian: Do you think we'll need to update the users about the downtime? -->

# --instructions--

聆聽音訊並回答以下問題。

# --questions--

## --text--

Brian 的擔憂是什麼？

## --answers--

如果需要通知使用者關於停機時間。

---

如果停機時間會持續太久。

### --feedback--

Brian 並不是在詢問停機時間的長度。

---

如果使用者將遇到技術問題。

### --feedback--

Brian 在他的關切中沒有提到技術問題。

---

如果停機時間會影響伺服端的效率、性能。

### --feedback--

Brian 的關注點不是伺服端的效率、性能。

## --video-solution--

1

# --explanation--

Brian 正在詢問是否應該更新使用者關於停機時間的資訊，他關心的是與使用者的通訊，而非停機時間長短、技術問題或伺服端效率。

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
