---
id: 655b67f02eecf57fa75ceecf
title: 任务 8
challengeType: 22
dashedName: task-8
lang: en-US
---

<!-- (Audio) Sophie: That's important work. I'm helping our team learn how to stay safe online. -->

# --description--

`stay` 用于表示保持在特定状态或条件中。它通常用于指示或建议让自己处于某种情况中。例如：

- `Stay safe online.` - 继续在使用互联网时保持安全。

- `Stay calm during the test.` - 继续保持冷静。

- `Stay focused on your work.` - 继续专注于你的工作。

# --fillInTheBlank--

## --sentence--

`That's important work. I'm BLANK our team learn how to BLANK safe online.`

## --blanks--

`helping`

### --feedback--

这个动词表示 Sophie 正在积极为她的团队提供帮助或支持。它以 `-ing` 结尾。

---

`stay`

### --feedback--

这个词用于建议维护某种状态，在这种情况下，是在在线时保持安全。

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
    "characters": [
      {
        "character": "Sophie",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "2.3-1.mp3",
      "startTime": 1,
      "startTimestamp": 13.92,
      "finishTimestamp": 17.34
    }
  },
  "commands": [
    {
      "character": "Sophie",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Sophie",
      "startTime": 1,
      "finishTime": 4.42,
      "dialogue": {
        "text": "That's important work. I'm helping our team learn how to stay safe online.",
        "align": "center"
      }
    },
    {
      "character": "Sophie",
      "opacity": 0,
      "startTime": 4.92
    }
  ]
}
```
