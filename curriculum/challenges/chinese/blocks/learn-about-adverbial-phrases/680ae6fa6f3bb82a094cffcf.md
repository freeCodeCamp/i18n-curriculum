---
id: 680ae6fa6f3bb82a094cffcf
title: 任务 91
challengeType: 19
dashedName: task-91
showSpeakingButton: true
lang: en-US
---

<!-- (Audio) Riker: The UK and Germany saw the most improvement, even more than we expected. -->

<!-- SPEAKING -->

# --instructions--

听音频，回答下面的问题。

# --questions--

## --text--

玛丽亚会说什么来表达她对结果感到积极惊讶？

## --answers--

`That's impressive.`

### --audio-id--

en-b1-680ae6fa6f3bb82a094cffcf-SP1

---

`Maybe we should lower our expectations.`

### --audio-id--

en-b1-680ae6fa6f3bb82a094cffcf-SP2

### --feedback--

这显示出缺乏信心，而不是对结果的兴奋。

## --video-solution--

1

# --explanation--

`Impressive` 意味着某事因其异常优秀、庞大或有效而值得关注、钦佩或尊重。例如：

`Your presentation was really impressive! It covered everything clearly and confidently.` – 这意味着演示质量很高，留下了强烈的积极影响。

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
    "characters": [
      {
        "character": "Riker",
        "position": {
          "x": 50,
          "y": 15,
          "z": 1.2
        },
        "opacity": 0
      }
    ],
    "audio": {
      "filename": "B1_18-3.mp3",
      "startTime": 1,
      "startTimestamp": 18.42,
      "finishTimestamp": 23.1
    }
  },
  "commands": [
    {
      "character": "Riker",
      "opacity": 1,
      "startTime": 0
    },
    {
      "character": "Riker",
      "startTime": 1,
      "finishTime": 3.32,
      "dialogue": {
        "text": "The UK and Germany saw the most improvement,",
        "align": "center"
      }
    },
    {
      "character": "Riker",
      "startTime": 3.72,
      "finishTime": 5.68,
      "dialogue": {
        "text": "even more than we expected.",
        "align": "center"
      }
    },
    {
      "character": "Riker",
      "opacity": 0,
      "startTime": 6.18
    }
  ]
}
```
