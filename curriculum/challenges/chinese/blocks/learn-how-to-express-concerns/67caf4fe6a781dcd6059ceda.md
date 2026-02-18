---
id: 67caf4fe6a781dcd6059ceda
title: 任务 131
challengeType: 22
dashedName: task-131
lang: en-US
---

<!-- (Audio) Maria: It'd be helpful if we had more regular check-ins. -->

# --instructions--

请听音频，并完成下面的填空。  

# --fillInTheBlank--

## --sentence--

`It'd be BLANK if we had more BLANK check-ins.`  

## --blanks--

`helpful`  

### --feedback--

这意味着提供帮助或使某事变得更容易。  

---  

`regular`  

### --feedback--

这意味着持续发生或在设定的间隔内发生。  

# --explanation--

`Helpful` 意味着提供帮助或使某事更容易。例如：

`It was helpful to have clear instructions before starting the task。` - 这意味着这些说明使完成任务更容易。

`Regular` 意味着持续发生或在设定间隔内发生。例如：

`We have regular meetings every Monday.` - 这意味着会议在每个星期一一致地举行。

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
      "startTimestamp": 40.42,
      "finishTimestamp": 42.58
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
      "finishTime": 3.16,
      "dialogue": {
        "text": "It'd be helpful if we had more regular check-ins.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 3.66
    }
  ]
}
```
