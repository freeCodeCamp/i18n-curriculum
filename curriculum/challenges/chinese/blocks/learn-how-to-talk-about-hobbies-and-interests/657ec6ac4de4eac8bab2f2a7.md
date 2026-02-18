---
id: 657ec6ac4de4eac8bab2f2a7
title: 任务 39
challengeType: 22
dashedName: task-39
lang: en-US
---

<!-- (Audio) Linda: Okay, it's a bike date then. -->

# --description--

单词 `date` 可以在不同的上下文中使用。虽然它通常指两个人之间的浪漫约会，但它也可以简单地表示朋友或同事之间的约定或计划的事件。例如：

`Let's set a date for our next meeting.` —— 这里，`date` 以非浪漫的方式使用，指的是选择开会的日期。

# --fillInTheBlank--

## --sentence--

`Okay, it's a BLANK BLANK then.`

## --blanks--

`bike`

### --feedback--

这个词指定了计划活动的类型，表示这是一次涉及自行车的外出。

---

`date`

### --feedback--

这个词指的是一个已调度的会议或事件。

# --scene--

```json
{
  "setup": {
    "background": "company1-reception.png",
    "characters": [
      {
        "character": "Linda",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "3.2-2.mp3",
      "startTime": 1,
      "startTimestamp": 44.64,
      "finishTimestamp": 46.58
    }
  },
  "commands": [
    {
      "character": "Linda",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Linda",
      "startTime": 1,
      "finishTime": 2.94,
      "dialogue": {
        "text": "Okay, it's a bike date then.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 3.44
    }
  ]
}
```
