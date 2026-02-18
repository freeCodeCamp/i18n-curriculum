---
id: 6579cf3ada08bdcfd5eae689
title: 任务 5
challengeType: 19
dashedName: task-5
lang: en-US
---

<!-- (Audio) Sophie: Sure, Bob. I could use some help with a coding problem. -->

# --description--

在这个对话框中，Sophie 正在向 Bob 发出一个请求。理解她请求的性质对于有效的团队通信和协作至关重要，尤其是在技术环境中，大家共同解决问题是常见的。

# --questions--

## --text--

Sophie 在与 Bob 的对话中在请求什么？

## --answers--

她在寻求关于编码问题的帮助

---

她想让 Bob 为她解决这个问题

### --feedback--

Sophie 在寻求帮助，不一定是让 Bob 完全自己解决。

---

她主动提出帮助 Bob 解决一个问题

### --feedback--

Sophie 是请求帮助的人，而不是提供帮助的人。

---

她正在讨论一个未来的 `project`

### --feedback--

Sophie 的请求是关于她当前面临的编码问题，而不是未来的项目。

## --video-solution--

1

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
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
      "filename": "6.2-1.mp3",
      "startTime": 1,
      "startTimestamp": 4.9,
      "finishTimestamp": 7.58
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
      "finishTime": 3.68,
      "dialogue": {
        "text": "Sure, Bob. I could use some help with the coding problem.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.18
    }
  ]
}
```
