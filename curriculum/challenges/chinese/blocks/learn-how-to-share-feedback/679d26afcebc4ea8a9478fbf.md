---
id: 679d26afcebc4ea8a9478fbf
title: 任务 91
challengeType: 19
dashedName: task-91
lang: en-US
---

<!-- (Audio) James: Absolutely. Do you think we need to update the software again? -->

# --instructions--

听音频，回答下面的问题。

# --questions--

## --text--

James 确定他们需要更新软件吗？

## --answers--

不完全是，因为他是在征求 Maria 的意见。

---

是的，他已经决定更新它。

### --feedback--

James 正在问 Maria 这个问题，所以他可能还没有决定。

---

是的，他已经开始更新软件。

### --feedback--

James 正在询问他们是否应该更新软件。

---

相反，他确定他们不应该更新软件。

### --feedback--

James 并没有完全否定这个想法；他实际上是在征求 Maria 对该话题的意见。

## --video-solution--

1

# --explanation--

`To update` 意味着通过发布新版本来修改或改进软件。更新可以包括错误修复、新建特色或性能改进。例如：

`The company released an update to fix security vulnerabilities in the app.` - 这意味着发布了一个新版本以解决安全性问题。

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "James",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_8-3.mp3",
      "startTime": 1,
      "startTimestamp": 25.8,
      "finishTimestamp": 28.74
    }
  },
  "commands": [
    {
      "character": "James",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "James",
      "startTime": 1,
      "finishTime": 4.34,
      "dialogue": {
        "text": "Absolutely. Do you think we need to update the software again?",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 4.84
    }
  ]
}
```
