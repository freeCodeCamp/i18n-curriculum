---
id: 68555dfadef342c2db9b5abf
title: 任务 83
challengeType: 22
dashedName: task-83
lang: en-US
---

<!-- (Audio) David: What about testing? The last update brought up some unexpected challenges. -->

# --instructions--

请听音频，并完成下面的填空。

# --fillInTheBlank--

## --sentence--

`What about testing? The last update BLANK some BLANK challenges.`

## --blanks--

`brought up`

### --feedback--

这个两个字的短语意味着引入或导致某事出现或成为问题。第一个词是 `bring` 的过去式形式。

---

`unexpected`

### --feedback--

这个词意味着发生了未计划或未预测的事情。它以 `-ed` 结尾。

# --explanation--

`Brought up` 意味着引起某事出现，尤其是问题或议题。在这里，`brought` 是 `bring` 的过去式形式。例如：

`The new feature brought up several bugs.` – 这意味着该特色导致错误被发现。

`Unexpected` 描述了在没有警告或计划的情况下发生的事情。例如：

`We had an unexpected delay due to server issues.` – 这意味着延迟是意料之外的。

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "David",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_22-2.mp3",
      "startTime": 1,
      "startTimestamp": 31.32,
      "finishTimestamp": 35.5
    }
  },
  "commands": [
    {
      "character": "David",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "David",
      "startTime": 1,
      "finishTime": 5.18,
      "dialogue": {
        "text": "What about testing? The last update brought up some unexpected challenges.",
        "align": "center"
      }
    },
    {
      "character": "David",
      "opacity": 0,
      "startTime": 5.68
    }
  ]
}
```
