---
id: 657fb5afeeba2de5d01dda0e
title: 任务 81
challengeType: 19
dashedName: task-81
lang: en-US
---

<!-- (Audio) Tom: Thanks for the invite, Sarah. I appreciate it, but I'm not really into sci-fi. -->

# --description--

听音频，回答下面的问题。

# --questions--

## --text--

Tom 如何回应 Sarah 对科幻大会的邀请？

## --answers--

立即接受。

### --feedback--

Tom 不接受邀请。他提到自己对科幻不感兴趣。

---

礼貌地拒绝。

---

表现出冷漠。

### --feedback--

虽然 Tom 表示缺乏兴趣，但他的响应更多是礼貌地拒绝邀请，而不仅仅是表现出不感兴趣。

---

忽略邀请。

### --feedback--

Tom 确认了邀请并做出了回应，所以他没有忽视它。

## --video-solution--

2

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Tom",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.2-4.mp3",
      "startTime": 1,
      "startTimestamp": 22.06,
      "finishTimestamp": 26.54
    }
  },
  "commands": [
    {
      "character": "Tom",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Tom",
      "startTime": 1,
      "finishTime": 5.48,
      "dialogue": {
        "text": "Thanks for the invite, Sarah. I appreciate it, but I'm not really into sci-fi.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 5.98
    }
  ]
}
```
