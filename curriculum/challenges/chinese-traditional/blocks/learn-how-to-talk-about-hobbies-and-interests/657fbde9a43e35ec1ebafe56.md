---
id: 657fbde9a43e35ec1ebafe56
title: 任務 77
challengeType: 19
dashedName: task-77
lang: en-US
---

<!-- (Audio) Sarah: There's a big convention next month. Would you like to come? -->

# --description--

聆聽音訊並回答以下問題。

# --questions--

## --text--

在這個背景關係中，片語 `Would you like to come?` 傳達了什麼？

## --answers--

拒絕邀請。

### --feedback--

這句話並不是說「不」。它是關於提供一個邀請。

---

發出邀請。

---

表達感謝。

### --feedback--

這個片語並不表示「謝謝你」。它是關於邀請某人。

---

請求資訊。

### --feedback--

這句話不是用來獲取資訊的問題，而是對一個事件的禮貌邀請。

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
      "filename": "3.2-4.mp3",
      "startTime": 1,
      "startTimestamp": 18.70,
      "finishTimestamp": 21.36
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
      "finishTime": 3.66,
      "dialogue": {
        "text": "There's a big convention next month. Would you like to come?",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 4.16
    }
  ]
}
```
