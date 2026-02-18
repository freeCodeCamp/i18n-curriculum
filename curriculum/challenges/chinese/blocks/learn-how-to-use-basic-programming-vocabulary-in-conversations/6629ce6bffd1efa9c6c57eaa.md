---
id: 6629ce6bffd1efa9c6c57eaa
title: 任务 1
challengeType: 22
dashedName: task-1
lang: en-US
---

<!-- (Audio) Brian: Hey, Sophie. How's it going? -->

# --description--

短语 `how's it going?` 是一种常见的询问某人近况或生活中发生了什么的方式。它通常用作友好的问候。

例如，当你见到一个老朋友时，你可能会说 `Hey, how's it going? I haven't seen you for a while!` 这是一种随意询问他们生活状况的方式。如果你想询问他们的具体事情，比如他们的新工作，你可以说 `How's it going with your new job?`

# --fillInTheBlank--

## --sentence--

`Hey, Sophie. BLANK it BLANK?`

## --blanks--

`How's`

### --feedback--

这个缩写通常用于非正式问候。首字母大写。

---

`going`

### --feedback--

这个词完成了常见的非正式问候，询问某人的一般状态。

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
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
      "filename": "5.1-1.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 2.08
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
      "finishTime": 3.08,
      "dialogue": {
        "text": "Hey, Sophie. How's it going?",
        "align": "center"
      }
    },
    {
      "character": "Brian",
      "opacity": 0,
      "startTime": 3.58
    }
  ]
}
```
