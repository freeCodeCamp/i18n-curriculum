---
id: 679d2dc229e6ceeadff4ed48
title: 任务 92
challengeType: 22
dashedName: task-92
lang: en-US
---

<!-- (Audio) James: Do you think we need to update the software again? If we do, it might delay other projects. -->

# --instructions--

请听音频，并完成下面的填空。

# --fillInTheBlank--

## --sentence--

`Do you think we need to update the software again? If we BLANK, it might BLANK other projects.`

## --blanks--

`do`

### --feedback--

这个词用于避免重复前一句中的动词 `update`。

---

`delay`

### --feedback--

这个词的意思是推迟或使某事发生得比计划的时间晚。

# --explanation--

詹姆斯没有说 `If we update the software, it might delay other projects.`，而是简化为 `If we do`。单词 `do` 通常用来避免重复前一句中使用的动词或完整短语。例如：

`She wants to join the meeting，and if she does，she'll need the link。`——你可以用 `does` 来替代 `if she joins the meeting`，这样可以避免重复。

`To delay` 意味着使某事发生得比计划的时间晚。例如：

`The flight was delayed due to bad weather.`——这意味着航班被推迟，未能按时起飞。

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
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
      "filename": "B1_8-3.mp3",
      "startTime": 1,
      "startTimestamp": 26.86,
      "finishTimestamp": 31.46
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
      "finishTime": 2.88,
      "dialogue": {
        "text": "Do you think we need to update the software again?",
        "align": "center"
      }
    },
    {
      "character": "James",
      "startTime": 3.16,
      "finishTime": 5.6,
      "dialogue": {
        "text": "If we do, it might delay other projects.",
        "align": "center"
      }
    },
    {
      "character": "James",
      "opacity": 0,
      "startTime": 6.1
    }
  ]
}
```
