---
id: 6557dc1aa6be93c1eb4e9efb
title: 任务 29
challengeType: 19
dashedName: task-29
lang: en-US
---

<!-- (Audio) Sarah: Anyway, before leaving for work, I like to check my emails and messages to see if there are any urgent updates from the team. -->

# --description--

单词 `if` 意思是“是否”。例如：

`She checks her emails to see if there are any urgent updates.` - 这意味着她正在查看是否存在任何紧急更新。

`If` 也可以是条件式的一部分，用于显示一种可能的情况及其结果。例如：

如果有紧急更新，我会立即回复。

# --questions--

## --text--

Sarah 在她关于查看电子邮件和消息的语句中使用 `if` 意味着什么？

## --answers--

她总是从她的团队中查找紧急更新。

### --feedback--

`If` 并不表示一定会查找紧急更新。

---

有时有紧急更新，有时没有。

---

她从不查看她的电子邮件和消息。

### --feedback--

Sarah 实际上表示她确实会查看她的电子邮件和消息。

---

查看电子邮件不是她的例程的一部分。

### --feedback--

Sarah 提到查看电子邮件和消息是她例程的一部分。

## --video-solution--

2

# --scene--

```json
{
  "setup": {
    "background": "company2-breakroom.png",
    "characters": [
      {
        "character": "Sarah",
        "position": {"x":50,"y":0,"z":1.4},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "2.2-1.mp3",
      "startTime": 1,
      "startTimestamp": 55.08,
      "finishTimestamp": 60.78
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
      "finishTime": 6.70,
      "dialogue": {
        "text": "Anyway, before leaving for work, I like to check my emails and messages to see if there are any urgent updates from the team.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 7.20
    }
  ]
}
```
