---
id: 67d7dcfb9afa344d0e95fa4f
title: 任务 122
challengeType: 22
dashedName: task-122
lang: en-US
---

<!-- (Audio) Sarah: However, outsourcing can lead to communication issues, which might delay the project. -->

# --instructions--

请听音频，并完成下面的填空。

# --fillInTheBlank--

## --sentence--

`However, outsourcing can BLANK communication issues, which might BLANK the project.`

## --blanks--

`lead to`

### --feedback--

这个两个字的短语意味着导致某事发生或产生某种结果。  

---

`delay`

### --feedback--

这意味着使某事比预期花费更长时间。  

# --explanation--

`Lead to` 意味着导致某事发生或产生某种结果。例如：

`Poor planning can lead to missed deadlines.` – 这意味着如果计划做得不好，可能无法按时完成截止日期。  

`Delay` 意味着使某事比预期花费更长时间或将其推迟。例如：

`The software release was delayed due to unexpected bugs.` – 这意味着发布因技术问题而被推迟。  

# --scene--

```json
{
  "setup": {
    "background": "company2-center.png",
    "characters": [
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
      "filename": "B1_13-3.mp3",
      "startTime": 1,
      "startTimestamp": 46.98,
      "finishTimestamp": 51.34
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
      "finishTime": 5.36,
      "dialogue": {
        "text": "However, outsourcing can lead to communication issues which might delay the project.",
        "align": "center"
      }
    },
    {
      "character": "Sarah",
      "opacity": 0,
      "startTime": 5.86
    }
  ]
}
```
