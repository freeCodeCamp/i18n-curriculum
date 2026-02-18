---
id: 679d3cfdaca2eb81f8d81cf7
title: 任务 97
challengeType: 19
dashedName: task-97
lang: en-US
---

<!-- (Audio) Maria: Can you look into it and see what's causing the problem? -->

# --instructions--

听音频，回答下面的问题。

# --questions--

## --text--

Maria 正在要求 James 做什么？

## --answers--

立即解决该问题。

### --feedback--

Maria 并没有要求 James 立即修复该问题。

---

向客户报告该问题。

### --feedback--

Maria 没有提到通知客户。

---

为调查该问题。

---

暂时忽略该问题。

### --feedback--

Maria 并没有要求 James 忽略这个问题。

## --video-solution--

3

# --explanation--

`Can` 通常用于以非正式的方式礼貌地提出请求，要求某人做某事。例如：

`Can you send me the report by noon?` - 这是一种礼貌地请求某人发送报告的方式。

在这个对话框中，Maria 正在请求 James 调查该问题。

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
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
      "filename": "B1_8-3.mp3",
      "startTime": 1,
      "startTimestamp": 35.5,
      "finishTimestamp": 37.56
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
      "finishTime": 3.06,
      "dialogue": {
        "text": "Can you look into it and see what's causing the problem?",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 3.56
    }
  ]
}
```
