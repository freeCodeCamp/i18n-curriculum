---
id: 655b275cadbebf5fc0f0db05
title: 任务 82
challengeType: 22
dashedName: task-82
lang: en-US
---

<!-- (Audio) Maria: On Tuesdays, I learn Japanese. I take online lessons at 7. -->

# --description--

`take` 根据情况可以有不同的含义。在学习的上下文中，`take` 意味着参加或参与一个类或课程。例如：

- `I take online lessons at 7.` - 这里，`take` 意思是参加课程。

- `She is taking a programming course this semester.` - 这里，`taking` 意味着她已注册并正在参加该课程。

所以，当你说 `take lessons` 或 `take a course` 时，你指的是加入或参加它们，而不是物理的拿走某物。

# --fillInTheBlank--

## --sentence--

`On Tuesdays, I learn Japanese. I BLANK BLANK lessons at 7.`

## --blanks--

`take`

### --feedback--

这个动词描述了参与课程的动作。

---

`online`

### --feedback--

这个词指的是一个虚拟 `environment`。

# --scene--

```json
{
  "setup": {
    "background": "company2-parking.png",
    "characters": [
      {
        "character": "Maria",
        "position": {"x":50,"y":0,"z":1.5},
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "2.2-4.mp3",
      "startTime": 1,
      "startTimestamp": 17.14,
      "finishTimestamp": 20.86
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
      "finishTime": 4.72,
      "dialogue": {
        "text": "On Tuesdays, I learn Japanese. I take online lessons at 7.",
        "align": "center"
      }
    },
    {
      "character": "Maria",
      "opacity": 0,
      "startTime": 5.22
    }
  ]
}
```
