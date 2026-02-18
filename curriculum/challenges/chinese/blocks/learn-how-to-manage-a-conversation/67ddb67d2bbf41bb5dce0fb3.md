---
id: 67ddb67d2bbf41bb5dce0fb3
title: 任务 36
challengeType: 19
dashedName: task-36
lang: en-US
---

<!-- (Audio) James: No problem. Talk to you later. -->

# --instructions--

听音频，回答下面的问题。

# --questions--

## --text--

我们可以从 James 的回答中得出什么结论？

## --answers--

他需要先解决一个问题。

### --feedback--

James 没有提到另一个问题。

---

他正在以友好的方式结束对话。

---

他现在想调度一个会议。

### --feedback--

没有提到安排任何事情。

---

他正在请求更多帮助。

### --feedback--

James 没有发出请求。

## --video-solution--

2

# --explanation--

在对话中，当意思明确时你经常省略词语。在 `Talk to you later` 中，主语 `I'll`（`I will` 的缩写）被省略了。完整的句子应该是 `I'll talk to you later`。这种省略在日常口语中很常见。另一个例子：

`See you tomorrow!`——这是说 `I'll see you tomorrow` 的简短方式。

# --scene--

```json
{
  "setup": {
    "background": "interview-room2.png",
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
      "filename": "B1_15-1.mp3",
      "startTime": 1,
      "startTimestamp": 44.74,
      "finishTimestamp": 46.5
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
      "finishTime": 2.76,
      "dialogue": {
        "text": "No problem. Talk to you later.",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 3.26
    }
  ]
}
```
