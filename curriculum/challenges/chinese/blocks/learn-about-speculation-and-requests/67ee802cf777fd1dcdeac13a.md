---
id: 67ee802cf777fd1dcdeac13a
title: 任务 19
challengeType: 19
dashedName: task-19
lang: en-US
---

<!-- (audio) Sophie: No problem. You should also remember to use comments in your code. -->

# --instructions--

听音频，回答下面的问题。

# --questions--

## --text--

Sophie 提到了什么要求？

## --answers--

Mark 应该删除不必要的代码行。

### --feedback--

Sophie 不谈论删除代码。

---

Mark 应该完全重写他的代码。

### --feedback--

Sophie 不建议重写整个代码。

---

Mark 应避免使用循环。

### --feedback--

Sophie 没有说任何关于避免 `循环` 的内容。

---

Mark 应该在他的代码中使用注释。

## --video-solution--

4

# --explanation--

`comment` 是代码中的注释，用于帮助解释代码的作用。例如：

- `I added a comment to explain why this loop is necessary.` - 你写了一个评论来说明为什么使用某个循环。

- 你可以使用评论来留下需要以后修复的问题的备注。- 评论可以添加到代码中，作为需要修复或改进事项的提醒。

评论帮助其他人理解代码，并在你以后查看代码时提醒你重要细节。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_17-1.mp3",
      "startTime": 1,
      "startTimestamp": 25.54,
      "finishTimestamp": 28.48
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 4.02,
      "dialogue": {
        "text": "No problem. You should also remember to use comments in your code.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.52
    }
  ]
}
```
