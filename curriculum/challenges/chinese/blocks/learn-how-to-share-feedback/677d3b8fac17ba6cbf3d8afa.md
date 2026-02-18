---
id: 677d3b8fac17ba6cbf3d8afa
title: 任务 3
challengeType: 22
dashedName: task-3
lang: en-US
---

<!-- (Audio) Bob: I want to start by saying that you've done a great job with your QA work. -->

# --instructions--

请听音频，并完成下面的填空。

# --fillInTheBlank--

## --sentence--

`I want to start by BLANK that you've done a great job with your BLANK work.`

## --blanks--

`saying`

### --feedback--

这是动词 `say` 的 `-ing` 形式，用于介词 `by` 之后以表示启动的方法。

---

`QA`

### --feedback--

这代表 `Quality Assurance`，指的是确保产品符合所需标准的进程。

# --explanation--

当动词跟在介词后面时，它必须采用 `-ing` 形式（动名词）。在这个句子中，`saying` 跟在介词 `by` 后面，表示 Bob 用来开始他语句的方法。例如：

`She improved her skills by practicing regularly.` - 这里，`practicing` 跟随介词 `by`，说明她是如何提高技能的。

Bob 赞扬 Jessica 在 `QA` 方面的工作。`QA` 代表 `Quality Assurance`。它指的是确保产品或服务符合特定质量标准并正常运行的进程。另一个例子：

`The QA team identified several bugs during testing.`——这意味着负责确保软件质量良好的人在软件发布之前成功地检测到了软件中的错误。

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
      "filename": "B1_8-1.mp3",
      "startTime": 1,
      "startTimestamp": 3.3,
      "finishTimestamp": 6.7
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
      "finishTime": 4.4,
      "dialogue": {
        "text": "I want to start by saying that you've done a great job with your QA work.",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 4.9
    }
  ]
}
```
