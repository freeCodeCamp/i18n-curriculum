---
id: 657fbde9a43e35ec1ebafe56
title: 任务 77
challengeType: 19
dashedName: task-77
lang: en-US
---

<!-- (Audio) Sarah: There's a big convention next month. Would you like to come? -->

# --description--

听音频，回答下面的问题。

# --questions--

## --text--

短语 `Would you like to come?` 在此上下文中传达了什么？

## --answers--

拒绝邀请。

### --feedback--

这个短语并不是说“不”。它是关于提供一个邀请。

---

发出邀请。

---

表达感谢。

### --feedback--

该短语并不表示“谢谢”。它是关于邀请某人。

---

请求信息。

### --feedback--

该短语不是用来获取信息的问题，而是对一个事件的礼貌邀请。

## --video-solution--

2

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.2-4.mp3",
      "startTime": 1,
      "startTimestamp": 18.70,
      "finishTimestamp": 21.36
    }
  },
  "commands": [
    {
      "character": "Sarah",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sarah",
      "startTime": 1,
      "finishTime": 3.66,
      "dialogue": {
        "text": "There's a big convention next month. Would you like to come?",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 4.16
    }
  ]
}
```
