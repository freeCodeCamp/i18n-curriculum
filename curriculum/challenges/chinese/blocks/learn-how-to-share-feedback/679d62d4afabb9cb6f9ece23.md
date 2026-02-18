---
id: 679d62d4afabb9cb6f9ece23
title: 任务 106
challengeType: 19
dashedName: task-106
lang: en-US
---

<!-- (Audio) Maria: If we rush, it could lead to more problems. -->

# --instructions--

听音频，回答下面的问题。

# --questions--

## --text--

Maria 想避免做什么，为什么？

## --answers--

她想避免修复这个问题。

### --feedback--

Maria 并没有说他们不应该解决这个问题。

---

她想避免寻求帮助。

### --feedback--

Maria 没有提到请求帮助。

---

她想避免匆忙，因为这可能会导致更多问题。

---

她想避免更新软件。

### --feedback--

Maria 并没有说他们应该避免更新。

## --video-solution--

3

# --explanation--

`To lead to problems` 意味着某个操作或决定可能导致困难或负面后果。例如：

`Skipping the testing phase can lead to serious problems in the software.` - 这意味着如果没有正确进行测试，可能会导致严重的技术问题。

在这个对话框中，Maria 担心匆忙可能会创建额外的问题。

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Maria",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_8-3.mp3",
      "startTime": 1,
      "startTimestamp": 47.08,
      "finishTimestamp": 49
    }
  },
  "commands": [
    {
      "character": "Maria",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Maria",
      "startTime": 1,
      "finishTime": 2.92,
      "dialogue": {
        "text": "If we rush, it could lead to more problems.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 3.42
    }
  ]
}
```
