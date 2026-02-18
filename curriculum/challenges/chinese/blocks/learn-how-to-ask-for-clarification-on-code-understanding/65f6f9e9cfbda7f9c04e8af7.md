---
id: 65f6f9e9cfbda7f9c04e8af7
title: 任务 41
challengeType: 19
dashedName: task-41
lang: en-US
---

<!-- (Audio) Brian: Understood. We can investigate this together, and by the end of it, we should have a clearer picture of what's happening. -->

# --description--

短语 `by the end of it` 在英语中常用来指代一个进程或时间段的结尾或最后部分。它暗示在某个活动完成时，将达到特定的结果或理解。

# --questions--

## --text--

在对话框中，Brian 所说的 `by the end of it` 是什么意思？

## --answers--

他们将停止调查。

### --feedback--

这个短语是关于达成结论，而不一定是停止活动。

---

他们将启动另一个活动。

### --feedback--

Brian 指的是当前调查的结束，而不是开始某个新建。

---

他们将休息。

### --feedback--

该短语侧重于在进程结束时达成共识，而不是休息。

---

调查后他们会对情况有更清晰的了解。

## --video-solution--

4

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Brian",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "6.3-3.mp3",
      "startTime": 1,
      "startTimestamp": 20.74,
      "finishTimestamp": 26.28
    }
  },
  "commands": [
    {
      "character": "Brian",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Brian",
      "startTime": 1,
      "finishTime": 6.54,
      "dialogue": {
        "text": "Understood. We can investigate this together, and by the end of it, we should have a clearer picture of what's happening.",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 7.04
    }
  ]
}
```
