---
id: 67e6a8ecaee3ff6cec47cc3e
title: 任务 75
challengeType: 19
dashedName: task-75
lang: en-US
---

<!-- (Audio) Jessica: I'll try to be quick so we can get back to the main agenda. -->

# --instructions--

听音频，回答下面的问题。

# --questions--

## --text--

为什么 Jessica 想要快速向团队解释这个错误？

## --answers--

因为她想返回会议的主要议题。

---

因为她想提前离开会议。

### --feedback--

Jessica 没有提到离开会议。

---

因为团队已经知道这个错误。

### --feedback--

Jessica 正在解释这个错误，因为它可能会影响团队。

---

因为她认为这个错误不重要。

### --feedback--

Jessica 认为这个问题很重要，但她也想尊重会议议程。

## --video-solution--

1

# --explanation--

`So we can` 用于表示目的——它意味着你接下来提到的是你打算做的事情。它解释了某人为什么要做某事。例如：

`I'll finish this now so we can start the next task.`——这意味着说话者想完成一件事以便尽快开始另一件事。

`The main agenda` 指会议或事件的主要议题或计划。例如：

`Let's stick to the main agenda and avoid side discussions.` – 这意味着要专注于会议中最重要的项。

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Jessica",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_15-2.mp3",
      "startTime": 1,
      "startTimestamp": 45.8,
      "finishTimestamp": 48.14
    }
  },
  "commands": [
    {
      "character": "Jessica",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Jessica",
      "startTime": 1,
      "finishTime": 3.34,
      "dialogue": {
        "text": "I'll try to be quick so we can get back to the main agenda.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "opacity": 0,
      "startTime": 3.84
    }
  ]
}
```
