---
id: 657eecb3b368badb3cc7fe4c
title: 任务 61
challengeType: 22
dashedName: task-61
lang: en-US
---

<!-- (Audio) Sarah: I go to at least one convention every year. It's the best moment of the year for me. -->

# --description--

`At least` 用于表示某事物的最小数量或数字是可以接受或足够的。它就像是在说“不少于这个数量”。例如：

`I study English for at least 30 minutes every day.` - 这意味着你每天学习英语的时间是 30 分钟或更多，但绝不低于 30 分钟。

# --fillInTheBlank--

## --sentence--

`I go to BLANK one convention every year. It's the best moment of the year for me.`

## --blanks--

`at least`

### --feedback--

这两个词组成一个表示最小数量的表达式。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.2-3.mp3",
      "startTime": 1,
      "startTimestamp": 30.46,
      "finishTimestamp": 34.22
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
      "finishTime": 4.76,
      "dialogue": {
        "text": "I go to at least one convention every year. It's the best moment of the year for me.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 5.26
    }
  ]
}
```
