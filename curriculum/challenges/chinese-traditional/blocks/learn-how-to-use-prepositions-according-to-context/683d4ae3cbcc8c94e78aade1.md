---
id: 683d4ae3cbcc8c94e78aade1
title: 任務 19
challengeType: 19
dashedName: task-19
lang: en-US
---

<!-- (Audio) Bob: Exactly. It's in the back, next to the emergency exit. -->

# --instructions--

聆聽音訊並回答以下問題。

# --questions--

## --text--

Bob 在解釋什麼？

## --answers--

緊急離開被阻塞。

### --feedback--

Bob 並沒有說離開被阻擋－他只是提到它的位置。

---

後門需要一個新的鎖。

### --feedback--

Bob 沒有提到任何關於鎖或後門需要維修的事。

---

伺服端機房需要清潔。

### --feedback--

Bob 的句子中沒有提到清理。

---

該物品位於緊急 `exit` 附近。

## --video-solution--

4

# --explanation--

Bob 說，`Exactly. It's in the back, next to the emergency exit`。這表示他正在確認某物的位置－就在緊急離開旁邊。

他不談論維修、清潔或問題。

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
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
      "filename": "B1_22-1.mp3",
      "startTime": 1,
      "startTimestamp": 16.4,
      "finishTimestamp": 19.72
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
      "finishTime": 4.32,
      "dialogue": {
        "text": "Exactly. It's in the back, next to the emergency exit.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 4.82
    }
  ]
}
```
