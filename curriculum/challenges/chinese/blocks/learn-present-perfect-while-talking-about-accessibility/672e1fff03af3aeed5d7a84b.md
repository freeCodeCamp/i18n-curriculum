---
id: 672e1fff03af3aeed5d7a84b
title: 任务 117
challengeType: 19
dashedName: task-117
lang: en-US
---

<!-- (Audio) Anna: That makes sense. Let's keep in touch to monitor the progress and ensure we're meeting our accessibility goals. -->

# --instructions--

听音频，回答下面的问题。

# --questions--

## --text--

Anna 对 James 的想法有什么看法，她建议什么？

## --answers--

她不同意 James 的想法，建议开始一种新方法。

### --feedback--

Anna 表示同意 James，而不是不同意，并且想保持更新而不是重新开始。

---

她认为 James 的想法令人困惑，并建议只关注无障碍目标。

### --feedback--

Anna 不会觉得 James 的想法令人困惑；她同意并想要监控他们共同目标的进展。

---

她同意 James 的观点，并建议他们保持联系以监控进展。

---

她认为 James 的想法是不必要的，并建议停止该项目。

### --feedback--

Anna 不建议停止；她支持 James 的想法并希望保持更新。

## --video-solution--

3

# --explanation--

Anna 同意 James 的方法，说 `That makes sense`，这表明她理解并支持他的想法。她还建议 `keeping in touch to monitor progress`，表示她有兴趣保持更新，以确保他们实现共同的目标。

# --scene--

```json
{
  "setup": {
    "background": "interview-room1.png",
    "characters": [
      {
        "character": "Anna",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_4-4.mp3",
      "startTime": 1,
      "startTimestamp": 50.98,
      "finishTimestamp": 55.72
    }
  },
  "commands": [
    {
      "character": "Anna",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Anna",
      "startTime": 1,
      "finishTime": 5.74,
      "dialogue": {
        "text": "That makes sense. Let's keep in touch to monitor the progress and ensure we're meeting our accessibility goals.",
        "align": "center"
      }
    },
    {
      "character": "Anna",
      "opacity": 0,
      "startTime": 6.24
    }
  ]
}
```
