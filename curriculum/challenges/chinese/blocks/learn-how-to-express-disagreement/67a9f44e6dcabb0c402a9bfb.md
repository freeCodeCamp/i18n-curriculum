---
id: 67a9f44e6dcabb0c402a9bfb
title: 任务 5
challengeType: 19
dashedName: task-5
lang: en-US
---

<!-- (Audio) Bob: Do you think that's a good idea? -->

# --instructions--

听音频，回答下面的问题。

# --questions--

## --text--

Bob 想知道什么？

## --answers--

如果员工已经购买了办公家具。

### --feedback--

Bob 不会要求确认购买。

---

办公家具的费用是多少。

### --feedback--

Bob 不询问价格。

---

如果公司将增加津贴。

### --feedback--

Bob 没有讨论对 `stipend` 的更改。

---

如果 Anna 认为将津贴用于办公家具是个好主意。

## --video-solution--

4

# --explanation--

Bob 问，`Do you think that's a good idea?` 这是询问某人对建议或计划的看法的一种方式。以下是其他询问意见的方式：

- `Do you think this will work?`

- `What's your opinion on this?`

- `How do you feel about this plan?`

在这个对话框中，Bob 正在提到使用远程工作补贴购买办公家具的员工。他没有表达自己的观点，而是在询问 Anna 的看法。

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Bob",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_11-1.mp3",
      "startTime": 1,
      "startTimestamp": 8.6,
      "finishTimestamp": 10.04
    }
  },
  "commands": [
    {
      "character": "Bob",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Bob",
      "startTime": 1,
      "finishTime": 2.44,
      "dialogue": {
        "text": "Do you think that's a good idea?",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 2.94
    }
  ]
}
```
