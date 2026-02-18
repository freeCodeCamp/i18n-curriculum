---
id: 683d4ae3cbcc8c94e78aade1
title: 任务 19
challengeType: 19
dashedName: task-19
lang: en-US
---

<!-- (Audio) Bob: Exactly. It's in the back, next to the emergency exit. -->

# --instructions--

听音频，回答下面的问题。

# --questions--

## --text--

Bob 在解释什么？

## --answers--

紧急退出被堵住。

### --feedback--

Bob 并没有说退出被阻塞——他只是提到了它的位置。

---

后门需要一个新建的锁定。

### --feedback--

Bob 没有提到任何关于锁定或后门需要维修的事情。

---

服务器机房需要清洁。

### --feedback--

Bob 的句子中没有提到清理。

---

那个东西位于紧急 `exit` 附近。

## --video-solution--

4

# --explanation--

Bob 说，`Exactly. It's in the back, next to the emergency exit`。这意味着他正在确认某物的位置——就在紧急 `exit` 旁边。

他不谈论维修、清洁或问题。

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
