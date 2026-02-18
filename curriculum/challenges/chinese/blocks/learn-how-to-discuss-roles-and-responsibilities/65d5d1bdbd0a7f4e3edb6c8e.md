---
id: 65d5d1bdbd0a7f4e3edb6c8e
title: 任务 35
challengeType: 19
dashedName: task-35
lang: en-US
---

<!-- (Audio) Tom: Hey, have you ever worked with Anna from HR? -->

# --description--

听音频，回答问题。

# --questions--

## --text--

Tom 在问什么？

## --answers--

如果 Anna 在人力资源部工作

### --feedback--

Tom 的问题具体是关于这个人是否与 Anna 合作过，而不是关于 Anna 的角色。

---

如果 Alice 有与 Anna 合作的任何经验。

---

如果你喜欢在人力资源工作

### --feedback--

问题是关于过去与 Anna 的合作经验，而不是对在人力资源工作个人感受。

---

如果 Anna 曾经工作过

### --feedback--

Tom 的问题重点是监听器与 Anna 的互动体验，而不是 Anna 的工作经历。

## --video-solution--

2

# --scene--

```json
{
  "setup": {
    "background": "company1-reception.png",
    "characters": [
      {
        "character": "Tom",
        "position": {"x":50,"y":15,"z":1.2},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.3-2.mp3",
      "startTime": 1,
      "startTimestamp": 0.00,
      "finishTimestamp": 2.88
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
      "finishTime": 3.88,
      "dialogue": {
        "text": "Hey, have you ever worked with Anna from HR?",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 4.38
    }
  ]
}
```
