---
id: 6751bdd2f78adbed1ea0fa51
title: 任务 24
challengeType: 19
dashedName: task-24
lang: en-US
---

<!-- (Audio) Brian: Do you think we'll need to update the users about the downtime? -->

# --instructions--

听音频，回答下面的问题。

# --questions--

## --text--

Brian 的担忧是什么？

## --answers--

如果需要通知用户停机时间。

---

如果停机时间将持续太长。

### --feedback--

Brian 不是在询问停机时间的长度。

---

如果用户将遇到技术问题。

### --feedback--

Brian 在他的关注中没有提到技术问题。

---

如果停机时间会影响服务器的性能。

### --feedback--

Brian 的关注点不是服务器的性能。

## --video-solution--

1

# --explanation--

Brian 正在询问是否应该更新用户关于停机时间的信息，他关心的是与用户的通信，而不是停机时间的长短、技术问题或服务器性能。

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
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
      "filename": "B1_6-1.mp3",
      "startTime": 1,
      "startTimestamp": 38.78,
      "finishTimestamp": 41.26
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
      "finishTime": 3.48,
      "dialogue": {
        "text": "Do you think we'll need to update the users about the downtime?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 3.98
    }
  ]
}
```
