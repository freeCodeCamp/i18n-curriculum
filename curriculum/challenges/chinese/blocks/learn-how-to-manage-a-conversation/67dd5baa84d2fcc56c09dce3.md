---
id: 67dd5baa84d2fcc56c09dce3
title: 任务 15
challengeType: 22
dashedName: task-15
lang: en-US
---

<!-- (Audio) James: By the way, did we decide on the deadline for the first phase? -->

# --instructions--

请听音频，并完成下面的填空。

# --fillInTheBlank--

## --sentence--

`By the way, did we BLANK on the deadline for the first BLANK?`

## --blanks--

`decide`

### --feedback--

这意味着对某事做出选择或得出结论。

---

`phase`

### --feedback--

这指的是进程或项目的特定阶段或部分。

# --explanation--

`To decide` 意味着经过思考后选择某事。例如：

`We need to decide which tools to use for the project.` – 这意味着在考虑选项后选择工具。

一个 `phase` 指的是更大进程中的一个部分或步骤。例如：

`We just finished the testing phase of the software.` – 这意味着开发进程中的测试步骤已完成。

# --scene--

```json
{
  "setup": {
    "background": "interview-room2.png",
    "characters": [
      {
        "character": "James",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_15-1.mp3",
      "startTime": 1,
      "startTimestamp": 17.36,
      "finishTimestamp": 20.64
    }
  },
  "commands": [
    {
      "character": "James",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "James",
      "startTime": 1,
      "finishTime": 4.28,
      "dialogue": {
        "text": "By the way, did we decide on the deadline for the first phase?",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 4.78
    }
  ]
}
```
