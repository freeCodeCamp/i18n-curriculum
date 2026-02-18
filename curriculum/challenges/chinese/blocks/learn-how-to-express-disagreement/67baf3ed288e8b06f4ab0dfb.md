---
id: 67baf3ed288e8b06f4ab0dfb
title: 任务 76
challengeType: 22
dashedName: task-76
lang: en-US
---

<!-- (Audio) David: It builds team spirit and makes problem-solving easier. -->

# --instructions--

请听音频，并完成下面的填空。

# --fillInTheBlank--

## --sentence--

`It builds BLANK and makes BLANK easier.`

## --blanks--

`team spirit`

### --feedback--  

这两个词合起来指的是同事之间的团结与合作感。第一个词指的是一个共同工作的团队，第二个词则与共同的热情或动力有关。

---

`problem-solving`

### --feedback--  

这个复合词指的是查找解决方案的过程。第一部分指的是需要修复的问题，第二部分是表示查找解决方案的动词。记住在两部分之间使用 `-`。

# --explanation--

David 认为在办公室工作有助于增强 `team spirit`（同事之间的连接感和团结感）并提升 `problem-solving`（更高效地查找挑战的方案）。

他认为处于相同的物理空间使员工更容易协作并相互支持。

# --scene--

```json
{
  "setup": {
    "background": "interview-room3.png",
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
      "filename": "B1_11-2.mp3",
      "startTime": 1,
      "startTimestamp": 42.52,
      "finishTimestamp": 45.7
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
      "finishTime": 4.18,
      "dialogue": {
        "text": "It builds team spirit and makes problem solving easier.",
        "align": "center"
      }
    },
    {
      "character": "David",
      "opacity": 0,
      "startTime": 4.68
    }
  ]
}
```
