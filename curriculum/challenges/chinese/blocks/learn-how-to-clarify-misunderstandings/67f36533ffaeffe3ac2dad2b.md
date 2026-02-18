---
id: 67f36533ffaeffe3ac2dad2b
title: 任务 131
challengeType: 19
dashedName: task-131
lang: en-US
---

<!-- (Audio) Jessica: Oh, that might be a mix-up. The budget tracking feature is planned for the next update, not this one. -->

# --instructions--

听音频，回答下面的问题。

# --questions--

## --text--

Jessica 在解释什么？

## --answers--

当前更新的调度出现了问题。

### --feedback--

Jessica 说的是该特色的时间安排，而不是更新本身的调度。

---

预算跟踪 `feature` 将在下一个更新中推出，而不是当前版本。

---

预算跟踪 `feature` 已从当前更新中移除。

### --feedback--

Jessica 没有提到该特色已被移除。

---

该特色被错误地包含在此更新中。

### --feedback--

Jessica 没有说该特色是错误包含的。

## --video-solution--

2

# --explanation--

Jessica 说，`The budget tracking feature is planned for the next update`，解释该特色不包含在当前更新中，但会在下一次更新中添加。

这消除了关于该特色时机的混淆。

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
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
      "filename": "B1_16-3.mp3",
      "startTime": 1,
      "startTimestamp": 60.98,
      "finishTimestamp": 65.76
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
      "finishTime": 2.32,
      "dialogue": {
        "text": "Oh, that might be a mix-up.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "startTime": 2.58,
      "finishTime": 5.78,
      "dialogue": {
        "text": "The budget tracking feature is planned for the next update, not this one.",
        "align": "center"
      }
    },
    {
      "character": "Jessica",
      "opacity": 0,
      "startTime": 6.28
    }
  ]
}
```
