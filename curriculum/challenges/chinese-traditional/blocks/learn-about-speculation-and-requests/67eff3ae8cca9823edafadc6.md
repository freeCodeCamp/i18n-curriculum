---
id: 67eff3ae8cca9823edafadc6
title: 任務 59
challengeType: 19
dashedName: task-59
lang: en-US
---

<!-- (audio) Jake: Have you checked whether all security updates were applied? -->

# --instructions--

聆聽音訊並回答以下問題。

# --questions--

## --text--

Jake 在問什麼？

## --answers--

如果更新已經套用。

---

如果釋出新的安全性更新。

### --feedback--

Jake 並不是在詢問是否有新更新。

---

誰負責安全性更新。

### --feedback--

Jake 並不是在問關於特定的人。

---

安全性更新的運作方式。

### --feedback--

Jake 假設 Jessica 知道安全性更新。

## --video-solution--

1

# --explanation--

Jake 想知道是否有人已經驗證所有更新都已安裝。

透過 `Have you checked...?` 他詢問 Jessica 是否已經調查過某件事。

透過 `whether all security updates were applied` 他詢問更新是否成功安裝。

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
      "startTimestamp": 10.52,
      "finishTimestamp": 13.02
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
      "finishTime": 3.5,
      "dialogue": {
        "text": "Have you checked whether all security updates were applied?",
        "align": "center"
      }
    },
    {
      "character": "Jake",
      "opacity": 0,
      "startTime": 4
    }
  ]
}
```
