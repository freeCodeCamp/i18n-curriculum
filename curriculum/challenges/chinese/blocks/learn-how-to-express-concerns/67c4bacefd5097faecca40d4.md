---
id: 67c4bacefd5097faecca40d4
title: 任务 22
challengeType: 19
dashedName: task-22
lang: en-US
---

<!-- (Audio) Bob: True, but we could try working even more extra hours just for this project. Wouldn't that make a difference? -->

# --instructions--

听音频，回答下面的问题。

# --questions--

## --text--

Bob 想知道什么？  

## --answers--

如果他们应该取消该项目。  

### --feedback--

Bob 不是在询问取消项目。  

---

如果工作时间更少会更好。  

### --feedback--

Bob 建议工作更多小时，而不是更少。  

---

如果团队已经解决了该问题。  

### --feedback--

Bob 在询问他的建议是否会有帮助，而不是问题是否已经解决。  

---

如果加班会改善情况。  

## --video-solution--

4  

# --explanation--

在带有辅助或情态动词（如 `wouldn't`、`isn't`、`doesn't`）的问题中使用否定形式，这类问题需要直接的 `yes`/`no` 回答，表明说话者预期答案为肯定——在这种情况下，Bob 假设加班会有帮助。另一个例子：

`Doesn't this plan seem like a good idea?`——说话者期望监听者同意该计划是好的。

# --scene--

```json
{
  "setup": {
    "background": "company2-boardroom.png",
    "characters": [
      {
        "character": "Bob",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_12-1.mp3",
      "startTime": 1,
      "startTimestamp": 29,
      "finishTimestamp": 34.76
    }
  },
  "commands": [
    {
      "character": "Bob",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Bob",
      "startTime": 1,
      "finishTime": 5.18,
      "dialogue": {
        "text": "True, but we could try working even more extra hours just for this project.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "startTime": 5.68,
      "finishTime": 6.76,
      "dialogue": {
        "text": "Wouldn't that make a difference?",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 7.26
    }
  ]
}
```
