---
id: 6557dc1aa6be93c1eb4e9efb
title: 任務 29
challengeType: 19
dashedName: task-29
lang: en-US
---

<!-- (Audio) Sarah: Anyway, before leaving for work, I like to check my emails and messages to see if there are any urgent updates from the team. -->

# --description--

字 `if` 意思是「是否」。例如：

`She checks her emails to see if there are any urgent updates.`－這表示她正在查看是否有任何緊急更新。

`If` 也可以是條件述語的零件，顯示可能的情況及其結果。 例如：

如果有緊急更新，我會立即回覆。

# --questions--

## --text--

Sarah 在她關於檢查電子郵件和訊息的述語中使用 `if` 意味著什麼？

## --answers--

她總是找到來自她團隊的緊急更新。

### --feedback--

`If` 並不表示一定會找到緊急更新。

---

有時候有緊急更新，有時候沒有。

---

她從不查看她的電子郵件和訊息。

### --feedback--

Sarah 實際上表示她確實會檢查她的電子郵件和訊息。

---

檢查電子郵件不是她的常式零件。

### --feedback--

Sarah 提到檢查電子郵件和訊息是她常式的一部分。

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
