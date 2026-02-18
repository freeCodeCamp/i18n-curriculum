---
id: 6710e0e2cafeeb09e6cb2d8f
title: 任务 55
challengeType: 22
dashedName: task-55
lang: en-US
---

<!-- (Audio) Linda: Well, during the project, I was working closely with the development team, and we were constantly updating the user interface based on user feedback. -->

# --instructions--

请听音频，并完成下面的填空。

# --fillInTheBlank--

## --sentence--

`Well, during the project, I BLANK BLANK closely with the development team, and we BLANK constantly BLANK the user interface based on user feedback.`

## --blanks--

`was`

### --feedback--

这是用于构成单数第一人称形式的 `Past Continuous` 的辅助动词。

---

`working`

### --feedback--

这是 `Past Continuous` 中的主要动词，描述劳动的动作。

---

`were`

### --feedback--

这是用于构成复数第一人称 `Past Continuous` 的辅助动词。

---

`updating`

### --feedback--

这是 `Past Continuous` 中的主要动词，描述正在进行的改进或现代化某事的动作。

# --explanation--

`Past Continuous` 时态用于描述过去某一特定时间正在进行的动作。当两个 `Past Continuous` 句子一起使用时，它们通常描述同时发生的动作或并行发生的动作。  

在这句话中，Linda 描述了她和她的团队在整个项目中不断地工作和更新用户界面。这显示了过去同时发生的两个动作，为彼此提供了上下文或背景。例如： 

`While I was preparing the report, they were testing the new features.`——这意味着我准备报告的动作和测试新建特色的动作同时发生。

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
      {
        "character": "Linda",
        "position": {
          "x": 50,
          "y": 0,
          "z": 1.4
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_2-2.mp3",
      "startTime": 1,
      "startTimestamp": 10.08,
      "finishTimestamp": 17.34
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
      "finishTime": 4.36,
      "dialogue": {
        "text": "Well, during the project, I was working closely with the development team,",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "startTime": 4.5,
      "finishTime": 8.26,
      "dialogue": {
        "text": "and we were constantly updating the user interface based on user feedback.",
        "align": "center"
      }
    },
    {
      "character": "Linda",
      "opacity": 0,
      "startTime": 8.76
    }
  ]
}
```
