---
id: 68443eddeab5bb2d7d6e44bf
title: 任务 45
challengeType: 22
dashedName: task-45
lang: en-US
---

<!-- (Audio) Bob: Last, where should we set up the break room? -->

# --instructions--

请听音频，并完成下面的填空。

# --fillInTheBlank--

## --sentence--

`Last, where should we BLANK the BLANK?`

## --blanks--

`set up`

### --feedback--

这两个词的短语意思是安排或准备某物以供使用。

---

`break room`

### --feedback--

这个两个字的短语指的是员工可以从工作中放松的空间。

# --explanation--

`Set up` 意味着为使用准备或安排某物。例如：

`We need to set up the new computers before the meeting。` – 这意味着要使它们准备好。

`Break room` 是办公室中人们休息、吃饭或放松的地方。例如：

`Let's meet in the break room after lunch.` – 这指的是一个用于休息的空间。

# --scene--

```json
{
  "setup": {
    "background": "company1-boardroom.png",
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
      "filename": "B1_22-1.mp3",
      "startTime": 1,
      "startTimestamp": 61.04,
      "finishTimestamp": 63.6
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
      "finishTime": 3.56,
      "dialogue": {
        "text": "Last, where should we set up the break room?",
        "align": "center"
      }
    },
    {
      "character": "Bob",
      "opacity": 0,
      "startTime": 4.06
    }
  ]
}
```
