---
id: 67c70abfeb7c6fb8cbd3fed7
title: 任务 57
challengeType: 19
dashedName: task-57
lang: en-US
---

<!-- (Audio) Maria: Hey James, can we talk about my latest meeting with Bob? -->

# --instructions--

听音频，回答下面的问题。  

# --questions--

## --text--

Maria 想和 James 讨论什么？  

## --answers--

Bob 的一周调度。  

### --feedback--

Maria 没有提到 Bob 的调度。  

---

她最近一次与 Bob 的会议。  

---

未来的项目截止日期。  

### --feedback--

Maria 没有提到截止日期，只提到了她与 Bob 的会议。  

---

客户的预算请求。  

### --feedback--

Maria 在这句话中没有提到客户请求。  

## --video-solution--

2  

# --explanation--

`Can we talk about...` 用于引入讨论话题。这是一种礼貌地请求就某个重要事项进行对话的方式。例如：

`Can we talk about the changes to the project timeline?` - 这意味着说话者想讨论项目时间线的调整。

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
      "filename": "B1_12-2.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 2.94
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
      "finishTime": 3.94,
      "dialogue": {
        "text": "Hey James, can we talk about my latest meeting with Bob?",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 4.44
    }
  ]
}
```
