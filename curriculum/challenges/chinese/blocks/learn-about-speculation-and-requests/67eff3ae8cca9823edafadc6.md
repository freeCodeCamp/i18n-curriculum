---
id: 67eff3ae8cca9823edafadc6
title: 任务 59
challengeType: 19
dashedName: task-59
lang: en-US
---

<!-- (audio) Jake: Have you checked whether all security updates were applied? -->

# --instructions--

听音频，回答下面的问题。

# --questions--

## --text--

Jake 在问什么？

## --answers--

如果更新已应用。

---

如果发布了新的安全性更新。

### --feedback--

Jake 并不是在询问是否存在新建更新。

---

谁负责安全性更新。

### --feedback--

Jake 不是在询问特定的人。

---

安全性更新的工作原理。

### --feedback--

Jake 假设 Jessica 知道关于安全性更新。

## --video-solution--

1

# --explanation--

Jake 想知道是否有人已经验证所有更新都已安装。

通过 `Have you checked...?` 他询问 Jessica 是否查看过某事。

通过 `whether all security updates were applied` 他询问更新是否成功安装。

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
