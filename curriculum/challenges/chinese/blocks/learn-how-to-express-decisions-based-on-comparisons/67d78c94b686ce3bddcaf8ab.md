---
id: 67d78c94b686ce3bddcaf8ab
title: 任务 117
challengeType: 22
dashedName: task-117
lang: en-US
---

<!-- (Audio) Brian: It could save us time and resources. What about timelines? Which option is faster? -->

# --instructions--

请听音频，并完成下面的填空。

# --fillInTheBlank--

## --sentence--

`It could BLANK and resources. What about BLANK? Which option is faster?`

## --blanks--

`save us time`

### --feedback--

这三个词合起来意味着减少完成一个任务所需的时间。  

---

`timelines`

### --feedback--

这个词的复数形式指的是完成一个项目的调度或截止日期。  

# --explanation--

`Save us time` 意味着减少完成某事所需的时间，使进程更加高效。例如：

`Using automation tools can save us time on repetitive tasks.` – 这意味着自动化工具帮助更快地完成任务。  

`Timelines` 是指显示项目不同部分应完成时间的调度或截止日期。例如：

`We need to adjust our timelines to finish the project on schedule。` – 这意味着需要更改截止日期以确保项目按时完成。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
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
      "filename": "B1_13-3.mp3",
      "startTime": 1,
      "startTimestamp": 32.34,
      "finishTimestamp": 37.52
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
      "finishTime": 6.18,
      "dialogue": {
        "text": "It could save us time and resources. What about timelines? Which option is faster?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 6.68
    }
  ]
}
```
