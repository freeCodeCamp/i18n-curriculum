---
id: 67dd5dacf47e8ed984dc90da
title: 任务 17
challengeType: 19
dashedName: task-17
showSpeakingButton: true
lang: en-US
---

<!-- (Audio) James: By the way, did we decide on the deadline for the first phase? -->

<!-- SPEAKING -->

# --instructions--

听音频，回答下面的问题。

# --questions--

## --text--

爱丽丝如何简短回答目前没有关于截止日期的决定？

## --answers--

`Not yet.`

### --audio-id--

en-b1-67dd5dacf47e8ed984dc90da-SP1

---

`We're still looking for it.`

### --audio-id--

en-b1-67dd5dacf47e8ed984dc90da-SP2

### --feedback--

这与设置截止日期的问题无关。

## --video-solution--

1

# --explanation--

`Not yet.` 是一种简短且自然的表达方式，用来说明某事到目前为止尚未发生或完成，但将来可能会发生。例如：

- 人物 1：`Have you sent the email?`——这里，人物在询问应该发送的电子邮件。

- 人员 2：`Not yet.` – 这意味着电子邮件尚未发送，但该人员仍计划发送。

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
      "startTimestamp": 17.36,
      "finishTimestamp": 20.64
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
      "finishTime": 4.28,
      "dialogue": {
        "text": "By the way, did we decide on the deadline for the first phase?",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 4.78
    }
  ]
}
```
