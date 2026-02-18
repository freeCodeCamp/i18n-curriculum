---
id: 66bbba46fff0ef451b701bcd
title: 任务 103
challengeType: 19
dashedName: task-103
lang: en-US
---

<!-- Audio Reference:
Tom: Hey Sarah, do you have a moment? I'm struggling with these IDEs.
Sarah: Sure, I'm not busy. What's the problem? -->

# --instructions--

听音频，回答下面的问题。

# --questions--

## --text--

Sarah 有时间和 Tom 说话吗？

## --answers--

不，她很忙，不想知道他的烦恼。

### --feedback--

Sarah 说她不忙。

---

是的，她有空并且想知道问题是什么。

---

不，她现在不能说话，她有她自己的问题。

### --feedback--

Sarah 提到她不忙。

---

是的，但只有片刻，因为她有她自己的问题。

### --feedback--

Sarah 不限制时间；她只是说她不忙。

## --video-solution--

2

# --explanation--

莎拉没有直接说她有空，而是使用否定形式 `I'm not busy` 来强调她有时间提供帮助。

这是一种礼貌且间接的方式来表达英文中的可用性，通常用于使对话更加委婉。

她的后续句子，`What's the problem?`，确认她愿意通过邀请 Tom 说明问题来提供帮助。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Tom",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      },
      {
        "character": "Sarah",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_1-3.mp3",
      "startTime": 1,
      "startTimestamp": 0,
      "finishTimestamp": 6.5
    }
  },
  "commands": [
    {
      "character": "Tom",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Tom",
      "startTime": 1,
      "finishTime": 2.92,
      "dialogue": {
        "text": "Hey Sarah, do you have a moment?",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "startTime": 3.08,
      "finishTime": 5.14,
      "dialogue": {
        "text": "I'm struggling with these IDEs.",
        "align": "center"
      }
    },
    {
      "character": "Tom",
      "opacity": 0,
      "startTime": 5.34
    },
    {
      "character": "Sarah",
      "opacity": 1,
      "startTime": 5.34
    },
    {
      "character": "Sarah",
      "startTime": 5.54,
      "finishTime": 7.5,
      "dialogue": {
        "text": "Sure, I'm not busy. What's the problem?",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 8
    }
  ]
}
```
