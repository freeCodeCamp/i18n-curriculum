---
id: 67cadf5ea48ca37df972fac6
title: 任务 124
challengeType: 19
dashedName: task-124
lang: en-US
---

<!-- (Audio) Maria: First, they really need more support. -->

# --instructions--

听音频，回答下面的问题。  

# --questions--

## --text--

Maria 提到团队最重要的 `request` 是什么？  

## --answers--

他们需要更多帮助。  

---

他们想要更长的截止时间。  

### --feedback--

Maria 没有提到延长截止日期。

---

他们想减少任务的数量。

### --feedback--

Maria 没有提到减少任务的数量。  

---

他们要求更多会议。  

### --feedback--

Maria 没有提到额外的会议。

## --video-solution--

1  

# --explanation--

`First` 用于当你想按重要性或时间顺序给动作编号时。在这种情况下，Maria 正在列出团队需要的东西，从看起来最重要的请求（获得更多支持）开始。另一个例子：

`First, we should analyze the problem. Then, we can discuss solutions.`——这意味着分析问题应当先于其他任何事情。

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Maria",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.5
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_12-3.mp3",
      "startTime": 1,
      "startTimestamp": 25.26,
      "finishTimestamp": 26.92
    }
  },
  "commands": [
    {
      "character": "Maria",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Maria",
      "startTime": 1,
      "finishTime": 2.66,
      "dialogue": {
        "text": "First, they really need more support.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 3.16
    }
  ]
}
```
